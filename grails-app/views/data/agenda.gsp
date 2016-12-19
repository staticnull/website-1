<div class="agenda">
<g:each in="${agenda}" var="day">
    <div class="day">
        <p>Day ${agenda.day}</p>
        <p>Start ${agenda.start}</p>
        <p>End ${agenda.end}</p>
        <g:each in="${agenda?.tracks}" var="track">
            <p>Track ${track.name}</p>
        </g:each>
    </div>
    <hr/>
</g:each>
</div>
