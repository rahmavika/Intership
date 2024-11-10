@extends('dashboard.layouts.main')

@section('content')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Edit Barang Keluar</h1>
</div>

<div class="row">
    <div class="col-6">
        <form action="/dashboard-keluar/{{ $keluar->id }}" method="post" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="mb-3">
                <label for="barang" class="form-label">Nama Barang</label>
                <select class="form-select" name="barang_id" id="barang">
                    <option value="">--Pilih Barang--</option>
                    @foreach($barangs as $barang)
                        @if(old('barang_id', $keluar->barang_id) == $barang->id)
                            <option value="{{ $barang->id }}" selected>{{ $barang->nama_barang }}</option>
                        @else
                            <option value="{{ $barang->id }}">{{ $barang->nama_barang }}</option>
                        @endif
                    @endforeach
                </select>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Tanggal Keluar</label>
                <input type="date" class="form-control @error('tanggal_keluar') is-invalid @enderror"
                name="tanggal_keluar" id="tanggal_keluar" value="{{ old('tanggal_keluar', $keluar->tanggal_keluar) }}" placeholder="Tanggal Keluar">
                @error('tanggal_keluar')
                    <div class=invalid-feedback>
                        {{ $message }}
                    </div>
                @enderror
              </div>

              <div class="mb-3">
                <label for="jumlah" class="form-label">Jumlah</label>
                <input type="number" class="form-control @error('jumlah') is-invalid @enderror"
                name="jumlah" id="jumlah" value="{{ old('jumlah',$keluar->jumlah) }}" placeholder="Jumlah">
                @error('jumlah')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Tujuan</label>
                <textarea class="form-control @error('tujuan') is-invalid @enderror"
                          name="tujuan" id="tujuan" placeholder="Masukkan Tujuan">{{ old('tujuan', $keluar->tujuan) }}</textarea>
                @error('tujuan')
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
