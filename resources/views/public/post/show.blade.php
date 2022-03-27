@extends('layouts.app')

@section('content')
<div class="container">
    <h2>{{ $post->title }}</h2>
    <div>{{ $post->body }}</div>
</div>
@endsection