<?php

use Illuminate\Database\Seeder;

use App\Post;

class PostsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       $posts = factory(Post::class, 10)->create()
        ->each(function (){
            $post->userID = 1;
        }); 
    }
}