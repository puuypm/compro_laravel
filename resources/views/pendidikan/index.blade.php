@extends('layouts.app')
@section('content')
    <div class="card">
        <div class="card-header">{{ $title }}</div>
        <div class="card-body">
            <div align="right" class="mb-3">
                <a href="{{ route('admin.pendidikan.create') }}" class="btn btn-primary">Tambah Pendidikan</a>
            </div>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama Sekolah</th>
                            <th>Nama Jurusan</th>
                            <th>Nama Fakultas</th>
                            <th>Tahun Masuk</th>
                            <th>Tahun Keluar</th>
                            <th>GPA</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $no = 1;
                        @endphp
                        @foreach ($datas as $data)
                            <tr>
                                <td>{{ $no++ }}</td>
                                <td>{{ $data->nama_sekolah }}</td>
                                <td>{{ $data->jurusan }}</td>
                                <td>{{ $data->fakultas }}</td>
                                <td>{{ $data->tahunmasuk }}</td>
                                <td>{{ $data->tahunkeluar }}</td>
                                <td>{{ $data->gpa }}</td>
                                <td>
                                    <a href="{{ route('admin.pendidikan.edit', $data->id) }}"
                                        class="btn btn-success btn-sm">Edit</a>

                                    <form method="POST" action="{{ route('admin.pendidikan.destroy', $data->id) }}"
                                        class="d-inline">
                                        @csrf
                                        <input type="hidden" name="_method" value="DELETE">
                                        <button class="btn btn-danger btn-sm" type="submit">Hapus</button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>

            </div>
        </div>
    </div>
@endsection
