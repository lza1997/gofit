;
//select city
$("#city").hover(
    function(){
        $("#city_change").addClass("hover");
    },
    function(){
        $("#city_change").removeClass("hover");
    }
);

$("#city_change li").click(function(){
    var current_li = this.innerHTML;
    $("#city").html(current_li + " <span></span>");
});
