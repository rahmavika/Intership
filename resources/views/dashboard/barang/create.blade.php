@extends('dashboard.layouts.main')

@section('content')
<h1></h1>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Input Barang</h1>
  </div>
<div class="row">
  <div class="col-6">
  <form action="/dashboard-barang" method="post" enctype="multipart/form-data">
    @csrf

    <div class="mb-3">
        <label for="kategori" class="form-label">Kategori</label>
        <select class="form-select" name="kategori_id" id="kategori">
            <option value="">--Pilih Kategori--</option>
            @foreach($kategoris as $kategori)
                <option value="{{ $kategori->id }}">{{ $kategori->nama_kategori }}</option>
            @endforeach
        </select>
    </div>
    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Kode Barang</label>
        <input type="kode_barang" class="form-control @error('kode_barang') is-invalid @enderror"
        name="kode_barang" id="kode_barang" value="{{ old('kode_barang') }}" placeholder="Kode Barang">
        @error('kode_barang')
            <div class=invalid-feedback>
                {{ $message }}
            </div>
        @enderror
      </div>
    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Nama Barang</label>
        <input type="text" class="form-control  @error('nama_barang') is-invalid @enderror"
        name="nama_barang" id="nama_barang" value="{{ old('nama_barang') }}" placeholder="Nama Barang">
        @error('nama_barang')
            <div class=invalid-feedback>
                {{ $message }}
            </div>
        @enderror
    </div>
    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Deskripsi</label>
        <textarea class="form-control @error('deskripsi') is-invalid @enderror"
                  name="deskripsi" id="deskripsi" placeholder="Masukkan Deskripsi">{{ old('deskripsi') }}</textarea>
        @error('deskripsi')
          <div class="invalid-feedback">
            {{ $message }}
          </div>
        @enderror
    </div>
    <div class="mb-3">
        <label for="lokasi" class="form-label">Lokasi</label>
        <select class="form-select" name="lokasi_id" id="lokasi">
            <option value="">--Pilih Lokasi--</option>
            @foreach($lokasis as $lokasi)
                <option value="{{ $lokasi->id }}">{{ $lokasi->nama_lokasi }}</option>
            @endforeach
        </select>
    </div>

    <div class="mb-3">
        <label for="harga_jual" class="form-label">Harga Jual</label>
        <input type="number" step="0.01" class="form-control @error('harga_jual') is-invalid @enderror"
        name="harga_jual" id="harga_jual" value="{{ old('harga_jual') }}" placeholder="Harga Jual">
        @error('harga_jual')
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
