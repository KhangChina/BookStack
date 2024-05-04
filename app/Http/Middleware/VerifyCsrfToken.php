<?php

namespace BookStack\Http\Middleware;

use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as Middleware;
use Closure;

class VerifyCsrfToken extends Middleware
{
    /**
     * Indicates whether the XSRF-TOKEN cookie should be set on the response.
     *
     * @var bool
     */
    protected $addHttpCookie = true;

    /**
     * The URIs that should be excluded from CSRF verification.
     *
     * @var array
     */
    protected $except = [
        'saml2/*',
    ];
    //Check domain call pass CSRF
    public function handle($request, Closure $next)
    {
        //call from portal
        if ($request->getHost() == 'localhost') {
            // skip CSRF check
            //  array_push($except, 'login');
            return $next($request);
        }
        return parent::handle($request, $next);
    }
}
