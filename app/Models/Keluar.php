<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Keluar extends Model
{
    /** @use HasFactory<\Database\Factories\KeluarFactory> */
    use HasFactory;
    protected $fillable = ['barang_id','jumlah','tanggal_keluar','tujuan'];

    public function barang(){
        return $this->belongsTo(Barang::class);
    }

}