<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;
class Topic extends Model
{
    use SoftDeletes;
    protected $table ='topic';
    public function posts():HasMany
    {
        return $this->hasMany(Post::class,'topic_id');
    }
    public function getPostsCountAttribute()
    {
        return $this->posts()->count();
    }
}
