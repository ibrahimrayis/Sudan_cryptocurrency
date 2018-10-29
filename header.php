<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
<title>SCc</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="css/animate.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/line-awesome.css">
<link rel="stylesheet" type="text/css" href="css/line-awesome-font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/jquery.mCustomScrollbar.min.css">
<link rel="stylesheet" type="text/css" href="lib/slick/slick.css">
<link rel="stylesheet" type="text/css" href="lib/slick/slick-theme.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/responsive.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
  <!-- nav -->
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <div class="navbar-header">
        
        <a class="navbar-brand" href="index.php">Sudan Cryptocurrncy Community</a>
      </div>
      <ul class="nav navbar-nav navbar-right">
        <?php if(is_auth()): ?>
        <li><a href="About/about.php">About us</a></li>
          <li><a href="projects.php">projects</a></li>
          <li><a href="Community.php?username=Community">Community news</a></li>
          <li><a href="home.php">Home</a></li>
          <li><a href="profile.php?username=<?php echo $_SESSION['user_username']; ?>">Profile</a></li>
          <li><a href="php/logout.php">Logout</a></li>

        <?php endif; ?>
      </ul>
    </div>
  </nav>
  <!-- ./nav -->