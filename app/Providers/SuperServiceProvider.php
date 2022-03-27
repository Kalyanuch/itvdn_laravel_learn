<?php

namespace App\Providers;

use App\Components\SuperComponent;
use Illuminate\Support\ServiceProvider;

class SuperServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind(SuperComponent::class, function() {
            return new SuperComponent('intelligence');
        });
    }
}
