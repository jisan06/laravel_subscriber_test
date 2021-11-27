<?php

namespace App\Http\Controllers;

use App\Interfaces\SubscriberInterface;
use Illuminate\Http\Request;

class SubscriberController extends Controller
{
    protected $subscriber;

    public function __construct(SubscriberInterface $subscriber)
    {
        $this->subscriber = $subscriber;
    }

    public function search(Request $request)
    {
        return $this->subscriber->search($request);
    }
}
