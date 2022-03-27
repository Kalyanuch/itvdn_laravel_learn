<?php

namespace App\Components;

class SuperComponent
{
    protected $name = 'super ';

    public function __construct($attribute)
    {
        $this->name .= $attribute;
    }

    public function getName()
    {
        return $this->name;
    }
}