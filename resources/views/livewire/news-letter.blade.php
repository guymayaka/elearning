<div class="mx-auto">
    <form id="subscribe" class="needs-validation" action="#" novalidate="">
        <div class="input-group">
            <input type="email" id="textareaInput" wire:model="email" class="form-control" name="email" required=""
                aria-label="email form" placeholder="Votre adresse mail">
            <button class="btn btn-primary" wire:click.prevent="storePost()">Souscrire</button>
            <div class="invalid-feedback">
                Veuillez entrer votre mail.
            </div>

        </div>
    </form>
        @if ($mailExist === 0)
                Merci de vous abonner
            @elseif ($mailExist === 1)
                Mail déjà inscrit
        @endif
        <div wire:loading="storePost" class="lds-dual-ring"></div>
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
