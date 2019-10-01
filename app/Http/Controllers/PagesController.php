<?php

namespace App\Http\Controllers;

class PagesController extends Controller
{
    public function index()
    {
        $title = 'Dobrodosli na sajt TV kuce!';

        return view('pages.index')->with('title', $title);
    }

    public function about()
    {
        $title = 'O nama';

        return view('pages.about')->with('title', $title);
    }

    public function services()
    {
        $data = array(
            'title' => 'Services',
            'services' => ['Serije', 'Filmovi', 'Vesti'],
        );

        return view('pages.services')->with($data);
    }
}
