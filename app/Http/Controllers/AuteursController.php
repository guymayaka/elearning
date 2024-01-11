<?php

namespace App\Http\Controllers;

use App\Helpers\FrontEnd;
use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuteursController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $auteurs = User::orderBy('name')->where('role_id', 3)->paginate(12);
        return view('elearning.auteurs', compact('auteurs'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('elearning.create-user');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        if ($request->input('secrete') == setting('site.secrete_code')) {
            $slugRequest = Str::slug($request->input('name'));

            $auteur = new User();

            if ($request->hasFile('image')) {
                $auteur->avatar = FrontEnd::saveImage($request->file('image'), 'Auteurs');
            }
            $auteur->name = $request->input('name');
            $auteur->email = $request->input('email');
            $auteur->title = $request->input('title');
            $auteur->resume = $request->input('resume');
            $auteur->slug = $slugRequest;
            $auteur->description = $request->input('description');
            $auteur->password = Hash::make($request->input('password'));
            $auteur->role_id = 3;

            $auteur->save();

            $message = "Auteur ajouté avec succès";

            return back()->with('success', $message);
        } else {
            $message = "Vous n'êtes pas autorisé à ajouter un auteur";

            return back()->with('success', $message);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $auteur = User::where('slug', $slug)->first();

        return view('elearning.auteur-detail', compact('auteur'));
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
