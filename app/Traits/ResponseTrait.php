<?php
namespace App\traits;


trait ResponseTrait
{
    public function success($msg, $data)
    {
        return response([
            'status' => true,
            'code' => 200,
            'msd' => $msg,
            'data' => $data
        ], 200);
    }


    public function error($msg)
    {
        return response([
            'status' => false,
            'code' => 500,
            'msd' => $msg
        ], 500);
    }
}
