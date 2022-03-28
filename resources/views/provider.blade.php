@extends('layouts.app')

@section('content')
<h3>{{ Super::getName() }}</h3>
<p>{{ Super::getProperty() }}</p>
@endsection