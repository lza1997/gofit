;


//LunBo animation
var PicTotal = 3;
var CurrentIndex;
var ToDisplayPicNumber = 1;
$("#num span").click(DisplayPic);
function DisplayPic() {

    CurrentIndex = $(this).index();

    var Pic = $("#back");

    $(Pic).children().fadeOut(1000);
    $(Pic).children("div").eq(CurrentIndex).fadeIn(1000);
}

function PicNumClick() {
    $("#num span").eq(ToDisplayPicNumber).trigger("click");
    ToDisplayPicNumber = (ToDisplayPicNumber + 1) % PicTotal;
    setTimeout("PicNumClick()", 4000);
}

setTimeout("PicNumClick()", 3000);

//首页上下滚动翻页动画
var body_height = -document.body.clientHeight + "px";
var body_height_2 = -document.body.clientHeight/2-100 + "px";
var body_height_3 = -document.body.clientHeight/3 + "px";
$("#point_2").click(function(){
	$("#page").css("transition","transform 800ms").css("transform","translate3d(0px," + body_height + ", 0px)");
    $("#point_1").removeClass("clicked");
    $("#point_2").addClass("clicked");
    $("#download_wrap").css("transition","transform 800ms").css("transform","translate3d(0px," + body_height_2 + ", 0px)");
    $("#intro>div").css("transition","transform 800ms").css("transform","translate3d(-50%, 0px , 0px)");
});

$("#point_1").click(function(){
    $("#page").css("transition","transform 800ms").css("transform","translate3d(0px, 0px , 0px)");
    $("#point_2").removeClass("clicked");
    $("#point_1").addClass("clicked");
    $("#download_wrap").css("transition","transform 800ms").css("transform","translate3d(0px, 0px , 0px)");
    $("#intro>div").css("transition","transform 800ms").css("transform","translate3d(-50%," + body_height_3 + ", 0px)");
});
$(document).ready(function(){
    $("#intro>div").css("transition","transform 800ms").css("transform","translate3d(-50%," + body_height_3 + ", 0px)");
})
// document.onmousewheel=function(ev){
//     if(ev.wheelDelta > 0){
//         $("#page").css("transition","transform 800ms").css("transform","translate3d(0px, 0px , 0px)");
//         $("#point_2").removeClass("clicked");
//         $("#point_1").addClass("clicked");
//         $("#download_wrap").css("transition","transform 800ms").css("transform","translate3d(0px, 0px , 0px)");
//         $("#intro>div").css("transition","transform 800ms").css("transform","translate3d(-50%," + body_height_3 + ", 0px)");
//     } else {
//         $("#page").css("transition","transform 800ms").css("transform","translate3d(0px," + body_height + ", 0px)");
//         $("#point_1").removeClass("clicked");
//         $("#point_2").addClass("clicked");
//         $("#download_wrap").css("transition","transform 800ms").css("transform","translate3d(0px," + body_height_2 + ", 0px)");
//         $("#intro>div").css("transition","transform 800ms").css("transform","translate3d(-50%, 0px , 0px)");
//         var index=0;
//         var word=document.getElementById("intro_2").innerHTML;
//         function type(){
//         document.getElementById("intro_1").innerText = word.substring(0,index++);
//         }
//         if(document.getElementById("intro_1").innerHTML == ""){
//         setInterval(type, 100);
//         };
//     };
// };
$("#intro input").focus(function(){
    $("#input_hint").fadeIn(400).css("transition","transform 400ms").css("transform","translate3d(-50%, -40px, 0px)");
}).blur(function(){
    $("#input_hint").fadeOut(200).css("transition","transform 400ms").css("transform","translate3d(-50%, 0px, 0px)");
});

