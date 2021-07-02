<?php

namespace App\Http\Controllers;

use App\Models\Articles;
use Illuminate\Http\Request;
use Validator;

class ArticlesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view("articles");
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), ["title" => "required", "body" => "required"]);

        if ($validator->fails()) {
            return response(
                json_encode(
                    [
                        "title" => "Error",
                        "message" => "Please check all the fields.",
                        "icon" => "error",
                        "error" => $validator->errors()
                    ]
                ), 201);
        }

        $article = new Articles;
        $article->title = $request->title;
        $article->body = $request->body;
        $article->save();

        return response(json_encode(["title" => "Success", "message" => "Article successfully posted.", "icon" => "success"]), 200);
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id, Request $request)
    {
        if ($request->is('api/*')) {
            return response(json_encode(['message' => "User found", "user" => Articles::find($id)]), 200);
        } else {
            $data["article"] = Articles::find($id);
            return view('article', $data);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), ["title" => "required", "body" => "required"]);

        if ($validator->fails()) {
            return response(
                json_encode(
                    [
                        "title" => "Error",
                        "message" => "Please check all the fields.",
                        "icon" => "error",
                        "error" => $validator->errors()
                    ]
                ), 201);
        }

        $article = Articles::find($id);
        $article->title = $request->title;
        $article->body = $request->body;
        $article->save();

        return response(json_encode(["title" => "Success", "message" => "Article successfully updated.", "icon" => "success"]), 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Articles::find($id)->delete();
        return response(json_encode(["title" => "Success", "message" => "Article successfully deleted.", "icon" => "success"]), 200);
    }

    public function list()
    {
        return Articles::orderBy("created_at", "desc")->get()->toJson();;
    }
}
