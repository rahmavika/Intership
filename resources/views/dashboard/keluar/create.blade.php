@extends('dashboard.layouts.main')

@section('content')
<h1></h1>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Input Barang Keluar</h1>
  </div>
<div class="row">
  <div class="col-6">
  <form action="/dashboard-keluar" method="post" enctype="multipart/form-data">
    @csrf

    <div class="mb-3">
        <label for="barang" class="form-label">Nama Barang</label>
        <select class="form-select" name="barang_id" id="barang">
            <option value="">--Pilih Barang--</option>
            @foreach($barangs as $barang)
                <option value="{{ $barang->id }}">{{ $barang->nama_barang }}</option>
            @endforeach
        </select>
    </div>
    <div class="mb-3">
        <label for="jumlah" class="form-label">Jumlah</label>
        <input type="number" class="form-control @error('jumlah') is-invalid @enderror"
        name="jumlah" id="jumlah" value="{{ old('jumlah') }}" placeholder="Jumlah">
        @error('jumlah')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
        @enderror
    </div>
    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Tanggal Keluar</label>
        <input type="date" class="form-control @error('tanggal_keluar') is-invalid @enderror"
        name="tanggal_keluar" id="tanggal_keluar" value="{{ old('tanggal_keluar') }}" placeholder="Tgl Masuk">
        @error('tanggal_keluar')
            <div class=invalid-feedback>
                {{ $message }}
            </div>
        @enderror
      </div>
      <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Tujuan</label>
        <textarea class="form-control @error('tujuan') is-invalid @enderror"
                  name="tujuan" id="tujuan" placeholder="Masukkan Tujuan">{{ old('tujuan') }}</textarea>
        @error('tujuan')
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
