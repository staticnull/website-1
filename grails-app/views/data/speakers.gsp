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

        <div class="list-group">
            <g:set var="numSpeakers" value="${speakers.size()}"/>
            <g:each in="${speakers}" var="speaker">
            <div class="list-group-item">
                <div class="row-picture">
                    <img class="circle" src="${speaker.image}" alt="icon">
                </div>
                <div class="row-content">
                    <h4 class="list-group-item-heading"><a href="${createLink(controller: "data", action: "speakers", params: [id: speaker.id])}">${speaker.name}</a></h4>

                    <p class="list-group-item-text">
                    <g:if test="${speaker?.twitter}">
                        <a class="fa fa-twitter" href="https://twitter.com/${speaker.twitter}">@${speaker.twitter}</a>
                    </g:if>
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
        </div>
    </div>
</section>
</body>
</html>
