<div class="contact-section2">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center text-white">
                <h2 class="text-white">NOUS CONTACTER</h2>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-lg-4 col-md-6 bordered-right pb-3 mb-3">
                <div class="text-center">
                    <p class="icon mb-2"><span class="bi bi-geo-alt" style="padding: 16px 20px;"></span></p>
                    <p class="adresse mb-0">
                        {{ setting('site.adresse') }}
                    </p>
                </div>
            </div>

            <div class="col-lg-4 col-md-6 bordered-right pb-3 mb-3">
                <div class="text-center">
                    <p class="icon mb-2"><span class="bi bi-telephone-fill" style="padding: 17px 17px;"></span></p>
                    <p class="adresse mb-0">
                        {{ setting('site.phone') }}
                    </p>
                </div>
            </div>

            <div class="col-lg-4 col-md-6 bordered-right pb-3 mb-3">
                <div class="text-center">
                    <p class="icon mb-2"><span class="bi bi-telegram" style="padding: 18px 19px;"></span></p>
                    <p class="adresse mb-0">
                        {{ setting('site.email') }}
                    </p>
                </div>
            </div>
        </div>

    </div>
</div>
<div class="container mt-5">
    <div class="row align-items-center">

        <!-- background color -->
        <div class="col-lg-12">
            <div class="px-4 px-xl-20 py-8 py-lg-0">
                <!-- form section -->
                <div id="form">
                    <!-- form row -->
                    @if(Session::has('success'))
                        <div class="alert alert-success text-center mb-4" style="margin-top: 10px;">
                            {{ Session::get('success') }}
                            @php
                                Session::forget('success');
                            @endphp
                        </div>
                    @endif
                    <form class="row" action="{{ route('elearning.contact.store') }}" method="POST">
                        @csrf
                        {{-- @captcha --}}
                        <div class="row mb-3">
                                <!-- form group -->
                                <div class="col-lg-6">
                                    <label class="form-label"for="fname">Votre nom:<span class="text-danger">*</span></label>
                                    <input class="form-control" type="text" name="noms" id="fname"
                                        placeholder="Nom complet" required />
                                </div>
                                <!-- form group -->

                                <!-- form group -->
                                <div class="col-lg-6">
                                    <label class="form-label"for="email">Email:<span class="text-danger">*</span></label>
                                    <input class="form-control" type="email" name="email" id="email" placeholder="Email"
                                        required />
                                </div>
                        </div>
                        <div class="row">
                            <!-- form group -->
                            <div class="mb-3 col-12">
                                <label class="form-label"for="phone">Phone:<span class="text-danger">*</span></label>
                                <input class="form-control" type="text" name="phone" id="phone" placeholder="Phone"
                                    required />
                            </div>
                        </div>
                        <div class="row">
                             <!-- form group -->
                            <div class="mb-3 col-12">
                                <label class="text-dark form-label"for="messages">Message:</label>
                                <textarea class="form-control" name="message" id="messages" rows="3" placeholder="Messages"></textarea>
                            </div>
                        </div>
                        <!-- button -->
                        <div class="row">
                            <div class=" col-12">
                                <button type="submit" class="btn btn-primary btn-block">
                                    Envoyer
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
