//= require turbolinks/dist/turbolinks.js
//= require jquery-countdown/dist/jquery.countdown.js
//= require bootstrap-material-design/dist/js/ripples.js
//= require moment/moment.js
//= require fullcalendar/dist/fullcalendar.js
//= require fullcalendar-scheduler/dist/scheduler.js
//= require_self

document.addEventListener("turbolinks:load", function() {
    $(function() {
        // Convert to 12hour time for us Americans.
        $(".slotTime").each(function() {
            var start = $(this).data("start");
            var end = $(this).data("end");
            $(this).html(moment(start, "hh:mm:ss").format("h:mm A") + " - " + moment(end, "hh:mm:ss").format("h:mm A"))
        });
    });
});
