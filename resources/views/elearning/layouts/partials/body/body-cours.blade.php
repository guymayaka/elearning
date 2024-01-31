<section id="popular-courses" class="courses" style="background: #eef0ef;margin-top: 50px;">
    <div class="container" data-aos="fade-up">

        <div class="section-title">
            <h2>Cours</h2>
            <p>COURS RÉCENTS </p>
        </div>

        <div class="row" data-aos="zoom-in" data-aos-delay="100">
            @foreach ($courses as $item)
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                    <a href="{{ route('elearning.cours.show', $item->slug) }}">
                        <div class="course-item">
                            <div style="height: 276px;overflow: hidden;">
                                <img src="{{ Voyager::image($item->image) }}" class="img-fluid img-cover" alt="...">
                            </div>
                            <div class="course-content">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <h4>{{ $item->title }}</h4>
                                    <p class="price">Gratuit</p>
                                </div>

                                <h3><a href="{{ route('elearning.cours.show', $item->slug) }}">{{ $item->categorie->nom }}</a></h3>
                                <p>
                                    {{ Str::limit($item->resume, 100, '...') }}
                                </p>
                                <div class="trainer d-flex justify-content-between align-items-center">
                                    <div class="trainer-profile d-flex align-items-center">
                                        <img src="assets/img/trainers/trainer-1.jpg" class="img-fluid" alt="">
                                        <span>{{ $item->user->name }}</span>
                                    </div>
                                    <div class="trainer-rank d-flex align-items-center">
                                        <i class="bx bx-user"></i>&nbsp;50
                                        &nbsp;&nbsp;
                                        <i class="bx bx-heart"></i>&nbsp;65
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div> <!-- End Course Item-->
            @endforeach


        </div>

    </div>
</section>
