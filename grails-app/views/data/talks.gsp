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
            <div class="talks">
            <g:set value="${talks.size()}" var="talkCount"/>
            <g:each in="${talks}" var="talk">
                <div class="talk">
                    <p><a href="${createLink(controller: "data", action: "talks", params: [id: talk.id])}"> ${talk.title}</a></p>
                    <div class="tags">
                    <g:each in="${talk.tags}" var="tag">
                        <span class="label label-primary">${tag}</span>
                    </g:each>
                    </div>
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
                        <p>${talk.slot.start} - ${talk.slot.end}</p>
                    </g:if>
                </div>
                <hr/>
            </g:each>
            </div>
        </div>
    </div>
</section>
</body>
