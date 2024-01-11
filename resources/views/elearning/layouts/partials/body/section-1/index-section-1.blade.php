<div class="col-12 mt-05">
    <!--Slider ticker-->
    <div class="row py-2">
        <!--Breaking box-->
        <div class="col-2 col-sm-1 col-md-3 col-lg-2 py-1 pe-md-0 mb-md-1">
            <div
                class="d-inline-block d-md-block bg-primary text-white text-center breaking-caret py-1 px-2">
                <svg xmlns="http://www.w3.org/2000/svg" width="1rem" height="1rem"
                    fill="currentColor" class="bi bi-lightning-fill" viewBox="0 0 16 16">
                    <path
                        d="M11.251.068a.5.5 0 0 1 .227.58L9.677 6.5H13a.5.5 0 0 1 .364.843l-8 8.5a.5.5 0 0 1-.842-.49L6.323 9.5H3a.5.5 0 0 1-.364-.843l8-8.5a.5.5 0 0 1 .615-.09z" />
                </svg>
                <span class="d-none d-md-inline-block">A la une</span>
            </div>
        </div>

        <!--Breaking content-->
        <div class="col-10 col-sm-11 col-md-9 col-lg-10 ps-1 ps-md-2">
            <div class="breaking-box position-relative py-2">
                <div class="box-carousel"
                    data-flickity='{ "cellAlign": "left", "wrapAround": true, "adaptiveHeight": true, "prevNextButtons": true , "autoPlay": 5000, "pageDots": false, "imagesLoaded": true }'>
                    <!--list post-->
                    @foreach ($slideArticles as $item)
                        <div class="col-12 aribudin">
                            <a class="h6 fw-normal" href="{{ route('elearning.articles.show', $item->slug) }}">
                                {{ Str::limit($item->title, 120, '...') }}
                            </a>
                        </div>
                    @endforeach


                </div><!--end breaking news-->
            </div>
        </div>
    </div>
    <!--End slider ticker-->

    <!-- Big grid slider 1 -->
    <div class="row featured-1 mb-5">
        <!--Start left cover-->
        <div class="col-md-6 pb-05 pt-05 pe-md-05">
            <div class="position-relative overflow-hidden">
                <div class="nav-slider-hover nav-dots-top-right light-dots"
                    data-flickity='{ "cellAlign": "left", "wrapAround": true, "adaptiveHeight": true, "prevNextButtons": true , "pageDots": true, "imagesLoaded": true }'>
                    <!--Item slider-->
                    @foreach ($CarouselArticles as $item)
                        <article class="col-12">
                            <div class="card card-full text-light overflow zoom">
                                <!--thumbnail-->
                                <div class="height-ratio image-wrapper">
                                    <a href="{{ route('elearning.articles.show', $item->slug) }}">
                                        <div class="big-div-mobile" style="height: 485px;overflow: hidden;">
                                            <img class="img-cover lazyestload"
                                            src="{{ FrontEnd::image($item->image, 'scale-article') }}"
                                            data-src="{{ FrontEnd::image($item->image, 'article-detail') }}"
                                            alt="{{ $item->title }}">
                                        </div>

                                    </a>
                                    <div class="position-absolute p-3 b-0 w-100 bg-lg-shadow">
                                        <!--title-->
                                        <a href="{{ route('elearning.articles.show', $item->slug) }}">
                                            <h2 class="h1-sm h2-md display-4-lg fw-bold text-capitalize heading-letter-spacing text-white">
                                                {{ Str::limit($item->title, 150, '...') }}
                                            </h2>
                                        </a>
                                        <!-- meta title -->
                                        <div class="news-meta">
                                            <time class="news-date" datetime="2019-10-22">{{ Helpers::dateEnFrancais($item->created_at) }}</time>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </article>
                    @endforeach
                </div>
            </div>
        </div>
        <!--End left cover-->

        <!--Start box news-->
        <div class="col-md-6 pt-05 ps-md-05">
            <div class="row newsbox">
                <!--news box-->
            @foreach ($categorizedArticles as $item)
                <article class="col-6">
                    <div class="card card-full text-white overflow zoom">
                        <div class="height-ratio image-wrapper">
                            <!--thumbnail-->
                            <a href="{{ route('elearning.articles.show', $item->slug) }}">
                                        <div class="small-div-mobile" style="height: 250px;overflow: hidden;">
                                            <img class="img-cover lazyestload"
                                            src="{{ FrontEnd::image($item->image, 'scale-article') }}"
                                            data-src="{{ FrontEnd::image($item->image, 'recent-article') }}"
                                            alt="{{ $item->title }}">
                                        </div>

                            </a>

                            <!-- category & title -->
                            <div class="position-absolute px-3 pb-3 pt-0 b-0 w-100 bg-shadow">
                                <a class="p-1 badge bg-primary text-white" href="#">{{ $item->categorie->nom }}</a>
                                <a href="{{ route('elearning.articles.show', $item->slug) }}">
                                    <h2 class="h6 h4-sm h6-md h5-lg text-white my-1">{{ Str::limit($item->title, 70, '...') }}</h2>
                                </a>
                            </div>
                        </div>
                    </div>
                </article>
            @endforeach

            </div>
        </div>
        <!--End box news-->
    </div>
    <!--End Big grid slider 1-->
</div>
