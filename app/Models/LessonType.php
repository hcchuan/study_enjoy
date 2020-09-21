<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Encore\Admin\Traits\AdminBuilder;
use Encore\Admin\Traits\ModelTree;
/**课程类型*/
class LessonType extends Model
{
    use ModelTree, AdminBuilder;
    protected $table = 'ifar_lesson_type';
    protected $fillable = ['pid', 'title', 'sort'];

    protected $with = [
        'parent'
    ];


    public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);
        $this->setParentColumn('pid');  // 父ID
        $this->setOrderColumn('sort'); // 排序
        $this->setTitleColumn('title'); // 标题
    }

    /**
     * 该分类的子分类
     */
    public function child()
    {
        return $this->hasMany(get_class($this), 'pid', $this->getKeyName());
    }

    /**
     * 该分类的父分类
     */
    public function parent()
    {
        return $this->hasOne(get_class($this), $this->getKeyName(), 'pid');
    }

}
