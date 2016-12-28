document.addEventListener("turbolinks:load", function() {
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
    });
});
