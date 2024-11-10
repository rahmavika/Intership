<?php

namespace App\Http\Controllers;

use App\Models\Masuk;
use App\Models\Barang;
use App\Models\Supplier;
use Illuminate\Http\Request;

class MasukController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $masuks=\App\Models\Masuk::latest()->paginate(10);
        return view('dashboard.masuk.index', ['masuks' => $masuks]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.masuk.create', [
            'barangs' => Barang::all(),
            'suppliers' => Supplier::all()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'barang_id' => 'required',
            'tanggal_masuk' => 'required',
            'jumlah' => 'required|integer|min:1',
            'supplier_id' => 'required',

         ]);

         //dd($validated);

         Masuk::create($validated);
         return redirect('/dashboard-masuk')->with('pesan','Data Berhasil Disimpan');
    }

    /**
     * Display the specified resource.
     */
    public function show(Masuk $masuk)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $barangs = Barang::all();
        $suppliers = Supplier::all();
        $masuk = Masuk::find($id);
        return view('dashboard.masuk.edit', compact('barangs','suppliers','masuk'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validated = $request->validate([
            'barang_id' => 'required',
            'tanggal_masuk' => 'required',
            'jumlah' => 'required|integer|min:1',
            'supplier_id' => 'required',

         ]);

         Masuk::where('id', $id)->update($validated);
         return redirect('dashboard-masuk')->with('pesan','Data Berhasil Diubah');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Masuk::destroy($id);
        return redirect('dashboard-masuk')->with('pesan','Data Berhasil Dihapus');
    }
}