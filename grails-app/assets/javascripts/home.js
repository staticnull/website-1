$(function() {
    const milliSecondsInDay = 24*60*60*1000;
    var now = Date.now(); // testing Date.parse('2017/7/19');
    var gr8ConfStartDate = Date.parse('2017/7/26');
    var gr8ConfEndDate = Date.parse('2017/7/28');
    var countDownDiv = $('#the-final-countdown');

    if(now < gr8ConfStartDate) {
        countDownDiv.countdown(gr8ConfStartDate, function (event) {
            $(this).html(event.strftime('%w weeks %d days %H:%M:%S'));
        });
    } else if(now >= gr8ConfStartDate && now <= gr8ConfEndDate) {
        countDownDiv.html("Gr8Conf is going on right now!");
    } else {
        countDownDiv.html("See you next year!");
    }



    $('#calendar').fullCalendar({
        schedulerLicenseKey: 'CC-Attribution-NonCommercial-NoDerivatives',
        allDaySlot: false,
        defaultView: 'agendaDay',
        defaultDate: '2016-07-27',
        minTime: "08:00:00",
        maxTime: "18:00:00",
        allDay: false,
        editable: false,
        selectable: true,
        eventLimit: true, // allow "more" link when too many events
        header: {
            left: 'prev,next',
            center: 'title',
            right: 'agendaDay,agendaThreeDay'
        },
        views: {
            agendaThreeDay: {
                type: 'agenda',
                duration: { days: 3 },
                // views that are more than a day will NOT do this behavior by default
                // so, we need to explicitly enable it
                groupByResource: true
                //// uncomment this line to group by day FIRST with resources underneath
                // groupByDateAndResource: true
            }
        },
        height: 'auto',

        //// uncomment this line to hide the all-day slot
        allDaySlot: false,
        resources: [
            { id: 'Schulze Hall Auditorium', title: 'Schulze Hall Auditorium' },
            { id: 'Schultze Hall 127', title: 'Schultze Hall 127', eventColor: 'green' },
            { id: 'Law School 235', title: 'Law School 235', eventColor: 'orange' },
            { id: 'Law School 238', title: 'Law School 238', eventColor: 'red' }
        ],
        events: "/data/fullCalendar.json",
        eventAfterAllRender: function() {
            $(".allColumns")
                .css('width', $("#calendar").width())
                .css('background-color', "black")
                .css('border-color', "black");
        },
        eventClick: function(calEvent, jsEvent, view) {
            if (calEvent.url) {
                location.href= calEvent.url;
                return false;
            }
        }
    });
});
