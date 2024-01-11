<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    @include('elearning.layouts.partials.metadata.metadata')
    @include('elearning.layouts.partials.metadata.stylesheets')
    @yield('css')
</head>
<body>
    @include('elearning.layouts.partials.header.header')

    @yield('body')

    @include('elearning.layouts.partials.footer.footer')

    @include('elearning.layouts.partials.metadata.scripts')

    @yield('javascript')
</body>
</html>
