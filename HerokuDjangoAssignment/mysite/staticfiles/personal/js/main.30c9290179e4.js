function time() {
    var currTime = new Date();
    var td = "AM";
    var h = currTime.getHours();
    var m = currTime.getMinutes();
    var s = currTime.getSeconds();
    if (h == 0) {
        h = 12;
    }
    else if (h > 12) {
        h = h - 12;
        td = "PM";
    }
    if (h < 10) {
        h = "0" + h;
    }
    if (m < 10) {
        m = "0" + m;
    }
    if (s < 10) {
        s = "0" + s;
    }
    var myClock = document.getElementById('clockD');
    myClock.textContent = h + ":" + m + ":" + s + " " + td;
    setTimeout('time()', 1000);
}
time();

function initMap() {
    
    var uluru = {
        lat: 40.425869
        , lng: 	-86.908066
    };
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 11
        , center: uluru
    });
    var marker = new google.maps.Marker({
        position: uluru
        , map: map
    });
}