<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    /** @use HasFactory<\Database\Factories\SupplierFactory> */
    use HasFactory;
    protected $fillable = ['nama_supplier','kontak','alamat'];

    public function supplier(){
        return $this->belongsTo(Supplier::class);
    }
}