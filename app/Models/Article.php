<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Article extends Model
{
    /**
     * Get the categorie that owns the Article
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function categorie()
    {
        return $this->belongsTo(ArticlesCategory::class, 'category_id');
    }
}
