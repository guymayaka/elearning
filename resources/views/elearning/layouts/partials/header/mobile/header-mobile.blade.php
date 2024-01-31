<nav id="mobile-menu" class="menu-mobile d-flex flex-column push push-start shadow-r-sm bg-white">
    <!-- mobile menu content -->
    <div class="mobile-content mb-auto">
        <!--logo-->
        <div class="logo-sidenav p-2">
            <a href="/">
                <div style="height: 90px;overflow: hidden;">
                    <img class="img-cover" src="{{ Voyager::image(setting('site.logo')) }}" alt="Logo site">
                </div>
            </a>
        </div>

        <!--navigation-->
        <div class="sidenav-menu">
            <nav class="navbar navbar-light navbar-inverse">
                <ul id="side-menu" class="nav navbar-nav list-group list-unstyled side-link">
                    <li class="menu-item nav-item"><a href="#" class="nav-link {{ (request()->is('/')) ? 'active' : '' }}">A la une</a></li>
                    @foreach (App\Models\coursesesCategory::where('published', 1)->limit(6)->get() as $item)
                         <li class="menu-item nav-item">
                             <a class="nav-link {{ (request()->is($item->nom.'/*')) ? 'active' : '' }}" href="{{ route('elearning.categories.show', $item->slug) }}">{{ $item->nom }}</a>
                         </li>
                    @endforeach
                    <li class="menu-item nav-item">
                        <a class="nav-link {{ (request()->routeIs('publications/*')) ? 'active' : '' }}" href="{{ route('elearning.publications.index') }}">Publications Scientifiques</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>

    <!-- copyright mobile sidebar menu -->
    <div class="mobile-copyright mt-5 px-4 text-center">
        <p>Copyright <a href="/">elearning</a> - All right reserved</p>
    </div>
</nav>
