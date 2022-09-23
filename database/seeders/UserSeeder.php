<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert(
            [
                'name' => 'Mustafa',
                'address' => 'Agahi',
                'email' => 'Mustafa@ay.com',
                'phone'=> '+998 (90) 000-04-25 ',
                'password'=> Hash::make('12312434123')
            ]
            );
    }
}
