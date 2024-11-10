@extends('dashboard.layouts.main')
@section('title', 'Lokasi')
@section('navAdm', 'active')

@section('content')

@if(session('pesan'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        {{ session('pesan') }}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
@endif

<a href="/dashboard-lokasi/create" class="btn btn-secondary mb-3">Tambah Lokasi</a>

<!-- Adding custom table style -->
<div class="card col-span-2 xl:col-span-1">
    <div class="card-header">Lokasi</div>

<table class="table table-bordered">
    <thead>
        <tr class="text-center">
            <th>No</th>
            <th>Nama Lokasi</th>
            <th>Alamat</th>
            <th>Aksi</th>
        </tr>
    </thead>

        @foreach($lokasis as $lokasi)
        <tr>
            <td>{{ $lokasis->firstItem() + $loop->index }}</td>
            <td>{{ $lokasi->nama_lokasi }}</td>
            <td class="text-wrap">{{ $lokasi->alamat }}</td>
            <td class="text-center">
                <a href="/dashboard-lokasi/{{ $lokasi->id }}/edit" title="Edit Data" class="btn btn-warning btn-sm me-2"><i class="bi bi-pencil-square"></i> Edit</a>
                <form action="/dashboard-lokasi/{{ $lokasi->id }}" method="post" class="d-inline">
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
    {{ $lokasis->links() }}
</div>
@endsection


