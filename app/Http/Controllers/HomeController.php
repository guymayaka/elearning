<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\ArticlesCategory;
use App\Models\Course;
use App\Models\Message;
use App\Models\Publication;
use App\Models\Response;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
       $courses = Course::orderBy('id', 'desc')->paginate(6);
       return view('elearning.index', compact('courses'));
    }
}
