@extends('dashboard.layouts.main')

@section('content')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Edit Lokasi</h1>
</div>

<div class="row">
    <div class="col-6">
        <form action="/dashboard-lokasi/{{ $lokasi->id }}" method="post" enctype="multipart/form-data">
            @csrf
            @method('PUT')

            <div class="mb-3">
                <label for="nama_lokasi" class="form-label">Nama Lokasi</label>
                <input type="text" class="form-control @error('nama_lokasi') is-invalid @enderror"
                       name="nama_lokasi" id="nama_lokasi"
                       value="{{ old('nama_lokasi', $lokasi->nama_lokasi) }}"
                       placeholder="Nama Lokasi">
                @error('nama_lokasi')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Alamat</label>
                <textarea class="form-control @error('alamat') is-invalid @enderror"
                          name="alamat" id="alamat" placeholder="Masukkan Alamat">{{ old('alamat', $lokasi->alamat) }}</textarea>
                @error('alamat')
                  <div class="invalid-feedback">
                    {{ $message }}
                  </div>
                @enderror
              </div>

            <button type="submit" class="btn btn-primary" style="background-color: #0B773D; border-color: #0B773D;">Update</button>
        </form>
    </div>
</div>
@endsection
