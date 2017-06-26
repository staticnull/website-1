<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Speakers - GR8Conf</title>
</head>
<body>
<section class="page-block">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>Speakers</h1>
                %{--<p class="lead">Learn from the best and brightest of our community.</p>--}%
            </div>
        </div>

        <div class="list-group">
            <g:set var="numSpeakers" value="${speakers.size()}"/>
            <g:each in="${speakers}" var="speaker">
            <div class="list-group-item">
                <div class="row-picture">
                    <img class="circle" src="${speaker.image}" alt="${speaker.name} profile image">
                </div>
                <div class="row-content">
                    <h4 class="list-group-item-heading"><a href="${createLink(controller: "data", action: "speakers", params: [id: speaker.id])}">${speaker.name}</a></h4>

                    <p class="list-group-item-text">
                    <g:if test="${speaker?.twitter}">
                        <a class="fa fa-twitter" href="https://twitter.com/${speaker.twitter}">@${speaker.twitter}</a>
                    </g:if>
                    <p>${speaker.company}</p>
                    <p>${raw(speaker.bio)}</p>

                    <h3>Talks</h3>
                    <ul>
                        <g:each in="${speaker.talks}" var="talk">
                            <li><a href="${createLink(controller: "data", action: "talks", params: [id: talk.id])}">${talk.title}</a></li>
                        </g:each>
                    </ul>
                    </p>
                </div>
                <g:if test="${numSpeakers == 1}">
                    <p>${speaker.company}</p>
                    <p>${raw(speaker.bio)}</p>

                    <h3>Talks</h3>
                    <ul>
                        <g:each in="${speaker.talks}" var="talk">
                            <li><a href="${createLink(controller: "data", action: "talks", params: [id: talk.id])}">${talk.title}</a></li>
                        </g:each>
                    </ul>
                </g:if>
            </div>
            <div class="list-group-separator"></div>
            </g:each>
            <g:if test="${numSpeakers == 0}">
                <div class="col-md-12">
                    <p>No Speakers scheduled for GR8Conf ${grailsApplication.config.gr8conf.dates.year} yet!</p>
                    <a href="http://cfp.gr8conf.org/" class="btn btn-lg btn-info btn-raised" >Submit your talk today!</a>
                </div>
            </g:if>
        </div>
    </div>
</section>
</body>
</html>
