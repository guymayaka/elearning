@extends('elearning.layouts.master')

@section('title')
    elearning - Recherches - {{ $keyword }}
@endsection

@section('css')
    @livewireStyles
@endsection

@section('body')
    @include('elearning.layouts.partials.body.body-search-results')
@stop

@livewireScripts
