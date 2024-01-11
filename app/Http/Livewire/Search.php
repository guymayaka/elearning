<?php

namespace App\Http\Livewire;

use App\Models\Publication;
use Livewire\Component;

class Search extends Component
{
    public $keyword;

    protected $queryString = ['keyword'];

    public function render()
    {
        $publications = Publication::orderBy('id', 'desc')->where('published', 1)->where('title', 'like', '%'.$this->keyword.'%')->paginate(12);
        // dd($publications);
        return view('livewire.search')->with(['publications' => $publications]);
    }
}
