<div class="ne_banner_adver_main_wrapper text-center" style="background-color: black;color: white;padding: 30px 0px 30px 0px;margin-top: 0;margin-bottom: 30px;">
    <h3 style="color: white;">SONDAGE DE LA SEMAINE</h3>
    <br>
    <h4 class="text-center text-white" style="color: white !important;">{{ $question->title }}</h4>

    <span style="float: left !important;padding: 5px;" wire:click="sondageReply(1)">{{ $question->gauche }} : {{ $oui }}%</span>
    <span style="float: right !important;padding: 5px;" wire:click="sondageReply(0)">{{ $question->droite }} : {{ $non }}%</span>

    @if ($replied === 0)
        <p class="text-warning">Merci pour votre réponse</p>
    @elseif ($replied === 1)
        <p class="text-danger">Vous avez déjà répondu</p>
    @endif
    <div wire:loading="sondageReply" class="lds-dual-ring"></div>
    {{-- <span wire:loading="sondageReply" class="loader"></span> --}}
</div>
