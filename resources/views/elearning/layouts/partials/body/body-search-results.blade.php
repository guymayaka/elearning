{{-- <div class="banner position-relative"
style="background-image: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url({{ asset('elearning/assets/images/medium-shot-men-playing-music.jpg') }});">
<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="position-absolute content">
                <h1 class="text-uppercase text-white seo-h1 mb-0">Recherche</h1>
                <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/">Accueil</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Recherche</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</div>
</div> --}}
<div class="container home-corporation intern my-5 pt-4">
    <div class="row">
        <div class="col-12 text-center mb-3">
            <h2 class="text-uppercase seo-h2 mb-4">
                Résultats pour le terme
                <span style="color: #ef0f54;">{{ $keyword }}</span>
            </h2>
        </div>

            @forelse ($courseses as $course)
                <div class="row mb-5">
                    <div class="col-lg-3">
                        <div class="m-auto">
                            <div class="img border-0 m-auto" style="width: 250px;height:250px;border-radius: 50%;overflow: hidden;">
                                <a href="{{ route('elearning.courseses.show', $course->slug) }}">
                                    <img src="{{ Voyager::image($course->image) }}"
                                        class="img-cover" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9 mt-5">
                        <div class="flex-grow-1">
                            <h5 class="fw-bold mb-4">
                                <a href="{{ route('elearning.courseses.show', $course->slug) }}">{{ $course->title }}</a>
                            </h5>
                            <div class="desc">
                               <p>
                                        {{ $course->resume }}
                                    </p>
                            </div>
                        </div>
                    </div>
                </div>
                <hr @if ($loop->last) class="d-none" @endif>
            @empty
                <div class="alert alert-waring">Aucun resultat pour {{ $keyword }}</div>
            @endforelse

    </div>
</div>
