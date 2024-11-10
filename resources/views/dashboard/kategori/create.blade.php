@extends('dashboard.layouts.main')

@section('content')
<h1></h1>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Input Data Kategori</h1>
  </div>
<div class="row">
  <div class="col-6">
  <form action="/dashboard-kategori" method="post" enctype="multipart/form-data">
    @csrf

    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Nama Kategori</label>
        <input type="text" class="form-control  @error('nama_kategori') is-invalid @enderror"
        name="nama_kategori" id="nama_kategori" value="{{ old('nama_kategori') }}" placeholder="Nama Kategori">
        @error('nama_kategori')
            <div class=invalid-feedback>
                {{ $message }}
            </div>
        @enderror
    </div>


      <button type="submit" class="btn btn-primary">Submit</button>
  </form>
  </div>
</div>
@endsection
