@extends('elearning.layouts.master')

@section('title')
    elearning - Les catégories articles
@endsection

@section('css')

    <link rel="stylesheet" href="{{ asset('elearning/html/toastr/dist/build/toastr.min.css') }}">
    {{-- @livewireStyles --}}
@endsection

@section('body')
    @include('elearning.layouts.partials.body.body-user-profile')
@stop


@section('javascript')


<script src="{{ asset('elearning/html/toastr/dist/build/toastr.min.js') }}"></script>
<script src="{{ asset('elearning/spartan-multi-image-picker.js') }}"></script>

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
        //////////////////////////////////////////
        //MULTI SELECT IMAGES////////////////////
        ////////////////////////////////////////
        $(function(){

        $("#albumAvis").spartanMultiImagePicker({
            fieldName:        'galerie[]',
            maxCount:         50,
            rowHeight:        '150px',
            groupClassName:   'col-md-3 col-sm-4 col-6',
            maxFileSize:      '',
            dropFileLabel : "Glisser ici",
            allowedExt: 'png|jpg|jpeg|gif|webp',
            onAddRow:       function(index){
                console.log(index);
                console.log('Ajouter une colonne');
            },
            onRenderedPreview : function(index){
                console.log(index);
                console.log('preview rendered');
            },
            onRemoveRow : function(index){
                console.log(index);
            },
            onExtensionErr : function(index, file){
                console.log(index, file,  'extension err');
                alert('Veuillez choisir le fichier d\'une extension valide : png,jpg,jpeg et gif')
            },
            onSizeErr : function(index, file){
                console.log(index, file,  'file size too big');
                alert('Fichier trop gros');
            }
        });


            $('.delete-btn').on('click', function(){

                var id = $(this).attr('data-id');
                var title = $(this).attr('data-title');

                var x=document.getElementById(id);
                document_id.value = id;
                var document_text = document.getElementById('document_text').innerHTML = title;

                $('#error-modal').modal('show');
            });
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

    {{-- @livewireScripts --}}
@endsection



