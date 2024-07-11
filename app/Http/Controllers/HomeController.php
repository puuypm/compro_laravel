<?php

namespace App\Http\Controllers;

use App\Models\Experience;
use App\Models\Pendidikan;
use App\Models\Profile;
use App\Models\Setting;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $profile = Profile::get()->last();
        $jobs = Experience::get();
        $nama_sekolahs = Pendidikan::get()->last();
        $nama_sekolahs2 = Pendidikan::get();
        $setting = Setting::first();
        return view('home.index', compact('profile', 'jobs', 'nama_sekolahs', 'nama_sekolahs2', 'setting'));
    }
}
