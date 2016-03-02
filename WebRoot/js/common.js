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
//禁用 粘贴 剪切 复制
$(document).ready(function(){
	$("input").bind("cut copy paste",function(e){
		e.preventDefault();
	});
});
//点击登陆显示内容
var sign_in = function(){
	$("#mask").removeClass("hide");
	$("#mask_2").addClass("hide");
	$("#Account_number").focus();
};
var sign_up = function(){
	$("#mask_2").removeClass("hide");
	$("#mask").addClass("hide");
	$("#Account_number_2").focus();
};
$("#log_in").click(sign_in);
$("#register").click(sign_up);
$("#mask p").click(sign_up);
$("#mask_2 p").click(sign_in);
// 点击背景隐藏内容
$("#mask,#mask_2").click(function(){
	$("#mask").addClass("hide");
	$("#mask_2").addClass("hide");
});

$("#log_frame,#log_frame_2").click(function(e){
	e.stopPropagation();
});

$("input").focus(function(){
	$(this).addClass("focus")
});
$("input").blur(function(){
	$(this).removeClass("focus")
});
//登陆界面输入后文字是黑色的；输入文字到一定长度后提交按钮可用
$("#Account_number").keyup(function(){
	$("#Account_number").css("color","#000");
	var W = $("#Account_number").val().length;
	var E = $("#Password").val().length;
	if(W > 4 & E > 4){
	$("#submit").removeAttr("disabled","false").addClass("color")
	}else{
		$("#submit").attr("disabled","false").removeClass("color")
	}
});
$("#Password").keyup(function(){
	$("#Password").css("color","#000");
	var W = $("#Account_number").val().length;
	var E = $("#Password").val().length;
	if(W > 4 & E > 4){
	$("#submit").removeAttr("disabled","false").addClass("color")
	}else{
		$("#submit").attr("disabled","false").removeClass("color")
	}
});
//注册界面输入后文字是黑色的；输入文字到一定长度后提交按钮可用
$("#Account_number_2").keyup(function(){
	$("#Account_number_2").css("color","#000");
	var W = $("#Account_number_2").val().length;
	var E = $("#Password_2").val().length;
	if(W > 4 & E > 4){
	$("#submit_2").removeAttr("disabled","false").addClass("color")
	}else{
		$("#submit_2").attr("disabled","false").removeClass("color")
	}
});
$("#Password_2").keyup(function(){
	$("#Password_2").css("color","#000");
	var W = $("#Account_number_2").val().length;
	var E = $("#Password_2").val().length;
	if(W > 4 & E > 4){ 
	$("#submit_2").removeAttr("disabled","false").addClass("color")
	}else{
		$("#submit_2").attr("disabled","false").removeClass("color")
	}
});
//注册时候选择城市
//显示和隐藏备选菜单
$("#select").click(function(){
	$("form>ul").toggle();
});
$("#select,form>ul").mouseleave(function(){
	$("form>ul").addClass("hide").css("display","none")
});
$("form>ul").hover(
function(){
	$("form>ul").removeClass("hide").css("display","block")
},
function(){
	$("form>ul").addClass("hide").css("display","none")
});
//选择城市
$("form>ul>li").click(function(){
	var my_city = this.innerHTML;
	$("#select").html(my_city);
	$("form>ul").addClass("hide").css("display","none");
})