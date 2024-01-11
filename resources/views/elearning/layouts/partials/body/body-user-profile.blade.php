
<div class="modal fade" id="error-modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document" style="max-width: 500px">
      <div class="modal-content position-relative">
        <div class="position-absolute top-0 end-0 mt-2 me-2 z-index-1">

          {{-- <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button> --}}
          <button type="button" class="close btn user-modal-btn" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true" style="font-size: 25px;">&times;</span>
        </button>
        </div>

        <div class="modal-body p-0">
            {{-- <button class="btn-close btn btn-sm btn-circle d-flex flex-center transition-base" data-bs-dismiss="modal" aria-label="Close" style="margin: 10px;float: right;">
                <span>&times;</span>
              </button> --}}
          <div class="rounded-top-lg pt-5 ps-4 pe-6">
            <h4 class="text-center" id="modalExampleDemoLabel" style="font-size: 14px;">Voulez-vous vraiment supprimer <br> <span id="document_text" style="color: #0071dc;"></span> ?</h4>
          </div>

          {{-- <hr> --}}
          <div class="p-4 bg-light">

            <form method="POST" action="article-delete" style="text-align: center;">
              @csrf
              {{-- @captcha --}}
              <input type="hidden" name="article_id" id="document_id">
              <button class="btn text-white" style="background-color: #e91e63;" type="submit">Supprimer</button>
              <button class="btn btn-secondary" type="button" data-dismiss="modal">Non</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

    <!-- Quick View Modal Area -->

    <div class="modal fade" id="quickview-1" tabindex="-1" role="dialog" aria-labelledby="quickview" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <button type="button" class="close btn user-modal-btn" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" style="font-size: 25px;">&times;</span>
                </button>
                <div class="modal-body">
                    <div class="quickview_body" style="margin-top: -40px;margin-bottom: 20px;">
                        <div class="container">
                            <div class="row">
                                <div class="col-12">
                                    <form action="{{ route('elearning.users.update', Auth::user()->id) }}" method="post" enctype="multipart/form-data">
                                        @method('PUT')
                                        @csrf
                                        <div class="form-group mb-3 text-center">
                                            <div>Votre photo de couverture</div>
                                            <label class="label-camera" for="image" style="position: relative;border: 1px solid #ddd;height: 150px;width: 100%;display: inline-flex;overflow: hidden;">

                                                {{-- <br style="margin-bottom: 15px;"> --}}

                                                @if (Auth::user()->cover_img)
                                                    <img src="{{ FrontEnd::image(Auth::user()->cover_img) }}"
                                                    style="width:100%; height:100%; object-fit: cover; cursor: pointer;
                                                    clear:both; display:block; padding:2px;
                                                    margin-bottom:10px;"
                                                    class="mx-auto edit-img" id="img_cover">
                                                @else
                                                    <img src="{{ asset('elearning/html/images/store.webp')}}"
                                                    style="width:100%; height:100%; object-fit: cover; cursor: pointer;
                                                    clear:both; display:block; padding:2px;
                                                    margin-bottom:10px;"
                                                    class="mx-auto edit-img" id="img_cover">
                                                @endif

                                                <span class="camera-hover" style="background-color: #fff; width: 100%; height: 80px;position: absolute;bottom:0;opacity: .6;cursor:pointer;text-align:center;">
                                                    <i class="icofont-camera" style="margin-top: 15px !important;"></i>
                                                    <br>
                                                    <p>Appuyez pour choisir</p>
                                                </span>
                                            </label>
                                            <input type="file" name="cover_img" id="image" style="display: none" onchange="document.getElementById('img_cover').src = window.URL.createObjectURL(this.files[0])" accept="image/*">
                                            @error('image')
                                                <span class="invalid-feedback d-block" role="alert">
                                                    <strong>Image invalide</strong>
                                                </span>
                                            @enderror
                                        </div>
                                        <div class="form-group mb-3 text-center">
                                            <div>Photo de profil</div>

                                            <label class="label-camera" for="image" style="position: relative;border: 1px solid #ddd;height: 101px;width: 101px;display: inline-flex;border-radius: 50%;overflow: hidden;">

                                                {{-- <br style="margin-bottom: 15px;"> --}}

                                                @if (Auth::user()->avatar)
                                                    <img src="{{ FrontEnd::image(Auth::user()->avatar) }}"
                                                    style="width:100px; height:100px; object-fit: cover; cursor: pointer;
                                                    clear:both; display:block; padding:2px;
                                                    margin-bottom:10px;"
                                                    class="mx-auto edit-img rounded-circle" id="img-profile-user">
                                                @else
                                                    <img src="{{ asset('elearning/html/images/user-default.jpg')}}"
                                                    style="width:100px; height:100px; object-fit: cover; cursor: pointer;
                                                    clear:both; display:block; padding:2px;
                                                    margin-bottom:10px;"
                                                    class="mx-auto edit-img rounded-circle" id="img-profile-user">
                                                @endif

                                                <span class="camera-hover" style="background-color: #fff; width: 100px; height: 50px;position: absolute;bottom:0;opacity: .6;cursor:pointer;text-align:center;">
                                                    <i class="icofont-camera" style="margin-top: 15px !important;"></i><br>
                                                    <p style="font-size: 10px;">Appuyez</p>
                                                </span>
                                            </label>
                                            <input type="file" name="image" id="image" style="display: none" onchange="document.getElementById('img-profile-user').src = window.URL.createObjectURL(this.files[0])" accept="image/*">
                                            @error('image')
                                                <span class="invalid-feedback d-block" role="alert">
                                                    <strong>Image invalide</strong>
                                                </span>
                                            @enderror
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-3">
                                                <label for="name">Nom :</label>
                                            </div>
                                           <div class="col-lg-9">
                                                <div class="form-group">
                                                    <input type="text" name="name" value="{{ Auth::user()->name }}" id="" class="form-control" placeholder="Votre nom complet">
                                                </div>
                                           </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-3">
                                                <label for="name">Email :</label>
                                            </div>
                                           <div class="col-lg-9">
                                                <div class="form-group">
                                                    <input type="email" name="email" value="{{ Auth::user()->email }}" id="" class="form-control" placeholder="Votre adresse mail">
                                                </div>
                                           </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-3">
                                                <label for="name">Téléphone  :</label>
                                            </div>
                                           <div class="col-lg-9">
                                                <div class="form-group">
                                                    <input type="text" name="call_phone" value="{{ Auth::user()->call_phone }}" id="" class="form-control" placeholder="Votre numero de téléphone">
                                                </div>
                                           </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-3">
                                                <label for="name">Téléphone whatsapp :</label>
                                            </div>
                                           <div class="col-lg-9">
                                                <div class="form-group">
                                                    <input type="text" name="whatsapp_phone" value="{{ Auth::user()->whatsapp_phone }}" id="" class="form-control" placeholder="Votre numero whatsapp">
                                                </div>
                                           </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-3">
                                                <label for="name">Exprimez-vous :</label>
                                            </div>
                                           <div class="col-lg-9">
                                                <div class="form-group">
                                                    <div class="wrapper">
                                                        <textarea name="description" id="the-textarea" maxlength="300" placeholder="Parlez de ce que vous faites..."autofocus></textarea>
                                                        <div id="the-count">
                                                          <span id="current">0</span>
                                                          <span id="maximum">/ 300</span>
                                                        </div>
                                                        <small class="help-block" style="float: left;color: gray;">Facultatif</small>
                                                    </div>
                                                </div>
                                           </div>
                                        </div>

                                        <div class="row">
                                           <input type="submit" value="Modifier" class="btn btn-primary" style="margin-left: auto;margin-right: auto;">
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Quick View Modal Area -->


       <!-- Quick View Modal Area 2 -->



        <!-- Welcome Slides Area -->
        <section class="welcome_area my-store" style="height: 350px;border: 1px solid #ccc;overflow: hidden;">
            @if (Auth::user()->cover_img)
                <img src="{{ FrontEnd::image(Auth::user()->cover_img) }}" class="img-cover" alt="" srcset="">
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
                            <img src="{{ Voyager::image(Auth::user()->avatar) }}" alt="{{ Auth::user()->name }}" srcset="" class="img-cover">
                        </div>
                    </div>
                    <div class="col-8 col-md-8 mobile-div">
                        <h4 class="title mb-2" style="margin-top: 10px;">{{ Auth::user()->name }}</h4>

                        <a href="#">
                            @if (Auth::user()->call_phone || Auth::user()->whatsapp_phone)
                                {{ Auth::user()->call_phone }}<br>{{ Auth::user()->whatsapp_phone }}
                            @else
                                Aucun numéro
                            @endif
                        <span class="barre">
                            |
                        </span>{{ Auth::user()->email }}</a> <br>
                        <a class="btn btn-primary profile-btn" href="#" data-toggle="modal" data-target="#quickview-1">Modifier mon profil</a>

                    </div>

                {{-- </div> --}}

            </div>
            @if (Auth::user()->description)
                <div class="row">
                    <div class="col-12">
                        {{ Auth::user()->description }}
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
                                <a href="#top-sellers" class="nav-link @if ($available_articles_count > 0) active @endif" data-toggle="tab" role="tab">Mes articles <span class="badge badge-secondary">{{ $available_articles_count }}</span></a>
                            </li>
                            <li class="nav-item">
                                <a href="#best-rated" class="nav-link" data-toggle="tab" role="tab">Favoris <span class="badge badge-secondary">{{ $cart_count }}</span></a>
                            </li>
                            <li class="nav-item">
                                <a href="#on-sale" class="nav-link @if ($available_articles_count < 1) active @endif" data-toggle="tab" role="tab">Nouvel article</a>
                            </li>
                        </ul>

                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane fade @if ($available_articles_count > 0) show active @endif" id="top-sellers">
                                <div class="top_sellers_area">
                                    <div class="row">
                                        @forelse ($articles as $item)
                                            <div class="col-12 col-sm-6 col-lg-4">
                                                <div class="single_top_sellers">

                                                    <div class="top_seller_image">
                                                        <div style="height: 169px;overflow: hidden;" class="ndongo">
                                                            <img src="{{ Voyager::image($item->thumbnail('scale-article')) }}" data-src="{{ Voyager::image($item->thumbnail('populaire-article')) }}" alt="{{ $item->title }}" class="lazyestload img-cover">
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
                                                            {{-- <div class="ts_product_add_to_cart">
                                                                <a href="#" data-toggle="tooltip" data-placement="top" title="Déjà vendu ?"><i class="icofont-shopping-cart"></i></a>
                                                            </div> --}}



                                                            <!-- Compare -->
                                                            <div class="ts_product_compare">
                                                                <a href="{{ route('elearning.articles.edit', $item->slug) }}" data-placement="top" title="Modifier"><i class="icofont-edit"></i></a>
                                                            </div>

                                                            <!-- Quick View -->
                                                            <div class="ts_product_quick_view">
                                                                <a href="{{ route('elearning.articles.show', $item->slug) }}" data-placement="top" title="Voir le details"><i class="icofont-eye-alt"></i></a>
                                                            </div>

                                                            <!-- Wishlist -->
                                                            <div class="ts_product_wishlist">
                                                                <a href="#" class="delete-btn" data-toggle="tooltip" data-placement="top" title="Supprimer cet article" data-id={{ $item->id }} id="{{ $item->id }}" data-title="{{$item->title}}" onclick="myFunction($item->id)" ><i class="icofont-trash"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @empty
                                            <div class="alert alert-warning text-center w-100">Pas d'article pour l'instant. <br>Tapez sur <span style="color: #070a57;">nouvel article</span> pour publier</div>
                                        @endforelse


                                    </div>
                                </div>
                            </div>

                            <div role="tabpanel" class="tab-pane fade" id="best-rated">
                                <div class="best_rated_area">
                                    <div class="row">
                                        @forelse ($cart_content as $item)
                                        <div class="col-12 col-sm-6 col-lg-4">
                                            <div class="single_top_sellers">
                                                <div class="top_seller_image">
                                                    <div style="height: 169px;overflow: hidden;" class="ndongo">
                                                      @php
                                                          $images = App\Models\Article::where('slug', $item->id)->get('image');
                                                      @endphp
                                                        @foreach ($images as $getimage)
                                                            <img src="{{ FrontEnd::image($getimage->image, 'scale-article') }}" data-src="{{ FrontEnd::image($getimage->image, 'populaire-article') }}" alt="{{ $item->title }}" class="lazyestload img-cover">
                                                        @endforeach

                                                    </div>
                                                </div>
                                                <div class="top_seller_desc">
                                                    <h5>{{ $item->name }}</h5>
                                                    <h6>{{ $item->price }}
                                                        @php
                                                            $articles_devises = App\Models\Article::where('slug', $item->id)->get('devise_id');
                                                        @endphp
                                                      @foreach ($articles_devises as $getdevise)
                                                        {{ $getdevise->devise->symbole }}
                                                      @endforeach
                                                        </span></h6>
                                                    <!-- Info -->
                                                    <div class="ts-seller-info mt-3 d-flex align-items-center justify-content-between">


                                                        <div class="ts_product_add_to_cart">
                                                            <a href="{{ route('elearning.articles.show', $item->id) }}" data-toggle="tooltip" data-placement="top" title="Discuter avec le vendeur" style="width: inherit;padding: 0 10px;"><i class="icofont-shopping-cart"></i> Discuter</a>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <hr>
                                        @empty
                                            <div class="alert alert-warning text-center w-100">Pas d'article favori pour l'instant. <p>Les fovoris sont les articles que vous avez aimés.</p></div>
                                        @endforelse
                                    </div>
                                </div>
                            </div>

                            <div role="tabpanel" class="tab-pane fade @if ($available_articles_count < 1) show active @endif" id="on-sale">
                                <div class="on_sale_area" style="padding: 10px 40px;box-shadow: 0px 0.3px 4px #222;margin:auto;">
                                    <div class="container">
                                        <div class="row">
                                            <form action="{{ route('elearning.articles.store') }}" method="post" enctype="multipart/form-data" class="w-100">
                                                {{-- @method('PUT') --}}
                                                @csrf
                                                <input type="hidden" name="user_id" value="{{ Auth::user()->id }}">
                                                <input type="hidden" class="form-control" name="published" value="on">
                                                <div class="form-group mb-3 text-center">
                                                    <h4 class="title mb-2" style="margin-top: 0px;">Publication du nouvel article</h4>
                                                </div>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-lg-3">
                                                        <label for="name">Titre de l'article :</label>
                                                    </div>
                                                   <div class="col-lg-9">
                                                        <div class="form-group">
                                                            <input type="text" name="title" id="" class="form-control" placeholder="Ecrivez le titre de l'article" required>
                                                        </div>
                                                   </div>
                                                </div>

                                                <div class="row mb-3">
                                                    <div class="col-lg-3">
                                                        <label for="name">Catégorie de l'article :</label>
                                                    </div>
                                                   <div class="col-lg-9">
                                                        <div class="form-group">
                                                            <select name="category_id" class="form-select" id="" required>
                                                                <option value="10" selected>Choisissez la catégorie</option>
                                                                @foreach ($categories as $item)
                                                                    <option value="{{ $item->id }}">{{ $item->nom }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                   </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-lg-3">
                                                        <label for="name">L'article est dans quelle province ? :</label>
                                                    </div>
                                                   <div class="col-lg-9">
                                                        <div class="form-group">
                                                            <select name="province_id" class="form-select" id="" required>
                                                                <option value="1" selected>Choisissez la province</option>
                                                                @foreach ($provinces as $item)
                                                                    <option value="{{ $item->id }}">{{ $item->nom }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                   </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-lg-3 col-12">
                                                        <label for="name">Ajouter des images pour l'article :</label>
                                                    </div>
                                                   <div class="col-lg-2 col-12">
                                                    <div class="form-group mb-3">
                                                        <div>Photo principale</div>
                                                        <label class="label-camera" for="gde-image" style="position: relative;border: 1px solid #ddd;height: 120px;width: 100%;display: inline-flex;border-radius: 10px;overflow: hidden;">

                                                            {{-- <br style="margin-bottom: 15px;"> --}}

                                                                <img src="{{ asset('elearning/html/images/default-image.png') }}"
                                                                style="width:100%; height:100%; object-fit: cover; cursor: pointer;
                                                                clear:both; display:block; padding:2px;
                                                                margin-bottom:10px;"
                                                                class="mx-auto edit-img" id="main-image">


                                                            <span class="camera-hover" style="background-color: #fff; width: 100%; height: 50px;position: absolute;bottom:0;opacity: .8;cursor:pointer;text-align:center;">
                                                                <i class="icofont-camera" style="margin-top: 15px !important;"></i>
                                                            </span>
                                                        </label>
                                                        <input type="file" name="image" id="gde-image" style="display: none" onchange="document.getElementById('main-image').src = window.URL.createObjectURL(this.files[0])" accept="image/*">
                                                        @error('image')
                                                            <span class="invalid-feedback d-block" role="alert">
                                                                <strong>Image invalide</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                   </div>
                                                    <div class="col-lg-7 col-12">
                                                        {{-- <div class="col-lg-3"> --}}
                                                            <label for="name">Autres images de l'article :</label>
                                                            <div id="albumAvis" class="row"></div>
                                                        {{-- </div> --}}
                                                    </div>
                                                   </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-lg-3">
                                                        <label for="name">Combien coûte cet article :</label>
                                                    </div>
                                                   <div class="col-lg-6">
                                                        <div class="form-group">
                                                            <input type="number" name="price" id="" class="form-control" placeholder="Ecrivez le prix de l'article" required>
                                                            <small class="help-block" style="float: left;color: gray;">Ecrivez uniquement les chiffres.</small>
                                                        </div>
                                                   </div>
                                                   <div class="col-lg-3">
                                                        <div class="form-group devise">
                                                            <select name="devise_id" class="form-select" id="" required>
                                                                <option value="1" selected>Choississez la devise ($, CDF)</option>
                                                                {{-- , Euro € --}}
                                                                @foreach ($devises as $devise)

                                                                    <option value="{{ $devise->id }}">{{ $devise->symbole }} {{ $devise->title }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-lg-3">
                                                        <label for="name">Description :</label>
                                                    </div>
                                                   <div class="col-lg-9">
                                                        <div class="form-group">
                                                            <textarea name="description" id="" cols="30" rows="5" class="form-control" placeholder="Parlez en détails sur votre article" required></textarea>
                                                        </div>
                                                   </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-lg-3">
                                                        <label for="name">Téléphone  :</label>
                                                    </div>
                                                   <div class="col-lg-9">
                                                        <div class="form-group">
                                                            <input type="text" name="call_phone"
                                                            value="@if(Auth::user()->call_phone){{ Auth::user()->call_phone }}@endif"
                                                            id="" class="form-control" placeholder="Votre numero de téléphone">
                                                        </div>
                                                   </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-lg-3">
                                                        <label for="name">Téléphone whatsapp :</label>
                                                    </div>
                                                   <div class="col-lg-9">
                                                        <div class="form-group">
                                                            <input type="text" name="whatsapp_phone" value="@if(Auth::user()->whatsapp_phone){{ Auth::user()->whatsapp_phone }}@endif" id="" class="form-control" placeholder="Votre numero whatsapp">
                                                        </div>
                                                   </div>
                                                </div>

                                                <div class="row">
                                                   <input type="submit" value="Publier" class="btn btn-primary" style="margin-left: auto;margin-right: auto;">
                                                </div>

                                            </form>
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
