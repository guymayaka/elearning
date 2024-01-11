<?php

namespace App\Http\Livewire;

use App\Models\User;
use Livewire\Component;

class Auteur extends Component
{

    public $auteur;

    protected $queryString = ['auteur'];

    public function render()
    {
        $auteurs = User::orderBy('name')->where('role_id', 3)->where('name', 'like', '%'.$this->auteur.'%')->paginate(12);
        // dd($publications);
        return view('livewire.auteur')->with(['auteurs' => $auteurs]);
    }
}
