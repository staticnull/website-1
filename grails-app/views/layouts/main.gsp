<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>
        <g:layoutTitle default="GR8Conf US"/>
    </title>
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700">
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/icon?family=Material+Icons">
    <asset:stylesheet src="application.css"/>
    <asset:link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
    <asset:javascript src="jquery/dist/jquery.js"/>
    <asset:javascript src="bootstrap/dist/js/bootstrap.js"/>
    <asset:javascript src="bootstrap-material-design/dist/js/material.js"/>
    <script>
    var gr8ConfStart = "${grailsApplication.config.gr8conf.dates.start}";
    var gr8ConfEnd = "${grailsApplication.config.gr8conf.dates.end}";
    var gr8ConfYear = "${grailsApplication.config.gr8conf.dates.year}";
    $(function() { $.material.init(); });
    </script>
    <g:layoutHead/>
</head>
<body>
<div id="wrapper">
    <div id="header">
    <nav class="navbar navbar-info" style="margin-bottom: 0px;">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/"><i class="fa fa-star-o"></i> GR8Conf US</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="nav-item">
                        <a class="nav-link" href="${createLink(controller: "data", action: "agenda")}">Schedule</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${createLink(controller: "data", action: "speakers")}">Speakers</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${createLink(controller: "data", action: "talks")}">Talks</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${createLink(controller: "home", action: "venue")}">Venue</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${createLink(controller: "home", action: "hotel")}">Hotel</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${createLink(controller: "home", action: "sponsors")}">Sponsors</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${createLink(controller: "home", action: "coc")}">Code of Conduct</a>
                    </li>
                </ul>
            </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
    </nav>
</div>
<div id="content">
    <g:layoutBody/>
</div>
<div class="footer-distributed" id="footer">
    <div class="container">

    <div class="footer-right">
        <a target="_blank" href="https://twitter.com/gr8confus"><i class="fa fa-twitter"></i></a>
        <a target="_blank" href="https://www.youtube.com/gr8confus"><i class="fa fa-youtube"></i></a>
        <a target="_blank" href="mailto:contact@gr8conf.us"><i class="fa fa-envelope"></i></a>
        <a target="_blank" href="https://www.redbubble.com/people/prettygoodconfs"><i class="fa fa-shopping-bag"></i></a>
        %{--<a target="_blank" href="https://gr8conf.org"><i class="fa fa-link"></i></a>--}%
    </div>

    <div class="footer-left">
        <p>
            <a target="_blank" href="http://prettygoodconferences.org"><span style="color:white;">Pretty Good Conferences</span></a>
        </p>
        <p>GR8Conf US &copy; ${Calendar.getInstance().get(Calendar.YEAR)}</p>
    </div>
    </div>
</div>
</div>
<asset:javascript src="application.js"/>
</body>
</html>
