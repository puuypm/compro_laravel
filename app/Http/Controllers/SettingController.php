<?php

namespace App\Http\Controllers;

use App\Models\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;


class SettingController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $datas = Setting::get();
        $title = "Data Setting";
        return view('setting.index', compact('datas', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $title = "Tambah Setting";
        return view('setting.create', compact('title'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $pp = $request->file('profile_picture');
        $ppCustom = time() . "_" . $pp->getClientOriginalName();
        $path = 'uploads';
        $pp->move($path, $ppCustom);

        Setting::create([
            'profile_picture' => $ppCustom,
        ]);

        return back();
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        // select * from tbluser where id = id
        $edit = Setting::find($id);
        $title = "Edit Data" . $edit->job;
        return view('setting.edit', compact('edit', 'title'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {

        Setting::where('id', $id)->update([
            'job' => $request->job,
            'instansi' => $request->instansi,
            'periodemasuk' => $request->periodemasuk,
            'periodekeluar' => $request->periodekeluar,
            'jobdescription' => $request->jobdescription,
        ]);

        return redirect()->to('admin/setting')->with('message', 'Experience berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Setting::where('id', $id)->delete();
        return redirect()->to('admin/setting')->with('message', 'Data berhasil dihapus');
    }
}
