@extends('dashboard.layouts.main')

@section('content')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Edit Lokasi</h1>
</div>

<div class="row">
    <div class="col-6">
        <form action="/dashboard-barang/{{ $barang->id }}" method="post" enctype="multipart/form-data">
            @csrf
            @method('PUT')

            <div class="mb-3">
                <label for="kategori" class="form-label">Kategori</label>
                <select class="form-select" name="kategori_id" id="kategori">
                    <option value="">--Pilih Kategori--</option>
                    @foreach($kategoris as $kategori)
                        @if(old('kategori_id', $barang->kategori_id) == $kategori->id)
                            <option value="{{ $kategori->id }}" selected>{{ $kategori->nama_kategori }}</option>
                        @else
                            <option value="{{ $kategori->id }}">{{ $kategori->nama_kategori }}</option>
                        @endif
                    @endforeach
                </select>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Kode Barang</label>
                <input type="text" class="form-control @error('kode_barang') is-invalid @enderror"
                name="kode_barang" id="kode_barang" value="{{ old('kode_barang', $barang->kode_barang) }}" placeholder="Kode Barang" readonly>
                @error('kode_barang')
                    <div class=invalid-feedback>
                        {{ $message }}
                    </div>
                @enderror
              </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Nama Barang</label>
                <input type="text" class="form-control  @error('nama_barang') is-invalid @enderror"
                name="nama_barang" id="nama_barang" value="{{ old('nama_barang', $barang->nama_barang) }}" placeholder="Nama Barang">
                @error('nama_barang')
                    <div class=invalid-feedback>
                        {{ $message }}
                    </div>
                @enderror
              </div>

            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Deskripsi</label>
                <textarea class="form-control @error('deskripsi') is-invalid @enderror"
                          name="deskripsi" id="deskripsi" placeholder="Masukkan Deskripsi">{{ old('deskripsi', $barang->deskripsi) }}</textarea>
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
                        @if(old('lokasi_id', $barang->lokasi_id) == $lokasi->id)
                            <option value="{{ $lokasi->id }}" selected>{{ $lokasi->nama_lokasi }}</option>
                        @else
                            <option value="{{ $lokasi->id }}">{{ $lokasi->nama_lokasi }}</option>
                        @endif
                    @endforeach
                </select>
            </div>
            <div class="mb-3">
                <label for="harga_jual" class="form-label">Harga Jual</label>
                <input type="number" step="0.01" class="form-control @error('harga_jual') is-invalid @enderror"
                name="harga_jual" id="harga_jual" value="{{ old('harga_jual', $barang->harga_jual) }}" placeholder="Harga Jual">
                @error('harga_jual')
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
