<div>
    <h6>
        @if (count($questions) > 1)
            {{ count($questions) }} Commentaires
        @else
            {{ count($questions) }} Commentaire
        @endif
    </h6>
    @foreach ($questions as $item)
        <div class="row">

            <div class="col-md-1 col-2 img-border">
                <div style="border-radius:50%;width:50px;height:50px;overflow:hidden;">
                                            <img src="https://nazoteka.com/storage/users/default.png" style="width: 100%;height: 100%;object-fit: cover;" alt="img">

                </div>
            </div>
            <div class="col-md-11 col-10">

                <h6>{{ $item->noms }}</h6>
                <p>{{ $item->message }}
                    <small class="text-right" style="float: right">
                        {{ $item->created_at->diffForHumans() }}
                    </small>
                </p>

            </div>

        </div>
        <hr @if ($loop->last) style="display:none;" @endif>

    @endforeach



    <form class="mt-5">
        <input type="hidden" wire:model="article_id" name="article_id" value="{{ $article->id }}">
       <div class="row">
           <div class="col-md-12">
               <div class="form-group mb-3">
                   <input type="text" wire:model="noms" name="noms" id="" class="form-control" placeholder="Votre nom" required="">
               </div>
           </div>

       </div>

        <div class="row">
           <div class="col-md-12">
               <div class="form-group">
                   <textarea name="message" data-emojiable="true" wire:model="content" id="the-textarea" maxlength="300" cols="30" rows="3" class="form-control" placeholder="Ecrire un message"></textarea>
                   <small class="help-block" style="float: left;color: gray;">Les insultes ou tout terme offensant est stritement interdit.</small>
                   <div wire:ignore id="the-count" style="text-align: right;">
                    <span id="current">0</span>
                    <span id="maximum">/ 300</span>
                  </div>
               </div>
               <button wire:click.prevent="storePost()" class="btn btn-primary" style="float: right;margin: 10px 0;">Envoyer <i class="icon-paper-plane"></i></button>
           </div>
       </div>

   </form>




</div>

@push('js')
    <script>
        Livewire.on('refreshTextArea', data =>{

            $(document).ready(function(){

                    $('#textareaInput').val('');
            });
            var textarea = document.getElementById('textareaInput').value;
            textarea.textContent = '';
        });
    </script>
@endpush
