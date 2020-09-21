<?php

namespace App\Admin\Controllers;

use App\Models\Lesson;
use App\Models\LessonType;
use App\Models\Member;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class LessonController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\Models\Lesson';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Lesson());

        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('lesson_type', __('Lesson type'));
        $grid->model()->orderBy('id','desc');//自定义排序
        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Lesson::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('short_name', __('Short name'));
        $show->field('paper_title', __('Paper title'));
        $show->field('teacher_id', __('Teacher id'));
        $show->field('teacher_name', __('Teacher name'));
        $show->field('channel_id', __('Channel id'));
        $show->field('small_img', __('Small img'));
        $show->field('big_img', __('Big img'));
        $show->field('synopsis', __('Synopsis'));
        $show->field('price', __('Price'));
        $show->field('market_price', __('Market price'));
        $show->field('sale_num', __('Sale num'));
        $show->field('tag', __('Tag'));
        $show->field('lesson_desc', __('Lesson desc'));
        $show->field('is_recommend', __('Is recommend'));
        $show->field('problem_num', __('Problem num'));
        $show->field('lesson_num', __('Lesson num'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));
        $show->field('status', __('Status'));
        $show->field('sort', __('Sort'));
        $show->field('preknowledge', __('Preknowledge'));
        $show->field('video_duration', __('Video duration'));
        $show->field('video_duration_num', __('Video duration num'));
        $show->field('video_url', __('Video url'));
        $show->field('lesson_type_name', __('Lesson type name'));
        $show->field('lesson_type', __('Lesson type'));
        $show->field('pid', __('Pid'));
        $show->field('node_deep', __('Node deep'));
        $show->field('sort_txt', __('Sort txt'));
        $show->field('video_file_size', __('Video file size'));
        $show->field('video_file_name', __('Video file name'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Lesson());

        $_lesson_type_list=LessonType::where('pid','=',0)->get(['id','title'])->toArray();
        $lesson_type_list=[];
        foreach ($_lesson_type_list as $item){
            $lesson_type_list[$item["id"]]=$item["title"];
        }
        //单选下拉菜单
        //$form->select('lesson_type','课程类型')->options($lesson_type_list);

        $form->text('name', __('Name'));
        $form->textarea('lesson_desc', __('Lesson desc'));
        $form->textarea('preknowledge', __('Preknowledge'));
        $form->text('video_duration', __('Video duration'));

        //load方法是框架自带的，定义在\vendor\encore\laravel-admin\src\Form\Field\Select.php文件中，loadOne是自己写的，在后面会给出代码district为自己定义的方法，lesson_type_2是根据城市的变化而变化的下拉列表框名称
        $form->select('lesson_type_1','一级类别')->options($lesson_type_list)->load('lesson_type_2', 'district')->loadOne('lesson_type_2', 'district');
        $form->select('lesson_type_2','二级类别')->options($lesson_type_list)->load('lesson_type', 'district')->loadOne('lesson_type', 'district');
        $form->select('lesson_type','三级类别')->options(array(0 =>'请选择三级类别'));

        //如果需要更多级则根据需要继续添加即可......

        //设置提交时需要排除的字段
        $form->ignore(['lesson_type_1','lesson_type_2']);

        return $form;

    }

    /**
    http://study_enjoy.local.com/admin/lesson_type/156/district
    使用Request类要加命名空间：use Illuminate\Http\Request;
     */
    public function district(Request $request)
    {
        $pid = $request->get('q');
        //LessonType是自己的Model
        if(empty($pid))
        {
            $list = [];
        }
        else
        {
            $list = LessonType::where(['pid' => $pid])->get(['id', DB::raw('title as text')]);
        }

        $arr=[];
        foreach ($list as $key => $value) {
            $arr[] = array("id" => $value->id, "text" => $value->text);
        }
        return $arr;//返回数组到地区的option
    }
}
