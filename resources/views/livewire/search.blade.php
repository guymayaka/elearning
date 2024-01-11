<div class="col-md-8">

    <div class="block-area" style="margin-top: 10px;">
        <div class="row">
           <div class="col-lg-6">
               <div class="block-title-7">
                   <h4 class="h5 text-center center-backline">
                       <span class="bg-themes">Derniers articles</span>
                   </h4>
               </div>
           </div>
           <div class="col-lg-6">
               <input type="text" name="" wire:model="keyword" placeholder="Recherche" class="form-control" id="" style="margin-top: -10px;margin-bottom: 20px;">
           </div>
        </div>
        <!--output-->

        @forelse ($publications as $item)
            <article class="card card-full hover-a mb-module">
                <div class="row">
                    <div class="col-3 pe-2 pe-md-0">
                        <!--thumbnail-->
                        <div class="ratio_180-123 image-wrapper" style="height: 200px;overflow: hidden;">
                        <a href="{{ route('elearning.publications.show', $item->slug) }}">
                            <div style="height: 200px;overflow: hidden;">
                                @if ($item->image)
                                    <img class="img-cover"
                                    src="{{ FrontEnd::image($item->image, 'recent-article') }}"
                                    alt="{{ $item->title }}">
                                @else
                                    <img class="img-cover" src="{{ asset('elearning/assets/img/book-2.png') }}" alt="" srcset="">
                                @endif

                            </div>

                        </a>
                        </div>
                    </div>
                    <div class="col-9">
                        <div class="card-body pt-0">
                            <!--title-->
                            <h2 class="card-title h5 h4-sm h3-lg">
                                <a href="{{ route('elearning.publications.show', $item->slug) }}">
                                    {{ Str::limit($item->title, 90, '...') }}
                                </a>
                            </h2>
                            <!--content text-->
                            <p class="card-text mb-2 d-none d-md-block">
                                {{ Str::limit($item->resume, 120, '...') }}
                            </p>
                            <div class="card-text text-muted small">
                                <!--author-->
                                <span class="fw-bold d-none d-sm-inline me-1">
                                    <a href="#" title="Posts by ari budin" rel="author">
                                        {{ $item->user->name ?? '' }}
                                    </a>
                                </span>
                                <!--date-->
                                <time class="news-date" datetime="2019-06-16T14:10:06+00:00">
                                    {{ FrontEnd::dateEnFrancais($item->created_at) }}
                                </time>
                                <!--comments-->
                                {{-- <span title="5 comment" class="ms-1">
                                    <span class="icon-comments"></span> 0 Comment </span> --}}
                            </div>
                        </div>
                    </div>
                </div>
            </article>
        @empty
        <div class="alert alert-warning text-center"> Aucun resultat </div>
        @endforelse
    </div>
    {{ $publications->links() }}
</div>
