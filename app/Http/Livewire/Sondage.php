<?php

namespace App\Http\Livewire;

use App\Models\Message;
use App\Models\Response;
use Livewire\Component;

class Sondage extends Component
{

    public $replied = null;

    public function render()
    {

        $question = Message::orderBy('id', 'desc')->first();

        $responses = Response::where('message_id', $question->id);
        $responses_2 = Response::where('message_id', $question->id);

        $responses_non = $responses->where('content', 0)->get()->count() + 1;
        $responses_oui = $responses_2->where('content', 1)->get()->count() + 1;


        $total = $responses_oui + $responses_non;


        $res_oui = 100 * $responses_oui / $total;
        $res_non = 100 * $responses_non / $total;

        $oui = round($res_oui);
        $non = round($res_non);

        return view('livewire.sondage')->with([
            'question' => $question,
            'oui' => $oui,
            'non' => $non,
            'replied' => $this->replied
        ]);
    }

    public function sondageReply($getValue)
      {

        $user_ip = request()->ip();

        $message_id = Message::orderBy('id', 'desc')->first();

        $checkUserIp = Response::where('message_id', $message_id->id)->where('user_ip', $user_ip)->get();
        $getNumber = count($checkUserIp);


        if ($getNumber > 0) {
            if (!is_null($getValue)) {
                $this->replied = 1;
            }

        } else {

            if (!is_null($getValue)) {
                $this->replied = 0;

                $response = new Response();
                $response->message_id = $message_id->id;
                $response->content = $getValue;
                $response->user_ip = $user_ip;

                $response->save();
            }


        }
      }
}
