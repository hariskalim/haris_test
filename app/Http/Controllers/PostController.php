<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use Exception;
use App\post;
use App\post_like;
use App\post_comment;
use JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;
use carbon\carbon;
use DB;
use App\Http\Requests\CreatePostValidation;

class PostController extends Controller
{
    public function create_post(CreatePostValidation $request){
      $status = 100;
        try {
	        	if (! $user = JWTAuth::parseToken()->authenticate()) {
	        	        return response()->json(['user_not_found'], 404);
	        	}
		        post::create([
		            'user_id' => $user->id,
		            'title'   => $request->title,
		            'body'    => $request->body,
		        ]);
        		return response()->json(['Post created successfully'], 200);
        	} catch (Exception $e) {
            $status =   $e->getMessage();
        }
        return $status;
   }
   public function edit_post(Request $request){
      $status = 100;
        try {
             $validator = Validator::make($request->all(), [
        	        'id'    => 'required|numeric',
        	        'title' => 'required|max:255',
        	        'body'  => 'required'
        	    ]);

        	    if($validator->fails()){
        	            return response()->json($validator->errors(), 400);
        	    }
	        	if (! $user = JWTAuth::parseToken()->authenticate()) {
	        	        return response()->json(['user_not_found'], 404);
	        	} 
             $query = post::where(['id' => $request->id,'user_id' => $user->id ])->get();
             if($query->count() != 1){
                return response()->json(['error' => 'You are not authorize person to edit this post'],401);
              }
              if(Carbon::parse($query->first()->created_at->addHours(1)) < carbon::now()){
                return response()->json(['error' => 'You can not update this post after one hour'],400);
              } 
              post::where('id',$request->id)->update([
                  'title'   => $request->title,
                  'body'    => $request->body,
              ]);
              return response()->json(['success' => 'You have successfully added this post'],200);
        } catch (Exception $e) {
            $status =   $e->getMessage();
        }
        return $status;
  }
  public function delete_post(Request $request){
      $status = 100;
        try {
             $validator = Validator::make($request->all(), [
        	        'id'    => 'required|numeric',
        	    ]);

        	    if($validator->fails()){
        	            return response()->json($validator->errors(), 400);
        	    }
	        	if (! $user = JWTAuth::parseToken()->authenticate()) {
	        	        return response()->json(['user_not_found'], 404);
	        	} 
             $query = post::where(['id' => $request->id,'user_id' => $user->id ])->get();
             if($query->count() != 1){
                return response()->json(['error' => 'You are not authorize person to delete this post'],401);
              }
              if(Carbon::parse($query->first()->created_at->addHours(1)) < carbon::now()){
                return response()->json(['error' => 'You can not delete this post after one hour'],400);
              } 
              post::where('id','=',$request->id)->delete();
              return response()->json(['success' => 'You have successfully deleted this post'],200);
        } catch (Exception $e) {
            $status =   $e->getMessage();
        }
        return $status;
    }
    public function post_like(Request $request){
    $status = 100;
        try {
           	$validator = Validator::make($request->all(), [
        	    'post_id'  => 'required|numeric|exists:posts,id',
        	]);

    	    if($validator->fails()){
    	            return response()->json($validator->errors(), 400);
    	    }
        	if (! $user = JWTAuth::parseToken()->authenticate()) {
        	        return response()->json(['user_not_found'], 404);
        	}

           if(post_like::where(['post_id' => $request->post_id,'user_id' => $user->id ])->get()->count() == 1){
              return response()->json(['error' => 'You have already like this post'],400);
           }
           post_like::create([
              'user_id' => $user->id,
              'post_id' => $request->post_id
           ]);
           return response()->json(['success' => 'You have successfully like this post'],200);
      } catch (Exception $e) {
          $status =   $e->getMessage();
      }
      return $status;
   }
    public function post_comment(Request $request){
      $status = 100;
        try {
            $validator = Validator::make($request->all(), [
        	    'post_id'  => 'required|numeric|exists:posts,id',
        	    'comment'  => 'required'
        	]);

    	    if($validator->fails()){
    	            return response()->json($validator->errors(), 400);
    	    }
        	if (! $user = JWTAuth::parseToken()->authenticate()) {
        	        return response()->json(['user_not_found'], 404);
        	}
             post_comment::create([
                'user_id' => $user->id,
                'post_id' => $request->post_id,
                'body'    => $request->comment
             ]);
             return response()->json(['success' => 'You have successfully comment this post'],200);
        } catch (Exception $e) {
            $status =   $e->getMessage();
        }
        return $status;
    }
    public function post_list(){
         $status = 100;
           try {
	           	if (! $user = JWTAuth::parseToken()->authenticate()) {
	           	        return response()->json(['user_not_found'], 404);
	           	}
	           return post::where('user_id',$user->id)->with('post_comment')->with('post_like')->paginate(10)->toArray();
           } catch (Exception $e) {
               $status =   $e->getMessage();
           }
           return $status;
    }
}
