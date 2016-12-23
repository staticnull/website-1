<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>

<div id="mainCarousel" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner" role="listbox">
        <div class="item active skyline-bg">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Welcome to GR8Conf ${grailsApplication.config.gr8conf.dates.year}!</h1>
                    <h3>${grailsApplication.config.gr8conf.dates.humanRange}</h3>
                    <h4><div id="the-final-countdown">.</div></h4>
                    <p><a class="btn btn-lg btn-info btn-raised" role="button" href="https://ti.to/gr8conf/gr8conf-${grailsApplication.config.gr8conf.dates.year}"> <span class="fa fa-ticket"></span> Buy Ticket</a></p>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="page-block">
    <div class="container">
        <p>Groovy, Grails and the related technologies have seen astounding growth in interest and adoption the past few years, and with good reason. To spread the word even more we have created GR8Conf.</p>

        <p> <a href="http://gr8conf.org">GR8Conf</a> is an independent, affordable series of conferences in <a href="http://gr8conf.eu">Denmark</a>, <a href="http://gr8conf.in">India</a> and the <a href="http://gr8conf.us">US</a>. It's dedicated to
        the technologies in the <a href="http://www.groovy-lang.org">Groovy ecosystem</a>. </p>
        <p> We have in-depth talks covering all major technologies in the Groovy ecosystem. All talks are performed by the brightest minds and core developers in their fields. Last but not least, the conference is run by developers and volunteers
        in the Groovy Community. </p>
    </div>
</section>

<!-- Carousel
    ================================================== -->
<div id="techCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    %{--<ol class="carousel-indicators">--}%
        %{--<li data-target="#techCarousel" data-slide-to="0" class="active"></li>--}%
        %{--<li data-target="#techCarousel" data-slide-to="1"></li>--}%
        %{--<li data-target="#techCarousel" data-slide-to="2"></li>--}%
        %{--<li data-target="#techCarousel" data-slide-to="3"></li>--}%
    %{--</ol>--}%
    <div class="carousel-inner" role="listbox">
        <div class="item active groovy-slide slide-bg">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Groovy</h1>
                    <p>Powerful dynamic JVM language</p>
                    <p><a class="btn btn-lg btn-info btn-raised" href="http://groovy-lang.org" role="button">groovy-lang.org</a></p>
                </div>
            </div>
        </div>
        <div class="item grails-slide slide-bg">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Grails</h1>
                    <p>A powerful Groovy-based web application framework for the JVM built on top of Spring Boot</p>
                    <p><a class="btn btn-lg btn-info btn-raised" href="https://grails.org" role="button">grails.org</a></p>
                </div>
            </div>
        </div>
        <div class="item slack-slide slide-bg">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Join the conversation</h1>
                    <p>Chat with GR8Conf attendees in the Groovy Community Slack</p>
                    <p><a class="btn btn-info btn-raised" href="https://groovycommunity.com" role="button">Join Slack</a></p>
                </div>
            </div>
        </div>
        <div class="item ratpack-slide slide-bg">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Ratpack</h1>
                    <p>Lean & powerful HTTP apps</p>
                    <p><a class="btn btn-info btn-raised" href="https://ratpack.io" role="button">ratpack.io</a></p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#techCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#techCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div><!-- /.carousel -->

</body>
</html>
