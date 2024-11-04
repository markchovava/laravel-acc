<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     * 
     *  
     */
    public function up(): void
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('role_level')->nullable();
            $table->string('name')->nullable();
            $table->longText('gender')->nullable();
            $table->string('who_join')->nullable();
            $table->string('website')->nullable();
            $table->string('email')->unique();
            $table->string('phone')->nullable();
            $table->longText('address')->nullable();
            $table->string('country')->nullable();
            $table->string('company_name')->nullable();
            $table->string('profession')->nullable();
            $table->string('code')->nullable();
            $table->string('password');
            $table->string('image')->nullable();
            $table->timestamp('email_verified_at')->nullable();
            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
