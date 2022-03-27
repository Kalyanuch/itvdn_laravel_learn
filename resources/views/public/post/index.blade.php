@extends('layouts.app')

@section('content')
<div class="container">
    @include('partial.success')
    <a href="{{ route('post.create') }}" class="btn btn-default">Create new</a>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Status</th>
                <th>Operations</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
        @if(count($posts))
        @foreach($posts as $post)
            <tr>
                <td>{{ $post->id }}</td>
                <td><a href="{{ route('post.show', ['id' => $post->id]) }}">{{ $post->title }}</a></td>
                <td>@if($post->published)<span class="bg-success">Published</span>@else<span class="bg-danger">Unpublished</span>@endif</td>
                <td>
                    <a class="btn btn-default" href="{{ route('post.edit', ['id' => $post->id]) }}">Edit</a>
                    <a class="btn btn-danger" href="{{ route('post.destroy', ['id' => $post->id]) }}">Delete</a>
                </td>
                <td>
                    <form method="post" action="{{ route('post.destroy', ['id' => $post->id]) }}">
                        {{ csrf_field() }}
                        {{ method_field('delete') }}
                        <input type="submit" class="btn btn-danger" value="Delete" />
                    </form>
                </td>
            </tr>
        @endforeach
        @endif
        </tbody>
    </table>
</div>
@endsection