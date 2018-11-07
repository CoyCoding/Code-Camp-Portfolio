<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FCCProfile.aspx.cs" Inherits="FreeCodeCampPlayGround.FCCProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content/profile.css" />
    <script src="Scripts/jquery-3.3.1.js"></script>
    <script src="Scripts/SmoothSlide.js"></script>
    <script>


    </script>
</head>
<body>
<nav>
  <ul id='navbar' class='navbar'>
    <li><a href="#welcome-section">About</a></li>
    <li><a href="#projects">Work</a></li>
    <li><a href="#contact">Contact</a></li>
  </ul>
</nav>

<div id="welcome-section" class="intro">

  <h1>FreeCodeCamp Protfolio Site</h1>

</div>

<div id="projects" class="work">
    <div></div>
  <h2 class="work-header">These are some of my projects..</h2>
  <a href="https://codepen.io/anon/pen/QBBYbO" target="_blank" class="project">
    <img class="project-pic" src="https://steamcdn-a.akamaihd.net/steam/apps/742300/header.jpg?t=1541093532" alt="megaman project picture"/>
    <div class="project-title">Mega Page</div>
  </a>
  <a href="http://www.fluffygaming.pro/" target="_blank" class="project">
    <img class="project-pic" src="https://static-cdn.jtvnw.net/s3_vods/4766f1ba4af63dba08b5_fluffytoycoy_28344317856_840190030/thumb/thumb0-640x360.jpg" alt="fluffy site project picture"/>
    <div class="project-title">Fluffy Gaming</div>
  </a>
  <a href="https://github.com/fluffytoycoy/MyMedia-Crud" target="_blank" class="project">
    <img class="project-pic" src="https://lajoyalink.com/wp-content/uploads/2018/03/Movie.jpg" alt="generic movie picture"/>
    <div class="project-title">Movie C.R.U.D.</div>
  </a>


</div>
<div id="contact" class="contact">
  <div class="header">
    <h1>Let's work together...</h1>
    <p>How do you take your coffee?</p>
  </div>
  <a href="https://facebook.com/" target="_blank" class="contact-details">Facebook</a>
  <a id='profile-link' href="https://github.com/fluffytoycoy" target="_blank" class="contact-details">GitHub</a>
  <a href="https://twitter.com/fluffytoycoy" target="_blank" class="contact-details">Twitter</a>
  <a href="#" class="contact-details">E-Mail</a>
  <a href="#" class="contact-details">Call me</a>
</div>
<footer>**This is just a fake portfolio.. All the projects and contact details given are not real..or are they?
  <p>&copy; Created for <a href="https://www.freecodecamp.com/" target="_blank">FreeCodeCamp</a></p>
</footer>
       
</body>
</html>
