<div id="content" style="margin-top: 120px;">
    <div class="container">
        <div class="row">
            <!-- start left column -->
            <div class="col-md-8">
                <!-- block start -->
                <div class="block-area">
                    <!-- block title -->
                    <div class="block-title-6">
                        <h4 class="h5 border-secondary">
                            {{ $course->title }}
                        </h4>
                    </div>
                    <!-- block content -->
                    <div class="border-bottom-last-0 first-pt-0">
                        <div class="row">
                            <div class="ratio_360-202 image-wrapper">
                                <div class="big-div-mobile" style="height: 404px;overflow: hidden;">
                                   @if ($course->youtube_link)
                                   <iframe src="https://www.youtube.com/embed/{{ Helpers::getYoutubeLinkID($course->youtube_link) }}"
                                   style="width: 100%;height: 100%;"></iframe>
                                    @else
                                        <img class="img-cover lazyestload"
                                        src="{{ FrontEnd::image($course->image) }}"
                                        alt="{{ $course->title }}">
                                    @endif
                                </div>
                            </div>
                            <div class="card-body pt-3 pt-sm-0 pt-md-3 pt-lg-0"
                                style="padding: 10px;text-align: justify;">
                                <!--title-->

                                <!--author and date-->
                                <div class="card-text mb-2 text-muted small">
                                    <time datetime="2019-10-21">{{ $course->created_at->diffForHumans() }} |
                                        {{ Helpers::dateEnFrancais($course->created_at) }}
                                    </time>
                                </div>
                                <!--description-->
                                <p class="card-text">
                                    {!! $course->description !!}
                                </p>
                            </div>
                        </div>

                    </div>
                    <!-- end block content -->
                </div>
                <!--end block-->
                <ul style="width: fit-content;margin: auto;margin-bottom: 50px;margin-left: -40px;">
                    {{-- https://sangwamawa.cd/necrologies/{{ $avi->slug }} --}}
                    <a href="https://facebook.com/sharer/sharer.php?u={{ route('elearning.cours.show', $course->slug) }}"
                        target="_blank" class="btn btn-primary facebook-back"
                        style="box-shadow: 0 4px 9px -4px #3b71ca;border: 1px solid transparent;padding: 5px 15px;"><i
                            class="bi bi-facebook" aria-hidden="true"></i> | Partager</a>
                    <a href="javascript:window.open('https://twitter.com/intent/tweet?text=elearning &url={{ route('elearning.cours.show', $course->slug) }}','_blank','width=400, height=500');void(0);"
                        class="btn btn-info twitter-back"
                        style="box-shadow: 0 4px 9px -4px #3b71ca;border: 1px solid transparent;padding: 5px 15px;color:white;"><i
                            class="bi bi-twitter" aria-hidden="true"></i> | Twitter</a>
                    <a href="https://wa.me/?text=elearning :  {{ route('elearning.cours.show', $course->slug) }}"
                        class="btn btn-success whatsapp-back" target="_blank"
                        style="box-shadow: 0 4px 9px -4px #3b71ca;border: 1px solid transparent;padding: 5px 15px;"><i
                            class="bi bi-whatsapp" aria-hidden="true"></i> | WhatsApp</a>
                </ul>

                {{-- @livewire('question', ['course' => $course]) --}}
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
                                <span>Voir aussi</span>
                            </h4>
                        </div>
                        <!-- block content -->
                        <div class="small-post">
                            @foreach ($courses as $item)
                                <!--post list-->
                                <div class="card card-full hover-a mb-4">
                                    <div class="row">
                                        <!--thumbnail-->
                                        <div class="col-3 col-md-4 pe-2 pe-md-0">
                                            <div class="ratio_110-77 image-wrapper" style="height: 100px;">
                                                <a href="{{ route('elearning.cours.show', $item->slug) }}">
                                                    <div style="height: 100px;overflow: hidden;">
                                                       <img class="img-cover lazyestload"
                                                                src="{{ FrontEnd::image($item->image) }}"
                                                                alt="{{ $item->title }}">
                                                    </div>

                                                </a>
                                            </div>
                                        </div>
                                        <!-- title & date -->
                                        <div class="col-9 col-md-8">
                                            <div class="card-body pt-0">
                                                <h3 class="card-title h6 h5-sm h6-md">
                                                    <a href="{{ route('elearning.cours.show', $item->slug) }}">
                                                        {{ Str::limit($item->title, 70, '...') }}
                                                    </a>
                                                </h3>
                                                <div class="card-text small text-muted">
                                                    <time
                                                        datetime="2019-10-16">{{ $item->created_at->diffForHumans() }}</time>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                        <!--end block content-->
                        <div class="gap-0"></div>
                    </aside>
                    <!--End widget-->

                </div>
                <!--end Sidebar sticky-->
            </aside>
            <!-- end right column -->

        </div>
    </div>
</div>
