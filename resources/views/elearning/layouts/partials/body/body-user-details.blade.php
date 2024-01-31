     <!-- Welcome Slides Area -->
        <section class="welcome_area my-store" style="height: 350px;border: 1px solid #ccc;overflow: hidden;">
            @if ($user->cover_img)
                <img src="{{ FrontEnd::image($user->cover_img) }}" class="img-cover" alt="" srcset="">
            @else
                <img src="{{ asset('elearning/html/images/store.webp') }}" class="img-cover" alt="" srcset="">
            @endif

            <div class="opacity-gray"></div>
            <div class="container">
                <h4 class="title mb-2 text-white" style="margin-top: -100px;z-index: 4;text-shadow: 1px 0.3px 5px black;">Ma boutique</h4>
            </div>
        </section>
        <!-- Welcome Slides Area -->
    <!-- Quick View Modal Area 2 -->
<div class="user-cover">
    <div class="container">
        <div class="user-area">
            <div class="row" style="margin-bottom: 20px;">
                {{-- <div class="d-flex" style="height: 200px;margin-top: 100px;margin-bottom: 100px;background-color: gray;width: 100%;"> --}}
                    <div class="col-2 col-md-2">
                        <div class="div-img" style="height: 150px;width: 150px;border: 1px solid transparent;border-radius:50%;overflow: hidden;margin-top: -25px;">
                            <img src="{{ Voyager::image($user->avatar) }}" alt="{{ $user->name }}" srcset="" class="img-cover">
                        </div>
                    </div>
                    <div class="col-8 col-md-8 mobile-div">
                        <h4 class="title mb-2" style="margin-top: 10px;">{{ $user->name }}</h4>

                        <a href="#">
                            @if ($user->call_phone || $user->whatsapp_phone)
                                {{ $user->call_phone }}<br>{{ $user->whatsapp_phone }}
                            @else
                                Aucun numéro
                            @endif
                        <span class="barre">
                            |
                        </span>{{ $user->email }}</a> <br>


                    </div>

                {{-- </div> --}}

            </div>
            @if ($user->description)
                <div class="row">
                    <div class="col-12">
                        {{ $user->description }}
                    </div>
                </div>
             @endif
        </div>

    </div>
</div>
{{-- style="margin-top: 150px;" --}}
    <!-- Best Rated/Onsale/Top Sale Product Area -->
    <section class="best_rated_onsale_top_sellares">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="tabs_area">
                        <!-- Tabs -->

                        <ul class="nav nav-tabs" role="tablist" id="product-tab">
                            <li class="nav-item">
                                <a href="#top-sellers" class="nav-link active" data-toggle="tab" role="tab">Mes courseses <span class="badge badge-secondary">{{ count($courseses) }}</span></a>
                            </li>
                            <li class="nav-item">
                                <a href="#best-rated" class="nav-link" data-toggle="tab" role="tab">Les avis des clients <span class="badge badge-secondary">{{ $avis }}</span></a>
                            </li>
                        </ul>

                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane fade show active" id="top-sellers">
                                <div class="top_sellers_area">
                                    <div class="row">
                                        @forelse ($courseses as $item)
                                            <div class="col-12 col-sm-6 col-lg-4">
                                                <div class="single_top_sellers">
                                                    <div class="top_seller_image">
                                                        <div style="height: 169px;overflow: hidden;" class="ndongo">
                                                            <img src="{{ Voyager::image($item->thumbnail('scale-course')) }}" data-src="{{ Voyager::image($item->thumbnail('populaire-course')) }}" alt="{{ $item->title }}" class="lazyestload img-cover">
                                                        </div>
                                                    </div>
                                                    <div class="top_seller_desc">
                                                        <h5>{{ $item->title }}</h5>
                                                        <h6>{{ $item->price }}{{ $item->devise->symbole }}</span></h6>
                                                        <div class="top_seller_product_rating">
                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                        </div>

                                                        <!-- Info -->
                                                        <div class="ts-seller-info mt-3 d-flex align-items-center justify-content-between">
                                                            <!-- Add to cart -->
                                                            <div class="ts_product_add_to_cart">
                                                                <a href="{{ route('elearning.courseses.show', $item->slug) }}" data-toggle="tooltip" data-placement="top" title="Discuter avec le vendeur" style="width: inherit;padding: 0 10px;"><i class="icofont-shopping-cart"></i> Discuter</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @empty
                                            <div class="alert alert-warning text-center w-100">{{ $user->name }} n'a pas encore publié des courseses pour l'instant. <br>Veuillez le visiter prochainement</div>
                                        @endforelse


                                    </div>
                                </div>
                            </div>

                            <div role="tabpanel" class="tab-pane fade" id="best-rated">
                                <div class="best_rated_area" style="padding: 10px 40px;box-shadow: 0px 0.3px 4px #222;margin:auto;">
                                    <div class="container">
                                        <div class="row">
                                            @livewire('avi-show', ['user' => $user], key($user->id))

                                            @livewire('avi', ['user' => $user], key($user->id))
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Best Rated/Onsale/Top Sale Product Area -->
