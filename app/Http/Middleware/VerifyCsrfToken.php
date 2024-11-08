<?php

namespace App\Http\Middleware;

use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as Middleware;

class VerifyCsrfToken extends Middleware
{
    /**
     * The URIs that should be excluded from CSRF verification.
     *
     * @var array<int, string>
     */


    protected $except = [
        'http://127.0.0.1:8012/login',
        'http://127.0.0.1:8012/register',
        'http://127.0.0.1:8012/register-qrcode',
        'http://127.0.0.1:8012/register-qrcode/*',
        'http://127.0.0.1:8012/login-qrcode',
        'http://127.0.0.1:8012/login-qrcode/*',
        'http://127.0.0.1:8012/event-cart',
        'http://127.0.0.1:8012/event-cart/*',
    ];






}
