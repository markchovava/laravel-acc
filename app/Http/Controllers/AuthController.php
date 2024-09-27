<?php

namespace App\Http\Controllers;

use App\Http\Resources\UserResource;
use App\Models\EventCart;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{

    public $upload_location = 'assets/img/user/';
    
    public function register(Request $request){
        $email = User::where('email', $request->email)->first();
        if(isset($email)){
            return response()->json([
                'message' => 'Email is aleady taken, please try another one.',
                'status' => 0,
            ]);
        }
        $data = new User();
        $data->name = $request->name;
        $data->email = $request->email;
        $data->code = $request->password;
        $data->password = Hash::make($request->password);
        $data->role_level = 4;
        $data->updated_at = now();
        $data->created_at = now();
        $data->save();
        /*  */
        $user = User::with(['membership'])->where('email', $request->email)->first();
        /*  */
        /* Dealing with Membership. */
        $membership = null;
        if($user->membership()->exists()){
            $membership = $user->membership->level;
        }
        return response()->json([
            'status' => 1,
            'message' => 'Created Successfully.',
            'data' => new UserResource($data),
            'auth_token' => $user->createToken($user->email)->plainTextToken,
            'role_level' => $user->role_level,
            'membership' => $membership,
        ]);
    }

    public function login(Request $request){
        $user = User::with(['membership'])->where('email', $request->email)->first();
        /* Check Email... */
        if(!isset($user)){
            return response()->json([
                'message' => 'Email was not found.',
                'status' => 0,
            ]);
        }
        /* Check Password... */
        if(!Hash::check($request->password, $user->password)){
            return response()->json([
                'message' => 'The password is incorrect.',
                'status' => 2,
            ]);
        }
        /* Dealing with Membership. */
        $membership = null;
        if($user->membership()->exists()){
            $membership = $user->membership->level;
        }
        /*  */
        return response()->json([
            'status' => 1,
            'message' => 'Login Successful.',
            'auth_token' => $user->createToken($user->email)->plainTextToken,
            'role_level' => $user->role_level,
            'membership' => $membership,
        ]);
    }

    public function password(Request $request){
        $user_id = Auth::user()->id;
        $data = User::find($user_id);
        $data->code = $request->password;
        $data->password = Hash::make($request->password);
        $data->save();
        return response()->json([
            'status' => 1,
            'message' => 'Password updated successfully.',
            'data' => new UserResource($data),
        ]);
    }

    public function view(){
        $user_id = Auth::user()->id;
        $data = User::with(['role', 'membership'])->find($user_id);
        return response()->json([
            'data' => new UserResource($data),
        ]);
    }

    public function update(Request $request){
        $user_id = Auth::user()->id;
        $email = User::where('id', '!=', $user_id)->where('email', $request->email)->first();
        if(isset($email)){
            return response()->json([
                'status' => 0,
                'message' => 'Email already exists, try another one.',
            ]);
        }
        $data = User::find($user_id);
        $data->name = $request->name;
        $data->phone = $request->phone;
        $data->email = $request->email;
        $data->address = $request->address;
        $data->country = $request->country;
        $data->gender = $request->gender;
        $data->country = $request->country;
        if( $request->hasFile('image') ){
            $image = $request->file('image');
            $image_extension = strtolower($image->getClientOriginalExtension());
            $image_name = 'user_' . date('Yi') . rand(0, 1000) . '.' . $image_extension;
            if(!empty($data->image)){
                if(file_exists( public_path($data->image) )){
                    unlink($data->image);
                }
                $image->move($this->upload_location, $image_name);
                $data->image = $this->upload_location . $image_name;                    
            }else{
                $image->move($this->upload_location, $image_name);
                $data->image = $this->upload_location . $image_name;
            }              
        }
        $data->updated_at = now();
        $data->save();
        return response()->json([
            'status' => 1,
            'message' => 'Profile updated successfully.',
            'data' => new UserResource($data),
        ]);
    }
    
    public function emailUpdate(Request $request){
        $user_id = Auth::user()->id;
        $email = User::where('id', '!=', $user_id)->where('email', $request->email)->first();
        if(isset($email)){
            return response()->json([
                'status' => 0,
                'message' => 'Email already exists, try another one.',
            ]);
        }
        $data = User::find($user_id);
        $data->email = $request->email;
        $data->save();
        return response()->json([
            'status' => 1,
            'message' => 'Email updated successfully.',
        ]);
    }


    public function logout(Request $request){
        if(!empty($request->cart_token)) {
            $event_cart = EventCart::where('cart_token', $request->cart_token)->get();
            if(isset($event_cart)) {
                EventCart::where('cart_token', $request->cart_token)->delete();
            }
        }
        /*  */
        Auth::user()->currentAccessToken()->delete();
        return response()->json([
            'status' => 1,
            'message' => 'Logged out succesfully.',
        ]);
    }
}
