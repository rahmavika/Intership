@extends('dashboard.layouts.main')
@section('title', 'Data Barang')
@section('navAdm', 'active')

@section('content')


@if(session('pesan'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        {{ session('pesan') }}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
@endif

<a href="/dashboard-barang/create" class="btn btn-secondary mb-3">Tambah Barang</a>

<!-- Adding custom table style -->
<div class="card col-span-2 xl:col-span-1">
    <div class="card-header">Barang</div>

<table class="table table-bordered">
    <thead>
        <tr class="text-center">
            <th>No</th>
            <th>Kategori</th>
            <th>Kode Barang</th>
            <th>Nama Barang</th>
            <th>Deskripsi</th>
            <th>Lokasi</th>
            <th>Harga Jual</th>
            <th>Aksi</th>
        </tr>
    </thead>

        @foreach($barangs as $barang)
        <tr>
            <td>{{ $barangs->firstItem() + $loop->index }}</td>
            <td>{{ $barang->kategori->nama_kategori }}</td>
            <td>{{ $barang->kode_barang }}</td>
            <td>{{ $barang->nama_barang }}</td>
            <td>{{ $barang->deskripsi }}</td>
            <td>{{ $barang->lokasi->nama_lokasi }}</td>
            <td>{{ $barang->harga_jual }}</td>
            <td class="text-center">
                <a href="/dashboard-barang/{{ $barang->id }}/edit" title="Edit Data" class="btn btn-warning btn-sm me-2"><i class="bi bi-pencil-square"></i> Edit</a>
                <form action="/dashboard-barang/{{ $barang->id }}" method="post" class="d-inline">
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
    {{ $barangs->links() }}
</div>
@endsection


