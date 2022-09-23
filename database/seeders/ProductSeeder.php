<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('products')->insert([
            'name' => 'Play Station 4',
            'price' => '200$',
            'description' => 'OPTIMIZED FOR SERIES X|S
            Games built with the Xbox Series X|S development kit showcase significantly reduced load times and stunning visuals at up to 120FPS.',
            'category'=>'Console',
            'gallery' =>'https://assets.xboxservices.com/assets/7b/84/7b8435ef-3376-452b-b78d-e1e376eed4fb.png?n=117117117_Series-Purchase-Rotator-0_2_780x615.png'
           ]
            );
    }
}
