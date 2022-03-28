<?php

namespace App\Http\Controllers;

//use App\Components\SuperComponent;
use App\Facades\Super;

class TestController extends Controller
{
    //public function testProvider(SuperComponent $component)
    public function testProvider()
    {
        /*
        return view('provider', ['name' => $component->getName(), 'prop' => $component->getProperty()]);
        */
        //return view('provider', ['name' => Super::getName(), 'prop' => Super::getProperty()]);
        return view('provider');
    }
}