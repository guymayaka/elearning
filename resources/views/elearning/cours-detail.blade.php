@extends('elearning.layouts.master')

@section('title')
    elearning -  {{ $course->title }}
@endsection

@section('page_seo')
    <meta name="description" content="{{ Str::limit($course->resume, 100, '...') }}">
    <meta name="keywords" content="{{ $course->title }}">

    <meta name="author" content="elearning">
    <meta property="og:site_name" content="elearning.com">
    <meta property="og:url" content="{{ url()->current() }}" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="{{ $course->title }}" />
    <meta property="og:description" content="{{ Str::limit($course->resume, 100, '...') }}" />
    <meta property="og:image" content="{{ FrontEnd::image($course->image) }}" />

    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="elearning.com">
    <meta name="twitter:title" content="{{ $course->title }}">
    <meta name="twitter:description" content="{{ Str::limit($course->resume, 100, '...') }}">
    <meta name="twitter:creator" content="@creator_username">
    <meta name="twitter:image" content="{{ FrontEnd::image($course->image) }}">
    <meta name="twitter:domain" content="{{ request()->getHttpHost() }}">
@endsection


@section('body')
    @include('elearning.layouts.partials.body.body-cours-detail')
@stop


@section('javascript')
<script src="{{ asset('elearning/jquery.min.js') }}"></script>
<script>
    $(document).ready(function(){

        // alert(true);
        $('textarea').keyup(function() {

            var characterCount = $(this).val().length,
                current = $('#current'),
                maximum = $('#maximum'),
                theCount = $('#the-count');

            current.text(characterCount);


            /*This isn't entirely necessary, just playin around*/
            if (characterCount < 170) {
            current.css('color', '#666');
            }
            if (characterCount > 170 && characterCount < 190) {
            current.css('color', '#6d5555');
            }
            if (characterCount > 190 && characterCount < 200) {
            current.css('color', '#793535');
            }
            if (characterCount > 200 && characterCount < 220) {
            current.css('color', '#841c1c');
            }
            if (characterCount > 220 && characterCount < 239) {
            current.css('color', '#8f0001');
            }

            if (characterCount >= 240) {
            maximum.css('color', '#8f0001');
            current.css('color', '#8f0001');
            theCount.css('font-weight','bold');
            } else {
            maximum.css('color','#666');
            theCount.css('font-weight','normal');
            }


        });
    });
</script>
@endsection
@livewireScripts
