@extends('layouts.app')
@section('content')
    <div class="card">
        <div class="card-header">{{ $title }}</div>
        <div class="card-body">
            <form action="{{ route('admin.profile.update', $edit->id) }}" method="post">
                @csrf
                @method('PUT')
                <div class="form-group mb-3">
                    <label for="">Nama</label>
                    <input value="{{ $edit->name }}" type="text" name="name" placeholder="Masukkan Nama Lengkap Anda"
                        class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Email</label>
                    <input value="{{ $edit->email }}" type="email" name="email" placeholder="Masukkan Email Anda"
                        class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Nomor Telepon</label>
                    <input value="{{ $edit->phone }}" type="number" name="phone"
                        placeholder="Masukkan Nomor Telepon Anda" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="">Alamat</label>
                    <textarea name="address" id="" cols="30" rows="10" class="form-control" required>{{ $edit->address }}</textarea>
                </div>
                <div class="form-group mb-3">
                    <label for="">Deskripsi</label>
                    <textarea name="description" id="" cols="30" rows="10" class="form-control" required>{{ $edit->description }}</textarea>
                </div>
                <div class="form-group mb-3">
                    <label for="">Github</label>
                    <input value="{{ $edit->github }}" type="text" name="github_link"
                        placeholder="Masukkan URL Github Anda" class="form-control"></textarea>
                </div>
                <div class="form-group mb-3">
                    <label for="">LinkedIn</label>
                    <input value="{{ $edit->linkedin }}" type="text" name="linkedin_link"
                        placeholder="Masukkan URL LinkedIn Anda" class="form-control"></textarea>
                </div>
                <div class="form-group mb-3">
                    <label for="">Instagram</label>
                    <input value="{{ $edit->instagram }}" type="text" name="instagram_link"
                        placeholder="Masukkan URL Instagram Anda" class="form-control"></textarea>
                </div>
                <div class="form-group mb-3">
                    <label for="">Facebook</label>
                    <input value="{{ $edit->facebook }}" type="text" name="facebook_link"
                        placeholder="Masukkan URL Facebook Anda" class="form-control"></textarea>
                </div>
                <div class="form-group mb-3">
                    <input type="submit" class="btn btn-primary" value="Simpan">
                    <a href="{{ url()->previous() }}" class="btn btn-danger">Kembali</a>
                </div>
            </form>
        </div>
    </div>
@endsection
