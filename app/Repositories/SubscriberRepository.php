<?php

namespace App\Repositories;

use App\Interfaces\SubscriberInterface;
use App\Models\Segment;
use App\Models\Subscriber;
use Illuminate\Support\Facades\DB;


class SubscriberRepository implements SubscriberInterface
{
    protected $model;
    public function __construct(Subscriber $subscriber)
    {
        $this->model = $subscriber;
    }

    public function search($data){
        $segment = Segment::findOrFail($data->segment_id);
        $sql = 'SELECT * from subscribers where '.$segment->query;
        return DB::select($sql);
    }
}
