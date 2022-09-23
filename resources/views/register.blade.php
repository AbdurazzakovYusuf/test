@extends('master')
@section("content")
<div class="container custom-login">
    <div class="row">
        <div class="col-sm-4 col-sm-offset-4">
        <form action="register" method="POST">
        @csrf
        <div class="form-group">
    <label for="exampleInputEmail1">User name</label>
    <input type="text" name="name" class="form-control" id="exampleInputEmail1" placeholder="User Name">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">User's Address</label>
    <input type="text" name="address" class="form-control" id="exampleInputEmail1" placeholder="User's Address">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">User's Phone Number</label>
    <input type="tel" name="phone" class="form-control" id="exampleInputEmail1" placeholder="User's Phone Number">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">User's birth date</label>
    <input type="date" name="age" class="form-control" id="exampleInputEmail1" >
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Country</label>
    <input type="country" name="country" class="form-control" id="exampleInputEmail1">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Region</label>
    <input type="text" name="region" class="form-control" id="exampleInputEmail1" >
  </div>
  <div class="form-group">
    <label for="exampleInputPassword">Password</label>
    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  <button type="submit" class="btn btn-default">Register</button>
</form><br><br>
        </div>
    </div>
</div>
@endsection