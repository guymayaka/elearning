<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Publication extends Model
{
    /**
     * Get the categorie that owns the Publication
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function categorie()
    {
        return $this->belongsTo(PublicationsCategory::class, 'category_id');
    }

    /**
     * Get the user that owns the Publication
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
