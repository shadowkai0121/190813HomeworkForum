<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        date_default_timezone_set('Asia/Taipei');
        // for ($i=0; $i < 20; $i++) { 
        //     DB::table('posts')->insert([
        //         'userID' => 1,
        //         'title' => str_random(20),
        //         'content' => str_random(200),
        //         'updated_at' => date("Y-m-d H:i:s")
        //     ]);
        // }

        DB::table('users')->insert([
            'name' => 'admin',
            'password' => bcrypt('admin')
        ]);
    }
}