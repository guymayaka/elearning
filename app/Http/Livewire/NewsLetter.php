<?php

namespace App\Http\Livewire;

use App\Models\Newsletter as ModelsNewsletter;
use Livewire\Component;


class NewsLetter extends Component
{
    public $email;
    public $mailExist = 0;

    public $listeners = ['refreshComment' => '$refresh'];

    public function resetFields(){
        $this->email = '';
    }

    public function render()
    {
        return view('livewire.news-letter')->with(['mailExist' => $this->mailExist]);
    }

    public function storePost()
      {
        sleep(1);
        $newsletter = ModelsNewsletter::where('email', $this->email)->first();


        if (!is_null($newsletter)) {
            $this->mailExist = 1;
        } else {
            ModelsNewsletter::create([
                'email' => $this->email
            ]);
        }

        $this->emit('refreshTextArea', '');

      }
}
