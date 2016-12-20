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
});
