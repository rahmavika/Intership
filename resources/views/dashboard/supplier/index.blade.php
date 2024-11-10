@extends('dashboard.layouts.main')
@section('title', 'Supplier')
@section('navAdm', 'active')

@section('content')


@if(session('pesan'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        {{ session('pesan') }}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
@endif

<a href="/dashboard-supplier/create" class="btn btn-secondary mb-3">Tambah Supplier</a>

<!-- Adding custom table style -->
<div class="card col-span-2 xl:col-span-1">
    <div class="card-header">Supplier</div>

<table class="table table-bordered">
    <thead>
        <tr class="text-center">
            <th>No</th>
            <th>Nama Supplier</th>
            <th>Kontak</th>
            <th>Alamat</th>
            <th>Aksi</th>
        </tr>
    </thead>

        @foreach($suppliers as $supplier)
        <tr>
            <td>{{ $suppliers->firstItem() + $loop->index }}</td>
            <td>{{ $supplier->nama_supplier }}</td>
            <td>{{ $supplier->kontak }}</td>
            <td class="text-wrap">{{ $supplier->alamat }}</td>
            <td class="text-center">
                <a href="/dashboard-supplier/{{ $supplier->id }}/edit" title="Edit Data" class="btn btn-warning btn-sm me-2"><i class="bi bi-pencil-square"></i> Edit</a>
                <form action="/dashboard-supplier/{{ $supplier->id }}" method="post" class="d-inline">
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
    {{ $suppliers->links() }}
</div>
@endsection


