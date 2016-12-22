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
            <div class="col-12">
                <h1>Speakers</h1>
                %{--<p class="lead">Learn from the best and brightest of our community.</p>--}%
            </div>
        </div>
        <div class="row">
            <div class="speakers">
                <g:set var="numSpeakers" value="${speakers.size()}"/>
                <g:each in="${speakers}" var="speaker">
                    <div class="speaker-detail col-md-6 col-xs-12">
                        <a href="${createLink(controller: "data", action: "speakers", params: [id: speaker.id])}"><img class="speaker-img img-circle pull-left img-responsive" src="${speaker.image}"></a>
                        <h4><a href="${createLink(controller: "data", action: "speakers", params: [id: speaker.id])}">${speaker.name}</a></h4>
                        <g:if test="${speaker?.twitter}">
                            <a class="fa fa-twitter" href="https://twitter.com/${speaker.twitter}">@${speaker.twitter}</a>
                        </g:if>
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
                </g:each>
            </div>
        </div>
    </div>
</section>
</body>
</html>
