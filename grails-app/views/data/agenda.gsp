<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Schedule - GR8Conf</title>
</head>
<body>
<section class="page-block">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h1>Schedule</h1>
                %{--<p class="lead"> Learn from the best and brightest in our community. </p>--}%
            </div>
        </div>
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
</html>
