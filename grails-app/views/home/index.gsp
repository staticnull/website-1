<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner" role="listbox">
        <div class="carousel-item skyline-bg active">
            <div class="container" >
                <div class="carousel-caption text-xs-left opacity-70 p-a-lg" style="background: rgba(0, 0, 0, 0.5);padding-bottom:0px">
                    <h1>Welcome to GR8Conf ${grailsApplication.config.gr8conf.dates.year}!</h1>
                    <h3>${grailsApplication.config.gr8conf.dates.humanRange}</h3>
                    <h4><div id="the-final-countdown"></div></h4>
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

        <div class="row">
            <div class="col-xs-6">
                <a href="http://www.groovy-lang.org"><asset:image class="img-responsive center-block" src="groovy.563dbc4a.png"/></a>
                <a href="https://grails.org"><asset:image class="img-responsive center-block" src="grails.d53f98b2.png"/></a>
            </div>
            <div class="col-xs-6">
                <a href="https://ratpack.io"><asset:image class="img-responsive center-block" src="ratpack.1bdf8ef2.png"/></a>
                <a href="http://spockframework.org"><asset:image class="img-responsive center-block" style="height:125px; width:125px" src="spock.png"/></a>
            </div>
        </div>
        <p> Some of the technologies covered are <a href="http://www.groovy-lang.org">Groovy</a>, <a href="https://grails.org">Grails</a>, <a href="https://ratpack.io">Ratpack</a>, <a href="http://gradle.org">Gradle</a>, <a href="http://spockframework.org">Spock</a> and many many more!</p>
    </div>
    <div class="container">
        <div class="col-xs-6">
            <a href="https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=1132982690&mt=8" target="_blank"> <asset:image class="img-responsive center-block" src="en-appstore-badge.f146e120.png" style="zoom: 25%;"/> </a>
        </div>
        <div class="col-xs-6">
            <a href="https://play.google.com/store/apps/details?id=com.ninerhinos.groovyconf" target="_blank"> <asset:image class="img-responsive center-block" src="en-play-badge.1b2a9d58.png" style="zoom: 25%;"/> </a>
        </div>
    </div>
</section>

</body>
</html>
