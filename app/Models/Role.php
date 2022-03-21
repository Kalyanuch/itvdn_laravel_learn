<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    protected $table = 'roles';

    protected $fillable = ['name', 'slug', 'permissions'];

    protected $casts = ['permissions' => 'array'];
}
