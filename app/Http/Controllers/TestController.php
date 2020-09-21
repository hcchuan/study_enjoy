<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Models\LessonType;
class TestController extends Controller
{
    /**http://study_enjoy.local.com/test/m1
     */
    public function m1()
    {
        $query = LessonType::where('status', 1);
        $query->limit(10);
        $query->whereRaw('id>1');
        $query->whereRaw('id<5 and status!=0');
        $result = $query->orderBy('sort', 'asc')
            ->orderBy('id', 'desc')
            ->get()->toArray();//如果要指定查询字段，则在get()中指定，如get(['id','title as name'])

        exit(json_encode($result));

    }
}
