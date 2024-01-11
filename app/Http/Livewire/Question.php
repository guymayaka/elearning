<?php

namespace App\Http\Livewire;

use App\Models\ArticlesComment;
use App\Models\Question as ModelsQuestion;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;
use Livewire\WithPagination;

class Question extends Component
{
    public $content;
    public $noms;
    public $article;
    protected $questions;

    use WithPagination;

    public $listeners = ['refreshComment' => '$refresh'];

    public function resetFields(){
        $this->content = '';
    }

    public function render()
    {
        $this->questions = ArticlesComment::orderBy('id', 'desc')->where('article_id', $this->article->id)->paginate(12);
        // dd($this->questions);
        return view('livewire.question')->with(['questions' => $this->questions]);
    }

    public function storePost()
      {

        ArticlesComment::create([
                  'message' => $this->content,
                  'noms' => $this->noms,
                  'article_id' => $this->article->id
              ]);

        $this->emit('refreshTextArea', '');

      }
}
