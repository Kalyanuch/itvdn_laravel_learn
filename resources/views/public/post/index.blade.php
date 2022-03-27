@extends('layouts.app')

@section('content')
<div class="container">
    <table class="table table-hover">
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Status</th>
                <th>Operations</th>
            </tr>
        </thead>
        <tbody>
        @if(count($posts))
        @foreach($posts as $post)
            <tr>
                <td>{{ $post->id }}</td>
                <td>{{ $post->title }}</td>
                <td>@if($post->published)<span class="bg-success">Published</span>@else<span class="bg-danger">Unpublished</span>@endif</td>
                <td></td>
            </tr>
        @endforeach
        @endif
        </tbody>
    </table>
</div>
@endsection