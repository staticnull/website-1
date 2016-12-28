<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Talks - GR8Conf</title>
</head>
<body>
<section class="page-block">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h1>Talks</h1>
                <p class="lead"> Learn from the best and brightest in our community. </p>
            </div>
        </div>
        <div class="row">
        <g:set value="${talks.size()}" var="talkCount"/>
        <g:each in="${talks}" var="talk">
            <g:if test="${talkCount == 1}">
                <div class="talk col-md-12">
            </g:if>
            <g:else>
                <div class="talk col-md-6">
            </g:else>
                    <p><a href="${createLink(controller: "data", action: "talks", params: [id: talk.id])}"> ${talk.title}</a>
                <div class="tags">
                <g:each in="${talk.tags}" var="tag">
                    <span class="label label-info">${tag}</span>
                </g:each>
                </div>
                </p>
                <g:if test="${talkCount == 1}">
                    <p>${talk.level}</p>
                    <p>${raw(talk.summary)}</p>
                    <p>Speakers</p>
                    <ul>
                    <g:each in="${talk?.speakers}" var="speaker">
                        <li><a href="${createLink(controller: "data", action: "speakers", params: [id: speaker.id])}">${speaker.name}</a></li>
                    </g:each>
                    </ul>
                    <p>${talk.slot.duration} min</p>
                    <div class="slotTime" data-start="${talk.slot.start}" data-end="${talk.slot.end}"></div>
                </g:if>
            </div>
        </g:each>
        </div>
    </div>
</section>
</body>
</html>
