<?php

namespace App\Http\Controllers;

//use App\Components\SuperComponent;
use App\Contracts\SuperContract;
use Kolya\Meta\Meta;

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

    public function testContract(SuperContract $component)
    {
        return $component->getName();
    }

    public function testPackage()
    {
        return Meta::getPropertyValue();
    }
}