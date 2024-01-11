@extends('elearning.layouts.master')

@section('title')
    elearning - A propos de nous
@endsection


@section('page_seo')

    <meta name="description" content="{{ setting('site.description') }}" />
    <meta name="keywords" content="news, actualites, articles">
    <meta name="author" content="{{ setting('site.title') }}">
    <meta property="og:site_name" content="elearning.com">
    <meta property="og:url" content="{{ url()->current() }}" />
    <meta property="og:type" content="website" />
    <meta property="og:image" content="{{ Voyager::image(setting('site.logo')) }}" />


    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="elearning.com">
    <meta name="twitter:title" content="{{ setting('site.title') }}">
    <meta name="twitter:description" content="{{ setting('site.description') }}">
    <meta name="twitter:creator" content="@creator_username">
    <meta name="twitter:image" content="{{ Voyager::image(setting('site.logo')) }}">
    <meta name="twitter:domain" content="{{ request()->getHttpHost() }}">
@endsection

@section('css')
    @livewireStyles
@endsection

@section('body')
    @include('elearning.layouts.partials.body.body-about')
@stop


{{-- @section('javascript')

<script>
    window.fbAsyncInit = function() {
      FB.init({
        appId      : '{your-app-id}',
        cookie     : true,
        xfbml      : true,
        version    : '{api-version}'
      });

      FB.AppEvents.logPageView();

    };

    (function(d, s, id){
       var js, fjs = d.getElementsByTagName(s)[0];
       if (d.getElementById(id)) {return;}
       js = d.createElement(s); js.id = id;
       js.src = "https://connect.facebook.net/en_US/sdk.js";
       fjs.parentNode.insertBefore(js, fjs);
     }(document, 'script', 'facebook-jssdk'));
  </script>
@endsection --}}
@livewireScripts
