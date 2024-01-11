<?php

namespace App\Http\Controllers;

use App\Models\Message;
use App\Models\Response;
use Illuminate\Http\Request;

class ResponseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        // dd($request->input('sondage'));

        $user_ip = $request->ip();




        $checkUserIp = Response::where('message_id', $request->input('message_id'))->where('user_ip', $user_ip)->get();
        $getNumber = count($checkUserIp);


        if ($getNumber > 0) {
            $message = "Vous avez déjà repondu à cette question. Veuillez attendre une autre";
            return back()->with('success', $message);
        } else {
            $response = new Response();
            $response->message_id = $request->input('message_id');
            $response->content = $request->input('sondage');
            $response->user_ip = $user_ip;

            $response->save();

            $message = "Message envoyé";
            return back()->with('success', $message);
        }

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
