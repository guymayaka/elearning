<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Message;
use App\Models\Publication;
use Illuminate\Http\Request;

class SondageController extends Controller
{
    public function index(){
        $article = Message::orderBy('id', 'desc')->first();
        $lastArticles = Article::orderBy('id', 'desc')->where('published', 1)->paginate(10);
        $publications = Publication::orderBy('id', 'desc')->where('published', 1)->limit(8)->get();
        $otherArticles = Article::inRandomOrder()->where('published', 1)->limit(4)->get();
        return view('elearning.sondage', compact('article', 'lastArticles', 'publications', 'otherArticles'));
    }
}
