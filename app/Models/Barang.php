<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Barang extends Model
{
    /** @use HasFactory<\Database\Factories\ProdukFactory> */
    use HasFactory;
    protected $fillable = ['kategori_id','kode_barang','nama_barang','deskripsi','lokasi_id','harga_jual'];

    public function barang(){
        return $this->belongsTo(Barang::class);
    }
    public function kategori()
    {
        return $this->belongsTo(Kategori::class);
    }
    public function lokasi(){
        return $this->belongsTo(Lokasi::class);
    }


}