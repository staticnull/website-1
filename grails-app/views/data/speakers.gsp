<div class="speakers">
<g:each in="${speakers}" var="speaker">
    <div class="speaker">
        <p>${speaker.name}</p>
        <p>${speaker.company}</p>
        <p>${raw(speaker.bio)}</p>
        <g:if test="${speaker.twitter}">
        <p><a href="https://twitter.com/${speaker.twitter}">https://twitter.com/${speaker.twitter}</a></p>
        </g:if>
        <img src="${speaker.image}">
    </div>
    <hr/>
</g:each>
</div>
