<!-- Page header -->
<div class="pt-9 pb-9">
    <div class="container">
        <div class="row">
            <div class="offset-xl-2 col-xl-8 offset-lg-1 col-lg-10 col-md-12 col-12">
                <div class="text-center mb-5">
                    <h1 class="display-2 fw-bold">Informations</h1>
                </div>
                <!-- Form -->
                <form class="row px-md-20" action="recherche" method="GET">
                    @csrf
                    {{-- @captcha --}}
                    <div class="mb-3 col ps-0 ms-2 ms-md-0">
                        <input type="search" class="form-control" name="keyword" placeholder="Rechercher une imformation" required="" />
                    </div>
                    <div class="mb-3 col-auto ps-0">
                        <input type="submit" class="btn btn-primary" value="Rechercher">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Page Content -->
<div class="pb-12">
    <div class="container">
        <div class="row">

            @foreach ($articles as $item)
                <div class="col-xl-4 col-lg-4 col-md-6 col-12">
                    <!-- Card -->
                    <div class="card mb-4 shadow-lg ">
                        <a href="{{ route('elearning.articles.show', $item->slug) }}"  class="card-img-top">
                            <div style="height: 200px;overflow: hidden;">
                                <img src="{{ Voyager::image($item->image) }}" class="card-img-top rounded-top-md img-cover" alt="" />
                            </div>

                        </a>
                        <!-- Card body -->
                        <div class="card-body">
                            {{-- <a href="#" class="fs-5 fw-semi-bold d-block mb-3 text-danger">{{ $item->title }}</a> --}}
                            <h3>
                                <a href="{{ route('elearning.articles.show', $item->slug) }}" class="text-inherit" style="text-transform: lowercase;">
                                    {{ Str::limit($item->title, 30, '...') }}
                                </a>
                            </h3>
                            <p>
                                {{ Str::limit($item->resume, 50, '...') }}
                            </p>
                                <!-- Row  -->
                            <div class="row align-items-center g-0 mt-4">
                                <div class="col-auto" style="height: 40px;overflow: hidden;">
                                    <img src="{{ asset('elearning/assets/images/favicon.PNG') }}" alt="" class="rounded-circle avatar-sm me-2" />
                                </div>
                                {{-- <div class="col lh-1">
                                    <h5 class="mb-1">elearning</h5>
                                </div> --}}
                                <div class="col-auto" style="margin-left: auto;">
                                    <p class="fs-6 mb-0">{{ $item->created_at->diffForHumans() }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
             @endforeach
             <a href="{{ route('elearning.articles.index') }}" class="btn btn-primary m-auto" style="width: inherit;">Voir plus</a>
        </div>
    </div>
</div>
