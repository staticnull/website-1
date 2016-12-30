<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>

<div id="mainCarousel" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner" role="listbox">
        <div class="item active skyline-bg slide-bg">
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
        <div class="row">
            <div class="col-lg-12">
                <h3>GR8 Technology</h3>
                <p>Groovy, Grails and the related technologies have seen astounding growth in interest and adoption the past few years, and with good reason. To spread the word even more we have created GR8Conf.</p>
                <p><a class="btn btn-info" href="${createLink(controller: "data", action: "speakers")}" role="button">Speakers &raquo;</a></p>
            </div>
            <div class="col-lg-12">
                <h3>GR8 Talks</h3>
                <p><p> We have in-depth talks covering all major technologies in the Groovy ecosystem. All talks are performed by the brightest minds and core developers in their fields. Last but not least, the conference is run by developers and volunteers in the Groovy Community.</p>
                <p><a class="btn btn-info" href="${createLink(controller: "data", action: "talks")}" role="button">Talks &raquo;</a></p>
            </div>
        </div>
    </div>
</section>

<!-- .carousel -->
<div id="techCarousel" class="carousel slide" data-ride="carousel">
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
                    <p><a class="btn btn-lg btn-raised" href="https://grails.org" role="button">grails.org</a></p>
                </div>
            </div>
        </div>
        <div class="item slack-slide slide-bg">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Join the conversation</h1>
                    <p>Chat with GR8Conf attendees in the Groovy Community Slack</p>
                    <p><a class="btn  btn-raised" href="https://groovycommunity.com" role="button">Join Slack</a></p>
                </div>
            </div>
        </div>
        <div class="item ratpack-slide slide-bg">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Ratpack</h1>
                    <p>Lean & powerful HTTP apps</p>
                    <p><a class="btn btn-raised" href="https://ratpack.io" role="button">ratpack.io</a></p>
                </div>
            </div>
        </div>
        <div class="item gradle-slide slide-bg">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Gradle</h1>
                    <p>Build tool for the JVM</p>
                    <p><a class="btn btn-raised" href="https://gradle.org" role="button">gradle.org</a></p>
                </div>
            </div>
        </div>
        <div class="item spock-slide slide-bg">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Spock</h1>
                    <p>The enterprise ready specification framework</p>
                    <p><a class="btn btn-raised" href="http://spockframework.org/" role="button">spockframework.org</a></p>
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

<asset:javascript src="home.js"/>
</body>
</html>
