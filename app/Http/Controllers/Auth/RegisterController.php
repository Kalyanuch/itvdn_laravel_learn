<?php

namespace App\Http\Controllers\Auth;

use App\Http\Requests\RegisterRequest;
use App\Jobs\SendRegistrationMail;
use App\Mail\RegistrationMail;
use App\Models\Role;
use App\Models\User;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Auth\Events\Registered;
use Illuminate\Support\Facades\Mail;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * @param RegisterRequest $request
     * @return \Illuminate\Http\Response
     */
    public function register(RegisterRequest $request)
    {
        event(new Registered($user = $this->create($request->all())));

        $this->guard()->login($user);

        //SendRegistrationMail::dispatch($user);

        Mail::to($user->email)->queue(new RegistrationMail($user->name));

        return $this->registered($request, $user)
            ?: redirect($this->redirectPath());
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\User
     */
    protected function create(array $data)
    {
        try {
            $user = User::create([
                'name' => $data['name'],
                'email' => $data['email'],
                'password' => bcrypt($data['password']),
            ]);

            $role = Role::where('slug', 'author')->first();

            $user->roles()->attach($role);

            return $user;
        } catch(\Exception $e)
        {
            log($e->getMessage());
        }
    }
}
