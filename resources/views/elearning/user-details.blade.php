@extends('elearning.layouts.master')

@section('title')
    elearning - {{ $user->name }}
@endsection

@section('css')

    <link rel="stylesheet" href="{{ asset('elearning/html/toastr/dist/build/toastr.min.css') }}">
    {{-- @livewireStyles --}}
@endsection

@section('body')
    @include('elearning.layouts.partials.body.body-user-details')
@stop


@section('javascript')


<script src="{{ asset('elearning/html/toastr/dist/build/toastr.min.js') }}"></script>

@if(Session::has('success'))
    <script>

        $(document).ready(function(){

            // console.log('ok');
        toastr.success(
                        // {{ Session::get('success') }},
                        'Modification reussie',
                        {
                            positionClass: 'toastr toast-top-right',
                            containerId: 'toast-top-right',
                            "closeButton": true,
                            "showMethod": "slideDown",
                            "hideMethod": "slideUp",
                            timeOut: 5000
                            }
                        );

                });
    </script>

        @php
            Session::forget('success');
        @endphp
    @endif

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
                if (characterCount < 70) {
                current.css('color', '#666');
                }
                if (characterCount > 70 && characterCount < 90) {
                current.css('color', '#6d5555');
                }
                if (characterCount > 90 && characterCount < 100) {
                current.css('color', '#793535');
                }
                if (characterCount > 100 && characterCount < 120) {
                current.css('color', '#841c1c');
                }
                if (characterCount > 120 && characterCount < 139) {
                current.css('color', '#8f0001');
                }

                if (characterCount >= 140) {
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

    @livewireScripts
@endsection



