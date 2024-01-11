<div class="container personnages" style="margin-bottom:20px;">
    <div class="row" style="margin-top: 20px;margin-bottom:20px;">
        <div class="col-md-6">
            <h2>Auteurs et Personnalités</h2>
        </div>
        <div class="col-md-6">
            <form action="" method="post">
                <input type="text" name="" id="" wire:model="auteur" class="form-control" placeholder="Recherche...">
            </form>
        </div>
    </div>
    <hr>
    <div class="row">
        @foreach ($auteurs as $auteur)
            <div class="col-lg-3 col-md-3 col-6" style="padding: 10px;">
                <div class="perso-img">
                    <a href="{{ route('elearning.auteurs.show', $auteur->slug) }}">
                        <img src="{{ Voyager::image($auteur->avatar) }}" alt="" srcset="" class="img-cover">
                    </a>
                </div>
                <div class="content">
                    <a href="{{ route('elearning.auteurs.show', $auteur->slug) }}">
                        <h2 style="font-size: 15px;">{{ $auteur->name }}</h3>
                        {{-- [ 1985 - à nos jours ] --}}
                    </a>
                        {{-- <small>Title</small> --}}
                </div>
            </div>
        @endforeach
    </div>

</div>
