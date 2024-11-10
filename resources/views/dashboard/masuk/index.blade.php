@extends('dashboard.layouts.main')
@section('title', 'Masuk')
@section('navAdm', 'active')

@section('content')

@if(session('pesan'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        {{ session('pesan') }}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
@endif

<a href="/dashboard-masuk/create" class="btn btn-secondary mb-3" >Tambah Barang Masuk</a>

<!-- Adding custom table style -->
<div class="card col-span-2 xl:col-span-1">
    <div class="card-header">Barang Masuk</div>

<table class="table table-bordered">
    <thead>
        <tr class="text-center">
            <th>No</th>
            <th>Nama Barang</th>
            <th>Jumlah</th>
            <th>Tanggal Masuk</th>
            <th>Supplier</th>
            <th>Aksi</th>
        </tr>
    </thead>

        @foreach($masuks as $masuk)
        <tr>
            <td>{{ $masuks->firstItem() + $loop->index }}</td>
            <td>{{ $masuk->barang->nama_barang }}</td>
            <td>{{ $masuk->jumlah }}</td>
            <td>{{ $masuk->tanggal_masuk }}</td>
            <td>{{ $masuk->supplier->nama_supplier }}</td>
            <td class="text-center">
                <a href="/dashboard-masuk/{{ $masuk->id }}/edit" title="Edit Data" class="btn btn-warning btn-sm me-2"><i class="bi bi-pencil-square"></i> Edit</a>
                <form action="/dashboard-masuk/{{ $masuk->id }}" method="post" class="d-inline">
                    @method('DELETE')
                    @csrf
                    <button title="Hapus Data" class="btn btn-danger btn-sm" onclick="return confirm('Apakah anda yakin menghapus data ini?')"><i class="bi bi-trash"></i> Hapus</button>
                </form>
            </td    >
        </tr>
        @endforeach

</table>
</div>

<div class="d-flex justify-content-center">
    {{ $masuks->links() }}
</div>
@endsection


