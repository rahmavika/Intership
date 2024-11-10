@extends('dashboard.layouts.main')

@section('content')
<h1></h1>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Input Lokasi</h1>
  </div>
<div class="row">
  <div class="col-6">
  <form action="/dashboard-lokasi" method="post" enctype="multipart/form-data">
    @csrf

    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Nama Lokasi</label>
        <input type="text" class="form-control  @error('nama_lokasi') is-invalid @enderror"
        name="nama_lokasi" id="nama_lokasi" value="{{ old('nama_lokasi') }}" placeholder="Nama Lokasi">
        @error('nama_lokasi')
            <div class=invalid-feedback>
                {{ $message }}
            </div>
        @enderror
    </div>
    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Alamat</label>
        <textarea class="form-control @error('alamat') is-invalid @enderror"
                  name="alamat" id="alamat" placeholder="Masukkan Alamat">{{ old('alamat') }}</textarea>
        @error('alamat')
          <div class="invalid-feedback">
            {{ $message }}
          </div>
        @enderror
    </div>


      <button type="submit" class="btn btn-primary">Submit</button>
  </form>
  </div>
</div>
@endsection
