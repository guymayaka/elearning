<?php

namespace App\Http\Controllers;

use App\Models\Article;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function search(Request $request){
        $keyword = $request->input('keyword');
        $articles = Article::where('title', 'like', '%'.$keyword.'%')->where('published', 1)->paginate(12);
        return view('elearning.seach-results', compact('keyword', 'articles'));
    }
}
