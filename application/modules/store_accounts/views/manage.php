
<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

  if( isset( $default['flash']) ) {
    echo $this->session->flashdata('item');
    unset($_SESSION['item']);
  }
  $create_account_url = base_url()."store_accounts/create";
?>

<h2 style="margin-top: -5px;"><small><?= $default['page_title'] ?></small></h2>
<p style="margin-top: 30px,">
  <a href="<?= base_url().$this->uri->segment(1) ?>/create" >
    <button type="button" class="btn btn-primary"><?= $default['add_button'] ?></button></a>
</p>

<div class="row">   
  <div class="col-md-12">
    <table class="table table-striped table-bordered bootstrap-datatable datatable">
                          <thead>
                              <tr>
                                  <th>Username</th>
                                  <th>First Name</th>
                                  <th>Last Name</th>
                                  <th>Company</th>
                                  <th>Date Created</th>
                                  <th>Actions</th>
                              </tr>
                          </thead>   
                          <tbody>
                            <?php
                            $this->load->module('timedate');
                            foreach($query->result() as $row) { 
                                $edit_account_url = base_url()."store_accounts/create/".$row->id;
                                $view_accounts_url = base_url()."store_accounts/view/".$row->id;
                                $date_created = $this->timedate->get_nice_date($row->date_made, 'cool');
                            ?>
                            <tr>
                                <td><?= $row->username ?></td>
                                <td><?= $row->firstname ?></td>
                                <td class="center"><?= $row->lastname ?></td>
                                <td class="center"><?= $row->company ?></td>
                                <td class="center">
                                    <?= $date_created ?>
                                </td>
                                <td class="center">
                                    <a class="btn btn-info" href="<?= $edit_account_url ?>">
                                        <i class="halflings-icon white edit"></i>  
                                    </a>
                                  
                                </td>
                            </tr>
                            <?php
                            }
                            ?>
                            
                          </tbody>
    </table>            
  </div>
</div><!--/row-->