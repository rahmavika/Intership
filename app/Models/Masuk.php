<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Masuk extends Model
{
    /** @use HasFactory<\Database\Factories\MasukFactory> */
    use HasFactory;
    protected $fillable = ['barang_id','jumlah','tanggal_masuk','supplier_id'];

    public function barang(){
        return $this->belongsTo(Barang::class);
    }
    public function supplier(){
        return $this->belongsTo(Supplier::class);
    }
}
