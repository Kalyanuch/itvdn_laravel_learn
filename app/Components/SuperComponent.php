<?php

namespace App\Components;

class SuperComponent
{
    protected $name = 'super ';
    protected $property = 'super property ';

    public function __construct($attribute)
    {
        $this->name .= $attribute;
    }

    /**
     * @return string
     */
    public function getProperty(): string
    {
        return $this->property;
    }

    /**
     * @param string $property
     * @return SuperComponent
     */
    public function setProperty(string $property): SuperComponent
    {
        $this->property = $property;
        return $this;
    }

    public function getName()
    {
        return $this->name;
    }
}