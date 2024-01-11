<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    @include('elearning.layouts.partials.metadata.metadata')
    @include('elearning.layouts.partials.metadata.stylesheets')
    @yield('css')
</head>
<body>
    <div id="loader-wrapper">
        <div id="loader"></div>
        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>
    </div>


    @yield('body')


    @include('elearning.layouts.partials.metadata.scripts')

    @yield('javascript')
    @stack('js')
   <script>
     document.addEventListener("DOMContentLoaded", function() {
        setTimeout(function() {
            document.querySelector("body").classList.add("loaded");
        }, 10)
      });
   </script>
</body>
</html>
