@extends('dashboard.layouts.main')
@section('title', 'Kategori')
@section('navAdm', 'active')

@section('content')

@if(session('pesan'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        {{ session('pesan') }}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
@endif

<a href="/dashboard-kategori/create" class="btn btn-secondary mb-3">Tambah Kategori</a>

<!-- Adding custom table style -->
<div class="card col-span-2 xl:col-span-1">
    <div class="card-header">Kategori Produk</div>

<table class="table table-bordered">
    <thead>
        <tr class="text-center">
            <th>No</th>
            <th>Nama Kategori</th>
            <th>Aksi</th>
        </tr>
    </thead>

        @foreach($kategoris as $kategori)
        <tr>
            <td>{{ $kategoris->firstItem() + $loop->index }}</td>
            <td>{{ $kategori->nama_kategori }}</td>
            <td class="text-center">
                <a href="/dashboard-kategori/{{ $kategori->id }}/edit" title="Edit Data" class="btn btn-warning btn-sm me-2"><i class="bi bi-pencil-square"></i> Edit</a>
                <form action="/dashboard-kategori/{{ $kategori->id }}" method="post" class="d-inline">
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
    {{ $kategoris->links() }}
</div>
@endsection


