<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>${project.descriptor} - <?= $PageTitle ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="<?= $PagePrefix ?>css/bootstrap.min.css" rel="stylesheet">
    <link href="<?= $PagePrefix ?>css/jumbotron.css" rel="stylesheet">
    <link href="<?= $PagePrefix ?>css/style.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    
  </head>

  <body>
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="<?= $PagePrefix ?>">${project.descriptor}</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="<?= $PagePrefix ?>">Home</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Entities <b class="caret"></b></a>
              <ul class="dropdown-menu"><# entities.forEach(function (entity) { #>
                <li><a href="<?= $PagePrefix ?>${entity.name}">${entity.setdescriptor}</a></li><# }); #>              
              </ul>
            </li>
            <li><a href="<?= $PagePrefix ?>about">About</a></li>
            <li><a href="<?= $PagePrefix ?>contact">Contact</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

    <div class="container">
        <h1><?= $PageTitle ?></h1>
    
