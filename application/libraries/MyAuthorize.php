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

	public function chargerCreditCard($detCus){	
		$creditCard = new net\authorize\api\contract\v1\CreditCardType();
		$creditCard->setCardNumber($detCus['cnumber']);
		$creditCard->setExpirationDate($detCus['cexpdate']);					 	
		$creditCard->setCardCode($detCus['ccode']);

		$paymentOne = new net\authorize\api\contract\v1\PaymentType();
		$paymentOne->setCreditCard($creditCard);

		$order = new net\authorize\api\contract\v1\OrderType();
		$order->setDescription($detCus['cdesc']);

		// Preparin customer information object
		$billto = new net\authorize\api\contract\v1\CustomerAddressType();
		$billto->setFirstName($detCus['fname']);
		$billto->setLastName($detCus['lname']);
		$billto->setAddress($detCus['address']);
		$billto->setCity($detCus['city']);
		$billto->setState($detCus['state']);
		$billto->setCountry($detCus['country']);
		$billto->setZip($detCus['zip']);
		$billto->setPhoneNumber($detCus['phone']);
		$billto->setEmail($detCus['email']);


		// create transaction 
		$transactionRequestType = new net\authorize\api\contract\v1\TransactionRequestType();
		$transactionRequestType->setTransactionType("authCaptureTransaction");
		$transactionRequestType->setAmount($detCus['amount']); 
		$transactionRequestType->setOrder($order);
		$transactionRequestType->setPayment($paymentOne);
		$transactionRequestType->setBillTo($billto);

		$request = new net\authorize\api\contract\v1\CreateTransactionRequest();
		$request->setMerchantAuthentication($this->merchanAuthentication);
		$request->setRefId($this->refId); 				  	
		$request->setTransactionRequest($transactionRequestType);
		$controllerx = new net\authorize\api\controller\CreateTransactionController($request);
		$response = $controllerx->executeWithApiResponse(\net\authorize\api\constants\ANetEnvironment::SANDBOX);

		if ($response != null){
		    $tresponse = $response->getTransactionResponse();

		    if (($tresponse != null) && ($tresponse->getResponseCode()=="1") ) {
		      echo "Charge Credit Card AUTH CODE : " . $tresponse->getAuthCode() . "\n";
		      echo "Charge Credit Card TRANS ID  : " . $tresponse->getTransId() . "\n";
		    }else{
		        echo  "Charge Credit Card ERROR :  Invalid response\n";
		    }

		} else{
		      echo  "Charge Credit card Null response returned";
		}
	}
}