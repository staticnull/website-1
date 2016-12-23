$(function() {
    $.material.init();
    var now = moment(); // testing moment('2017-7-19');
    var gr8ConfStartDate = moment(gr8ConfStart);
    var gr8ConfEndDate = moment(gr8ConfEnd);
    var countDownDiv = $('#the-final-countdown');

    if(now < gr8ConfStartDate) {
        countDownDiv.countdown(gr8ConfStartDate.toDate(), function (event) {
            $(this).html(event.strftime('%w weeks %-d days %-H:%M:%S'));
        });
    } else if(now >= gr8ConfStartDate && now <= gr8ConfEndDate) {
        countDownDiv.html("Gr8Conf is going on right now!");
    } else {
        countDownDiv.html("See you next year!");
    }

    // Convert to 12hour time for us Americans.
    $(".slotTime").each(function() {
        var start = $(this).data("start");
        var end = $(this).data("end");
        $(this).html(moment(start, "hh:mm:ss").format("h:mm A") + " - " + moment(end, "hh:mm:ss").format("h:mm A"))
    });


    $('#calendar').fullCalendar({
        schedulerLicenseKey: 'CC-Attribution-NonCommercial-NoDerivatives',
        allDaySlot: false,
        defaultView: 'agendaDay',
        defaultDate: '2016-07-27', // gr8ConfStart
        height: 'auto',
        minTime: "08:00:00",
        maxTime: "19:00:00",
        allDay: false,
        editable: false,
        selectable: false,
        eventLimit: false,
        header: {
            left: 'title',
            center: '',
            right: 'prev,next'
        },
        views: {
            agendaDay: {
                type: 'agenda',
                duration: { days: 1 },
                groupByResource: true // grouping by rooms
            }
        },
        // Do not allow navigation beyond conf dates.
        viewRender: function(view,element) {
            var now = new Date();
            var startDate = moment("7/27/2016"); // gr8ConfStart
            var endDate = moment("7/29/2016"); // gr8ConfEnd

            if ( endDate < view.end) {
                $("#calendar .fc-next-button").prop("disabled",true);
                return false;
            } else {
                $("#calendar .fc-next-button").prop("disabled",false);
            }
            if ( view.start < startDate) {
                $("#calendar .fc-prev-button").prop("disabled",true);
                return false;
            } else {
                $("#calendar .fc-prev-button").prop("disabled",false);
            }
        },
        resources: [
            { id: 'Schulze Hall Auditorium', title: 'Schulze Hall Auditorium' },
            { id: 'Schultze Hall 127', title: 'Schultze Hall 127', eventColor: 'green' },
            { id: 'Law School 235', title: 'Law School 235', eventColor: 'orange' },
            { id: 'Law School 238', title: 'Law School 238', eventColor: 'red' }
        ],
        events: {
            url: "/data/fullCalendar.json",
            cache: true
        },
        eventAfterAllRender: function() {
            // Extend all track events across all resources.
            // Hax
            $(".allColumns")
                .css('width', $("#calendar").width())
                .css('background-color', "black")
                .css('border-color', "black");
        },
        // If a event has a url property, allow navigation.
        eventClick: function(calEvent, jsEvent, view) {
            if (calEvent.url) {
                location.href= calEvent.url;
                return false;
            }
        }
    });
});
