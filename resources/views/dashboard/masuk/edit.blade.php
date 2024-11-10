@extends('dashboard.layouts.main')

@section('content')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Edit Supplier</h1>
</div>

<div class="row">
    <div class="col-6">
        <form action="/dashboard-masuk/{{ $masuk->id }}" method="post" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="mb-3">
                <label for="barang" class="form-label">Nama Barang</label>
                <select class="form-select" name="barang_id" id="barang">
                    <option value="">--Pilih Barang--</option>
                    @foreach($barangs as $barang)
                        @if(old('barang_id', $masuk->barang_id) == $barang->id)
                            <option value="{{ $barang->id }}" selected>{{ $barang->nama_barang }}</option>
                        @else
                            <option value="{{ $barang->id }}">{{ $barang->nama_barang }}</option>
                        @endif
                    @endforeach
                </select>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Tanggal Masuk</label>
                <input type="date" class="form-control @error('tanggal_masuk') is-invalid @enderror"
                name="tanggal_masuk" id="tanggal_masuk" value="{{ old('tanggal_masuk', $masuk->tanggal_masuk) }}" placeholder="Tanggal Masuk">
                @error('tanggal_masuk')
                    <div class=invalid-feedback>
                        {{ $message }}
                    </div>
                @enderror
              </div>

              <div class="mb-3">
                <label for="jumlah" class="form-label">Jumlah</label>
                <input type="number" class="form-control @error('jumlah') is-invalid @enderror"
                name="jumlah" id="jumlah" value="{{ old('jumlah',$masuk->jumlah) }}" placeholder="Jumlah">
                @error('jumlah')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>
            <div class="mb-3">
                <label for="supplier" class="form-label">Nama Supplier</label>
                <select class="form-select" name="supplier_id" id="supplier">
                    <option value="">--Pilih Supplier--</option>
                    @foreach($suppliers as $supplier)
                        @if(old('supplier_id', $masuk->supplier_id) == $supplier->id)
                            <option value="{{ $supplier->id }}" selected>{{ $supplier->nama_supplier }}</option>
                        @else
                            <option value="{{ $supplier->id }}">{{ $supplier->nama_supplier }}</option>
                        @endif
                    @endforeach
                </select>
            </div>

            <button type="submit" class="btn btn-primary" style="background-color: #0B773D; border-color: #0B773D;">Update</button>
        </form>
    </div>
</div>
@endsection
