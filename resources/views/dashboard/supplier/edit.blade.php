@extends('dashboard.layouts.main')

@section('content')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Edit Supplier</h1>
</div>

<div class="row">
    <div class="col-6">
        <form action="/dashboard-supplier/{{ $supplier->id }}" method="post" enctype="multipart/form-data">
            @csrf
            @method('PUT')

            <div class="mb-3">
                <label for="nama_supplier" class="form-label">Nama Supplier</label>
                <input type="text" class="form-control @error('nama_supplier') is-invalid @enderror"
                       name="nama_supplier" id="nama_supplier"
                       value="{{ old('nama_supplier', $supplier->nama_supplier) }}"
                       placeholder="Nama Supplier">
                @error('nama_supplier')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Kontak</label>
                <input type="text" class="form-control @error('kontak') is-invalid @enderror"
                name="kontak" id="kontak" value="{{ old('kontak', $supplier->kontak) }}" placeholder="No Telepon">
                @error('kontak')
                    <div class=invalid-feedback>
                        {{ $message }}
                    </div>
                @enderror
              </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Alamat</label>
                <textarea class="form-control @error('alamat') is-invalid @enderror"
                          name="alamat" id="alamat" placeholder="Masukkan Alamat">{{ old('alamat', $supplier->alamat) }}</textarea>
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
