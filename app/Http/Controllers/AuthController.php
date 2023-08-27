<?php

namespace App\Http\Controllers;

use App\Http\Resources\UserResource;
use Illuminate\Http\Request;
use App\Traits\ResponseTrait;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    use ResponseTrait;
    public function login(Request $request)
    {
        if(Auth::attempt($request->only(['email', 'password'])))
        {
            $accessToken = Auth::user()->createToken('auth')->accessToken;
            $user = [
                'accessToken' => $accessToken,
                'user' => UserResource::make(Auth::user()),
            ];
            return $this->success('success', $user);
        }

        return $this->error('invalid credentials');
    }
}
