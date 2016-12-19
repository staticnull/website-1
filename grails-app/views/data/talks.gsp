<div class="talks">
<g:each in="${talks}" var="talk">
    <div class="talk">
        <p>${talk.id}</p>
        <p>${talk.title}</p>
        <p>${raw(talk.summary)}</p>
        <p>${talk.level}</p>
        <p>Speakers</p>
        <g:each in="${talk?.speakers}" var="speaker">
            <p>${speaker.name}</p>
        </g:each>
        <g:each in="${talk.tags}" var="tag">
            ${tag}
        </g:each>
        <p>Slot: ${talk.slot}</p>
    </div>
    <hr/>
</g:each>
</div>
