<?php

namespace App\Http\Controllers;

use App\Models\Pendidikan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class PendidikanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $datas = Pendidikan::get();
        $title = "Data Pendidikan";
        return view('pendidikan.index', compact('datas', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $title = "Tambah Pendidikan";
        return view('pendidikan.create', compact('title'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        Pendidikan::create([
            'nama_sekolah' => $request->nama_sekolah,
            'jurusan' => $request->jurusan,
            'fakultas' => $request->fakultas,
            'tahunmasuk' => $request->tahunmasuk,
            'tahunkeluar' => $request->tahunkeluar,
            'gpa' => $request->gpa,
        ]);

        return redirect()->to('admin/pendidikan')->with('message', 'Data berhasil ditambah');
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
        $edit = Pendidikan::find($id);
        $title = "Edit Data" . $edit->nama_sekolah;
        return view('pendidikan.edit', compact('edit', 'title'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {

        Pendidikan::where('id', $id)->update([
            'nama_sekolah' => $request->nama_sekolah,
            'jurusan' => $request->jurusan,
            'fakultas' => $request->fakultas,
            'tahunmasuk' => $request->tahunmasuk,
            'tahunkeluar' => $request->tahunkeluar,
            'gpa' => $request->gpa,
        ]);

        return redirect()->to('admin/pendidikan')->with('message', 'Pendidikan berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Pendidikan::where('id', $id)->delete();
        return redirect()->to('admin/pendidikan')->with('message', 'Data berhasil dihapus');
    }
}
