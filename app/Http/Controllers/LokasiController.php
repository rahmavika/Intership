<?php

namespace App\Http\Controllers;

use App\Models\Lokasi;
use Illuminate\Http\Request;
use Illuminate\Support\Stringable;
use PhpParser\Node\Scalar\String_;

class LokasiController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $lokasis=\App\Models\Lokasi::latest()->paginate(10);
        return view('dashboard.lokasi.index', ['lokasis' => $lokasis]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.lokasi.create',['lokasis' =>Lokasi::all()]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'nama_lokasi' => 'required|min:3',
            'alamat' => 'nullable',
         ]);

         //dd($validated);

         Lokasi::create($validated);
         return redirect('/dashboard-lokasi')->with('pesan', 'Data berhasil disimpan');
    }

    /**
     * Display the specified resource.
     */
    public function show(Lokasi $lokasi)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(String $id)
    {
        $lokasi = Lokasi::findOrFail($id);
        return view('dashboard.lokasi.edit', compact('lokasi'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validated = $request->validate([
            'nama_lokasi' => 'required|min:3',
            'alamat' => 'nullable',
        ]);

        Lokasi::where('id', $id)->update($validated);
        return redirect('dashboard-lokasi')->with('pesan','Data Berhasil Diubah');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Lokasi::destroy($id);
        return redirect('dashboard-lokasi')->with('pesan', 'Data berhasil dihapus');
    }
}