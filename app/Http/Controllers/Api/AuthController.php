<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\SignUpRequest;
use App\Http\Resources\UserResource;
use App\Models\User;
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

    public function signup(SignUpRequest $request)
    {
        $user = new User();

        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = $request->password;
        $user->save();

        Auth::login($user);
        //or
        //$accessToken = $user->createToken('auth')->accessToken;


        $accessToken = Auth::user()->createToken('auth')->accessToken;
        $user = [
            'accessToken' => $accessToken,
            'user' => UserResource::make(Auth::user()),
        ];

        return $this->success('success', $user);
    }
}
