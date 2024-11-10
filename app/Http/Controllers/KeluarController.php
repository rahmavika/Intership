<?php

namespace App\Http\Controllers;

use App\Models\Keluar;
use App\Models\Barang;
use App\Models\Supplier;
use Illuminate\Http\Request;

class KeluarController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $keluars=\App\Models\Keluar::latest()->paginate(10);
        return view('dashboard.keluar.index', ['keluars' => $keluars]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.keluar.create', [
            'barangs' => Barang::all(),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'barang_id' => 'required',
            'tanggal_keluar' => 'required',
            'jumlah' => 'required|integer|min:1',
            'tujuan' => 'nullable',

         ]);

         //dd($validated);

         Keluar::create($validated);
         return redirect('/dashboard-keluar')->with('pesan','Data Berhasil Disimpan');
    }

    /**
     * Display the specified resource.
     */
    public function show(Keluar $keluar)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $barangs = Barang::all();
        $keluar = Keluar::find($id);
        return view('dashboard.keluar.edit', compact('barangs','keluar'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validated = $request->validate([
            'barang_id' => 'required',
            'tanggal_keluar' => 'required',
            'jumlah' => 'required|integer|min:1',
            'tujuan' => 'nullable',

         ]);

         Keluar::where('id', $id)->update($validated);
         return redirect('dashboard-keluar')->with('pesan','Data Berhasil Diubah');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Keluar::destroy($id);
        return redirect('dashboard-keluar')->with('pesan','Data Berhasil Dihapus');
    }
}