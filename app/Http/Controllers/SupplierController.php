<?php

namespace App\Http\Controllers;

use App\Models\Supplier;
use Illuminate\Http\Request;
use SNMP;

class SupplierController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $suppliers=\App\Models\Supplier::latest()->paginate(10);
        return view('dashboard.supplier.index', ['suppliers' => $suppliers]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.supplier.create',['suppliers' =>Supplier::all()]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'nama_supplier' => 'required|min:3',
            'kontak' => 'required',
            'alamat' => 'nullable',
         ]);

         //dd($validated);

         Supplier::create($validated);
         return redirect('/dashboard-supplier')->with('pesan', 'Data berhasil disimpan');
    }

    /**
     * Display the specified resource.
     */
    public function show(Supplier $supplier)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $supplier = Supplier::findOrFail($id);
        return view('dashboard.supplier.edit', compact('supplier'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validated = $request->validate([
            'nama_supplier' => 'required|min:3',
            'kontak' => 'required',
            'alamat' => 'nullable',
        ]);

        Supplier::where('id', $id)->update($validated);
        return redirect('dashboard-supplier')->with('pesan','Data Berhasil Diubah');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Supplier::destroy($id);
        return redirect('dashboard-supplier')->with('pesan', 'Data berhasil dihapus');
    }
}