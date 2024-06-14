<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Contact;

class ContactController extends Controller
{
    public function index()
    {
        $contacts = Contact::with('category')->get();
        $categories = Category::all();
        return view('index', compact('contacts', 'categories'));
    }

    public function confirm(Request $request)
    {
        $contact = $request->only(['first_name', 'last_name', 'email','gender','tel', 'address','mansion','query-type','content']);
        return view('confirm', compact('contact'));
    }

    public function store(request $request)
    {
        $contact = $request->only(['category_id', 'content']);
        Contact::create($contact);
        
        $todo = $request->only(['content']);
        Todo::create($todo);
        return view('thanks');
    }    
}
