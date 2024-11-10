<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Support\Facades\Hash;


use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        $currentUserId = auth()->user()->id;
        $users = User::where('id', '!=', $currentUserId)
                     ->latest()
                     ->paginate(10); // Adjust the number of items per page as needed
        return view('dashboard.user.index', ['users' => $users]);
    }

    public function create()
    {
        $users = User::latest()->paginate(10);
        return view('dashboard.user.create', ['users' => $users]);
    }
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|min:3',
            'email' => 'required',
            'password' => 'required',
        ]);

        $validated['email_verified_at'] = now();

        User::create($validated);
        return redirect('/dashboard-user')->with('pesan', 'Data sudah berhasil disimpan');
    }
    public function edit(string $id)
    {
        $user = User::findOrFail($id);
        return view('dashboard.user.edit', ['user' => $user]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validated = $request->validate([
            'name' => 'required|min:3',
            'email' => 'required|email|unique:users,email,' . $id,
        ]);

        $user = User::find($id);
        $user->name = $validated['name'];
        $user->email = $validated['email'];

        if ($request->filled('password')) {
            $validatedPassword = $request->validate([
                'password' => 'nullable|min:4|confirmed',
            ]);
            $user->password = Hash::make($validatedPassword['password']);
        }

        $user->save();

        return redirect('/dashboard-user')->with('pesan', 'User updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        User::destroy($id);
        return redirect('/dashboard-user')->with('pesan', 'Data sudah berhasil dihapus');
    }

}