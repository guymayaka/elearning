            <!-- start left column -->
             <div id="sondage" style="position: absolute;width: 0;height: 0;bottom: 90%;">

            </div>
            <div class="col-md-8" id="sondage">
                <!-- block start -->
                @livewire('sondage')

                <div class="block-area">






                    <!-- block title -->
                    <div class="block-title-6">
                        <h4 class="h5 border-primary">
                            <span class="bg-primary text-white">A la une</span>
                        </h4>
                    </div>
                    <!-- block content -->
                    <div class="border-bottom-last-0 first-pt-0">
                        <!--post start-->
                        @foreach ($lastArticles as $article)
                            <article class="card card-full hover-a py-4">
                                <div class="row">
                                    <div class="col-sm-6 col-md-12 col-lg-6">
                                        <!--thumbnail-->
                                        <div class="ratio_360-202 image-wrapper">
                                            <a href="{{ route('elearning.articles.show', $article->slug) }}">
                                                <div class="big-div-mobile" style="height: 204px;overflow: hidden;">
                                                    <img class="img-cover lazyestload"
                                                    src="{{ FrontEnd::image($article->image, 'scale-article') }}"
                                                    data-src="{{ FrontEnd::image($article->image, 'recent-article') }}"
                                                    alt="{{ $article->title }}" style="object-position: top;">
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-12 col-lg-6">
                                        <div class="card-body pt-3 pt-sm-0 pt-md-3 pt-lg-0">
                                            <!--title-->
                                            <h3 class="card-title h2 h3-sm h2-md">
                                                <a href="{{ route('elearning.articles.show', $article->slug) }}">{{ Str::limit($article->title, 90, '...') }}</a>
                                            </h3>
                                            <!--author and date-->
                                            <div class="card-text mb-2 text-muted small">
                                                <time datetime="2019-10-21">{{ $article->created_at->diffForHumans() }}</time>
                                            </div>
                                            <!--description-->
                                            <p class="card-text">
                                                {{ Str::limit($article->resume, 150, '...') }}
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </article>
                        @endforeach
                        {{ $lastArticles->links() }}

                    </div>
                    <!-- end block content -->
                </div>
                <!--end block-->
            </div>
            <!-- end left column -->

            <!-- start right column -->
            <aside class="col-md-4 end-sidebar-lg">
                <!-- sidebar sticky start -->
                <div class="sticky">
                    <!--widget start-->
                    <aside class="widget">
                        <!-- block title -->
                        <div class="block-title-4">
                            <h4 class="h5 title-arrow">
                                <span>Publications Scientifiques</span>
                            </h4>
                        </div>
                        <!-- block content -->
                        <div class="small-post">
                            @foreach ($publications as $item)
                                <!--post list-->
                                <article class="card card-full hover-a mb-4">
                                    <div class="row">
                                        <!--thumbnail-->
                                        <div class="col-3 col-md-4 pe-2 pe-md-0">
                                            <div class="ratio_110-77 image-wrapper" style="height: 100px;">
                                                <a href="{{ route('elearning.publications.show', $item->slug) }}">
                                                    <div style="height: 100px;overflow: hidden;">
                                                        @if ($item->image)
                                                            <img class="img-cover lazyestload"
                                                            src="{{ FrontEnd::image($item->image, 'scale-article') }}"
                                                            data-src="{{ FrontEnd::image($item->image, 'recent-article') }}"
                                                            alt="{{ $item->title }}">
                                                        @else
                                                            <img class="img-cover lazyestload" src="{{ asset('elearning/assets/img/assets/lazy-empty.png') }}" data-src="{{ asset('elearning/assets/img/book-2.png') }}" alt="" srcset="">
                                                        @endif

                                                    </div>

                                                </a>
                                            </div>
                                        </div>
                                        <!-- title & date -->
                                        <div class="col-9 col-md-8">
                                            <div class="card-body pt-0">
                                                <h3 class="card-title h6 h5-sm h6-md">
                                                    <a href="{{ route('elearning.publications.show', $item->slug) }}">
                                                        {{ Str::limit($item->title, 70, '...') }}
                                                    </a>
                                                </h3>
                                                <div class="card-text small text-muted">
                                                    <time datetime="2019-10-16">{{ Helpers::dateEnFrancais($item->created_at) }}</time>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            @endforeach
                            <a href="{{ route('elearning.publications.index') }}" class="btn btn-primary w-100">Voir toutes les publications</a>
                        </div>
                        <!--end block content-->
                        <div class="gap-0"></div>
                    </aside>

                    <!--End widget-->

                    <!-- widget start -->
                    <aside class="widget">
                        <!-- widget content -->
                        <div class="border text-white text-center mb-4 newsletter">
                            <!--title-->
                            <h4>NewsLetter</h4>
                            <p>Abonnez-vous à notre newsletter pour ne rien manquer !</p>
                            <!--form start-->
                            @livewire('news-letter')

                            <!--end form-->
                            {{-- <p class="small text-center text-dark-light mt-3">hate spammers, and never spam</p> --}}
                        </div>
                        <!-- end widget content -->
                        <div class="gap-0"></div>
                    </aside>

                    <!-- custom post -->
                    <aside class="widget">
                        <div class="block-title-4">
                            <h4 class="h5 title-arrow"><span>Vois aussi</span></h4>
                        </div>
                        <!--style 2-->
                        <div class="small-post">
                            @foreach ($otherArticles as $item)
                                <!--post list-->
                                <article class="card card-full hover-a mb-2">
                                    <div class="card-body pt-0">
                                        <!--title-->
                                        <h3 class="card-title h5">
                                            <a href="{{ route('elearning.articles.show', $item->slug) }}">{{ Str::limit($item->title, 90, '...') }}</a>
                                        </h3>
                                        <!--date-->
                                        <div class="card-text small text-muted">
                                            <time datetime="2019-06-16">{{ Helpers::dateEnFrancais($item->created_at) }}</time>
                                        </div>
                                    </div>
                                </article>
                                <!--post list-->
                            @endforeach
                        </div>
                        <div class="gap-0"></div>
                    </aside>
                </div>
                <!--end Sidebar sticky-->
            </aside>
            <!-- end right column -->
