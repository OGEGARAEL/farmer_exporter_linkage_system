<?php

class Product extends Controller
{
   

    public function index($id='')
    {
        $data = [];

        $id = esc($id);
        $product = new Products();

        $row = $product->first(['id'=>$id]);

        $data['product'] = $row;

        //show($row);

   
        
  
       $this->view('products', $data);
    }
  
}