<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>
<section class="page-block">
    <div class="container">
        <h1>Schedule</h1>
        <div class="row">
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
        </div>
    </div>
</section>
</body>
