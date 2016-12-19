<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>
<section class="page-block">
    <div class="container">
        <h1>Speakers</h1>
        <div class="row">
            <div class="speakers">
                <g:set var="numSpeakers" value="${speakers.size()}"/>
                <g:each in="${speakers}" var="speaker">
                    <div class="speaker-detail col-md-6 col-sm-12">
                        <a href="${createLink(controller: "data", action: "speakers", params: [id: speaker.id])}"><img class="speaker-img img-circle pull-left" src="${speaker.image}"></a>
                        <h4><a href="${createLink(controller: "data", action: "speakers", params: [id: speaker.id])}">${speaker.name}</a></h4>
                        <g:if test="${speaker.twitter}">
                            <a class="fa fa-twitter" href="https://twitter.com/${speaker.twitter}">https://twitter.com/${speaker.twitter}</a>
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
