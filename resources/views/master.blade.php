<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-commerce</title>
    <!-- CSS only -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<!-- JavaScript Bundle with Popper -->

<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>




</head>
<body>
    {{View::make('header')}}
    @yield('content')
    {{View::make('footer')}}
</body>

<style>
    .custom-login{
        height: 500px;
        padding-top: 100px;
    }
    img.slider-img{
        height: 400px !important;
        
    }
    .custom-product{
        height: 600px;
    }
    .slider-text{
        background-color: #35443585 !important;
    }

    .trending-image{
        height: 100px;
    }
    .treining-item{
        float: left;
        width: 20%;
    }
    .trending-wrapper{
        margin: 30px;
    }
    .detail-img{
        height: 200px;
    }
    .cart-list-devider{
        border-bottom: 1px solid #ccc;
        margin-bottom: 20px;
        padding-bottom: 20px;

    }
    .search-box{
        width: 500px !important
    }
    /* Footer */
    @import url('https://fonts.googleapis.com/css?family=Poppins');

body {
    font-family: 'Poppins', sans-serif;
}

.search-text {
	margin-top: 50px;
	background-color: #7dabdb;
	padding-top: 60px;
	padding-bottom: 60px;
}
	
.search-text .input-search {
	height: 45px;
	width: 400px;
	padding-left: 20px;
    color: #333;
} 

.search-text .btn-search {
	background-color: #7dabdb;
	border: 1px solid #FFF;
	color :#FFF;
	padding: 11px 22px;
}

.search-text.btn-search:hover {
	background-color: #FFF;
	color: #7dabdb;
}

.copyright {
    background-color: #f0f0f0;
}

.copyright p {
   margin: 15px 0px;
}

footer{
	background-color:#222222;
	padding: 60px 0px;
}

footer .menu li a {
	color:#b1aca1;
	padding:10px;
	text-decoration:none;
}

footer .menu li a:hover {
	color:#7dabdb;
}

.fa.fa-facebook , 
.fa.fa-dropbox, 
.fa.fa-flickr , 
.fa.fa-github , 
.fa.fa-linkedin ,
.fa,fa-tumblr ,
.fa.fa-google-plus , 
.fa.fa-tumblr {
	color: #b1aca1;
	font-size: 20px;
	padding: 10px;
}

.fa.fa-facebook:hover, 
.fa.fa-dropbox:hover,
.fa.fa-flickr:hover,
.fa.fa-github:hover, 
.fa.fa-linkedin:hover,
.fa,fa-tumblr:hover,
.fa.fa-google-plus:hover, 
.fa.fa-tumblr:hover {
	color: #6794c2;
}
</style>
</html>