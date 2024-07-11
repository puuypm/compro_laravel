<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LatihanController extends Controller
{

    public function index()
    {
        return view('latihan/index');
    }

    public function create()
    {
        return "halo create";
    }

    public function edit()
    {
        return ":halo";
    }

    public function show()
    {
    }

    public function delete()
    {
    }

    public function penjumlahan()
    {
        $jumlah = 0;
        return view('latihan.penjumlahan', compact('jumlah'));
    }

    public function pengurangan()
    {
        $data['jumlah'] = 0;

        return view('latihan.pengurangan', $data);
    }

    public function perkalian()
    {
        return view('latihan.perkalian');
    }

    public function pembagian()
    {
        return view('latihan.pembagian');
    }

    public function storePenjumlahan(Request $request)
    {
        $angka1 = $request->angka1;
        $angka2 = $request->angka2;

        $jumlah = $angka1 + $angka2;

        return view('latihan.penjumlahan', compact('jumlah'));
        //return redirect()->route('Penjumlahan')->with(['jumlah',$jumlah]);
    }

    public function storePengurangan(Request $request)
    {
        $angka1 = $request->angka1;
        $angka2 = $request->angka2;

        $kurang = $angka1 - $angka2;
        return $kurang;
    }

    public function storePerkalian(Request $request)
    {
        $angka1 = $request->angka1;
        $angka2 = $request->angka2;

        $kali = $angka1 * $angka2;
        return $kali;
    }

    public function storePembagian(Request $request)
    {
        $angka1 = $request->angka1;
        $angka2 = $request->angka2;

        $bagi = $angka1 / $angka2;
        return $bagi;
    }
}
