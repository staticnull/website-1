<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>
        <g:layoutTitle default="GR8Conf US"/>
    </title>
    <asset:stylesheet src="application.css"/>
    <g:layoutHead/>
</head>
<body>
    <nav class="navbar navbar-default" style="margin-bottom: 0px;">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/">GR8Conf US</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="nav-item">
                        <a class="nav-link" href="${createLink(controller: "data", action: "speakers")}">Speakers</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${createLink(controller: "data", action: "talks")}">Talks</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${createLink(controller: "data", action: "agenda")}">Schedule</a>
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
                    <li class="nav-item">
                        <a class="nav-link" href="${createLink(controller: "home", action: "mobile")}">Mobile</a>
                    </li>
                </ul>
            </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
    </nav>

    <g:layoutBody/>

    <!-- FOOTER -->
    <footer class="">
        <div class="container text-center">
            <a href="https://twitter.com/gr8confus" class="tooltipped fa fa-twitter" data-placement="top" title="Twitter"></a>
            <a href="https://facebook.com/GR8ConfUS" class="tooltipped fa fa-facebook" data-placement="top" title="Facebook"></a>
            <a href="https://plus.google.com/u/2/b/104542830138634018656/104542830138634018656/posts" class="tooltipped fa fa-google-plus" data-placement="top" title="Google+"></a>
            <a href="mailto:contact@gr8conf.us">contact@gr8conf.us</a>
        </div>
    </footer>

    <asset:javascript src="application.js"/>
</body>
</html>
