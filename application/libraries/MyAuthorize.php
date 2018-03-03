<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Description of MyAuthorize
 *
 * @author wahyu widodo
 * https://www.youtube.com/watch?v=K6cINrm9LpE
 */
 
// API LOGIN ID : 6Xb8Mf8FZvg2
// TRANSACTION KEY : 3f5584V4xW5hVKvH
// KEY : Simon

// American Express 	370000000000002
// Visa	4007000000027
// Mastercard	5424000000000015

 
include("./vendor/autoload.php"); 
 
class MyAuthorize {
	
	public $merchanAuthentication;
	public $refId;

	public function __construct(){		
		$this->merchanAuthentication = new net\authorize\api\contract\v1\MerchantAuthenticationType(); 
		$this->merchanAuthentication->setName("6Xb8Mf8FZvg2"); 
		$this->merchanAuthentication->setTransactionKey("3f5584V4xW5hVKvH");
		$this->refId = 'ref'.time();
	}

	public function chargerCreditCard($data){	
		$approval_status = [];

		$creditCard = new net\authorize\api\contract\v1\CreditCardType();
		$creditCard->setCardNumber( $_POST['cardNumber'] );
		$creditCard->setExpirationDate($_POST['cardExpiry']);					 	
		$creditCard->setCardCode($_POST['cardCVC']);

		$paymentOne = new net\authorize\api\contract\v1\PaymentType();
		$paymentOne->setCreditCard($creditCard);

		$order = new net\authorize\api\contract\v1\OrderType();
		$order->setDescription("Golf Shirts");


		// Preparin customer information object
		$billto = new net\authorize\api\contract\v1\CustomerAddressType();
		$billto->setFirstName($data['first_name']);
	    $billto->setLastName($data['last_name']);
	    $billto->setCompany( null );
	    $billto->setAddress($data['address']);
	    $billto->setCity($data['city']);
	    $billto->setState($data['state']);
	    $billto->setZip($data['zip']);
	    $billto->setCountry("USA");

		// Preparin customer information object
		// $shipto = new net\authorize\api\contract\v1\CustomerAddressType();
		// $shipto->setFirstName($data['shipto_first_name']);
		// $shipto->setLastName($data['shipto_last_name']);
		// $shipto->setCompany($data['shipto_company']);
		// $shipto->setAddress($data['shipto_address']);
		// $shipto->setCity($data['shipto_city']);
		// $shipto->setState($data['shipto_state']);
		// $shipto->setZip($data['shipto_zip']);
		// $shipto->setCountry("USA");

		// create transaction 
		$transactionRequestType = new net\authorize\api\contract\v1\TransactionRequestType();
		$transactionRequestType->setTransactionType("authCaptureTransaction");
		$transactionRequestType->setAmount($data['grand_total']); 
		$transactionRequestType->setOrder($order);
		$transactionRequestType->setPayment($paymentOne);
		$transactionRequestType->setBillTo($billto);
		// $transactionRequestType->setShipTo($shipto);

		$request = new net\authorize\api\contract\v1\CreateTransactionRequest();
		$request->setMerchantAuthentication($this->merchanAuthentication);
		$request->setRefId($this->refId); 				  	
		$request->setTransactionRequest($transactionRequestType);
		$controllerx = new net\authorize\api\controller\CreateTransactionController($request);
		$response = $controllerx->executeWithApiResponse(\net\authorize\api\constants\ANetEnvironment::SANDBOX);

		if ($response != null){
		    $tresponse = $response->getTransactionResponse();

		    if (($tresponse != null) && ($tresponse->getResponseCode()=="1") ) {
				$resp['AccountNumber'] = $tresponse->getAccountNumber();
				$resp['AccountType'] = $tresponse->getAccountType();
				$resp['AuthCode'] = $tresponse->getAuthCode();
				$resp['TransId'] = $tresponse->getTransId();

				// $resp = "Charge Credit Card AUTH CODE : " . $tresponse->getAuthCode() . "\n";
				// $resp .=  "Charge Credit Card TRANS ID  : " . $tresponse->getTransId() . "\n";
				return [ '1', $resp ];

		    }else{
		        $resp[] = "Charge Credit Card ERROR :  Invalid response\n";
		        return [ '0', $resp ];  
		    }

		} else{
			$resp[] = "Charge Credit card Null response returned";
			return [ '3', $resp ];  

		}
	}

}