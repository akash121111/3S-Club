document.addEventListener("turbolinks:load", function () {

    function Compare() {
        var strStartTime = document.getElementById("start_time").value;
        var strEndTime = document.getElementById("end_time").value;
        var startTime = new Date().setHours(GetHours(strStartTime), GetMinutes(strStartTime), 0);
        var endTime = new Date(startTime)
        endTime = endTime.setHours(GetHours(strEndTime), GetMinutes(strEndTime), 0);
        if (startTime > endTime) {
            alert("Start Time is greater than end time");
        }
        if (startTime == endTime) {
            alert("Start Time equals end time");
        }
        if (startTime < endTime) {
            alert("Start Time is less than end time");
        }
    }

})