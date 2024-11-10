<?php

namespace App\Http\Controllers;

use App\Models\Kategori;
use App\Models\Lokasi;
use App\Models\Barang;
use GuzzleHttp\Handler\Proxy;
use Illuminate\Http\Request;

class BarangController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $barangs=\App\Models\Barang::latest()->paginate(10);
        return view('dashboard.barang.index', ['barangs' => $barangs]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.barang.create', [
            'kategoris' => Kategori::all(),
            'lokasis' => Lokasi::all()
        ]);

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'kategori_id' => 'required',
            'kode_barang' => 'required|unique:barangs',
            'nama_barang' => 'required|min:3',
            'deskripsi' => 'nullable',
            'lokasi_id' => 'required',
            'harga_jual' => 'required|numeric|min:0',
         ]);

         //dd($validated);

         Barang::create($validated);
         return redirect('/dashboard-barang')->with('pesan','Data Berhasil Disimpan');
    }

    /**
     * Display the specified resource.
     */
    public function show(Barang $barang)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $kategoris = Kategori::all();
        $lokasis = Lokasi::all();
        $barang = Barang::find($id);
        return view('dashboard.barang.edit', compact('kategoris','lokasis','barang'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validated = $request->validate([
            'kategori_id' => 'required',
            'kode_barang' => 'required|unique:barangs,kode_barang,' . $id,
            'nama_barang' => 'required|min:3',
            'deskripsi' => 'nullable',
            'lokasi_id' => 'required',
            'harga_jual' => 'required|numeric|min:0',
        ]);

        Barang::where('id', $id)->update($validated);
        return redirect('dashboard-barang')->with('pesan', 'Data Berhasil Diubah');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Barang::destroy($id);
        return redirect('dashboard-barang')->with('pesan','Data Berhasil Dihapus');
    }
}