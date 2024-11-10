<?php

namespace App\Http\Controllers;

use App\Models\Kategori;
use Illuminate\Http\Request;

class KategoriController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $kategoris=\App\Models\Kategori::latest()->paginate(10);
        return view('dashboard.kategori.index', ['kategoris' => $kategoris]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.kategori.create',['kategoris' =>Kategori::all()]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'nama_kategori' => 'required|min:3',
         ]);


         Kategori::create($validated);
         return redirect('/dashboard-kategori')->with('pesan','Data Berhasil Disimpan');
    }

    /**
     * Display the specified resource.
     */
    public function show(Kategori $kategori)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $kategori =Kategori::findOrFail($id);
        return view('dashboard.kategori.edit', compact('kategori'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validated = $request->validate([
            'nama_kategori' => 'required|min:3',
        ]);


        Kategori::where('id', $id)->update($validated);
        return redirect('dashboard-kategori')->with('pesan','Data Berhasil Diubah');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Kategori::destroy($id);
        return redirect('dashboard-kategori')->with('pesan', 'Data berhasil dihapus');

   }
}