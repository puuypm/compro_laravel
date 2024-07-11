@extends('layouts.app')
@section('content')
    <div class="card">
        <div class="card-header">{{ $title }}</div>
        <div class="card-body">
            <form action="{{ route('admin.experience.store') }}" method="post">
                @csrf
                <div class="form-group mb-3">
                    <label for="">Pekerjaan</label>
                    <input type="text" name="job" placeholder="Masukkan Pekerjaan Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Instansi</label>
                    <input type="text" name="instansi" placeholder="Masukkan Nama Perusahaan Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Periode Masuk</label>
                    <input type="date" name="periodemasuk" placeholder="Masukkan Periode Masuk Anda"
                        class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Periode Keluar</label>
                    <input type="date" name="periodekeluar" placeholder="Masukkan Periode Keluar Anda"
                        class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Deskripsi Pekerjaan</label>
                    <textarea name="jobdescription" id="" cols="30" rows="10" class="form-control"></textarea>
                </div>
                <div class="form-group mb-3">
                    <input type="submit" class="btn btn-primary" value="Simpan">
                    <a href="{{ url()->previous() }}" class="btn btn-danger">Kembali</a>
                </div>
            </form>
        </div>
    </div>
@endsection
