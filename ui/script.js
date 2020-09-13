$("document").ready(function() {
    window.addEventListener('message', function(e) {
        var message = e.data;

        // Change the width of bar
        $("#health .bar").animate({
            "width":  message.health - 100 + "%" // - 100 because health is from 100-200
        }); 
        $("#armor .bar").css("width", message.armor + "%");
        $("#hunger .bar").css("width", message.hunger + "%");
        $("#thirst .bar").css("width", message.thirst + "%");
    })
})