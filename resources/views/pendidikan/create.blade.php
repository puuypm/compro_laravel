@extends('layouts.app')
@section('content')
    <div class="card">
        <div class="card-header">{{ $title }}</div>
        <div class="card-body">
            <form action="{{ route('admin.pendidikan.store') }}" method="post">
                @csrf
                <div class="form-group mb-3">
                    <label for="">Nama Sekolah</label>
                    <input type="text" name="nama_sekolah" placeholder="Masukkan Nama Sekolah Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Nama Jurusan</label>
                    <input type="text" name="jurusan" placeholder="Masukkan Nama Jurusan Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Nama Fakultas</label>
                    <input type="text" name="fakultas" placeholder="Masukkan Nama Fakultas Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Tahun Masuk</label>
                    <input type="date" name="tahunmasuk" placeholder="Masukkan Tahun Masuk Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Tahun Keluar</label>
                    <input type="date" name="tahunkeluar" placeholder="Masukkan Tahun Keluar Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">GPA</label>
                    <input type="text" name="gpa" placeholder="Masukkan Nilai GPA Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <input type="submit" class="btn btn-primary" value="Simpan">
                    <a href="{{ url()->previous() }}" class="btn btn-danger">Kembali</a>
                </div>
            </form>
        </div>
    </div>
@endsection
