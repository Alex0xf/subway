//$(function($){
//	console.log("css");
//	$("#platform,#topType,#secondType").css({"width":"40px"});
//});

function initData() {
	$(".sharePage").data("page", {
		pageNum : "0"
	});
}


function loadchannel() {
	var url = "ChannelServlet";
	$.get(url, function(data) {
		$(".channel").html(data);
		initData();
	}, "html");

}
function delete_channel(obj) {
	var del = confirm("确定是要删除该渠道吗?");
	if(del){
		var url = "DeleteChannelTypeServlet"; 
		var ctime = $(obj).val();
		var param = JSON.parse(ctime);
		$.get(url,param,function(data){
			$(".channel").html(data);
		},"html");
		
	}
	
}

function selectSecondTypeName(obj) {
	var url = "SecondTypeNameServlet";
	var param = {
		"topTypeName" : obj
	};
	console.log("执行了吗")
	$.getJSON(url, param, function(data) {
		$(".second_search").empty();
		$.each(data.secondTypeNameList, function(i, channelControlModel) {
			$(".second_search").append("<li><a href='#' style='text-align:center' >" + channelControlModel.secondTypeName + "</a></li>");
		});
	});
}

function selectSecondTypeName_2(obj) {
	var url = "SecondTypeNameServlet";
	var value = $(obj).val();
	var param = {
		"topTypeName" : value
	};
	$.getJSON(url, param, function(data) {
		console.log(data.secondTypeNameList)
		$(".second_search_2").empty();
		$.each(data.secondTypeNameList, function(i, channelControlModel) {
			$(".second_search_2").append("<option>" + channelControlModel.secondTypeName + "</option>");
		});
	});
}

function addchannel() {
	var url = "AddChannelServlet";
	$.get(url, function(data) {
		$(".channel").html(data);
	}, "html");

}

function loadchanneltype() {
	var url = "ChannelTypeControlServlet";
	$.get(url, function(data) {
		$(".channel").html(data);
	}, "html");
}

function addchanneltype() {
	var url = "AddChannelTypeServlet";
	$.get(url, function(data) {
		$(".channel").html(data);
	}, "html");
}


function changePageSize(obj) {
	var size = $(obj).html();
	$(".pageSize").html(size);
	var url = "ChannelServlst";
	var param = {
		"size" : size
	};
	$.get(url, param, function(data) {
		$(".channel").html(data);
	}, "html")
}

function nowPage(obj) {
	$(obj).parent().addClass("active");
}

function pageStart() {
	var size = $(".pageSize").html();
	var url = "ChannelServlst";
	var param = {
		"size" : size
	};
	$.get(url, param, function(data) {
		$(".channel").html(data);
	}, "html")
}


function pageNum(obj) {
	$(".active").removeClass("active nowSelect");
	$(obj).parent().addClass("active nowSelect");
	var pageNum = parseInt($(obj).html());
	if (pageNum > 0) {
		$(".sharePage").data("page", {
			pageNum : pageNum
		});
	}
	//ajax刷新列表

	var url = "RefreshChannelTypeControlServlet";
	var pageSize = $(".pageSize").html();
	var param = {
		"pageNum" : pageNum,
		"pageSize" : pageSize
	};
	console.log(param);
	$.get(url, param, function(data) {
		$(".ChannelTypeTable").html(data);
	}, "html");

}
function pageDown() {
	//	var nowPage = $(".active :first-child").html();
	//	$(".sharePage").data("page", {
	//		pageNum : nowPage
	//	});
	var pageNum = $(".sharePage").data("page").pageNum;
	pageNum = parseInt(pageNum);
	var pageNum2 = pageNum + 1;
	$(".sharePage").data("page", {
		pageNum : pageNum2
	});
	//ajax刷新列表
	var url = "RefreshChannelTypeControlServlet";
	var pageSize = $(".pageSize").html();
	var param = {
		"pageNum" : pageNum2,
		"pageSize" : pageSize
	};
	console.log(param);
	$.get(url, param, function(data) {
		$(".ChannelTypeTable").html(data);
	}, "html");


	//ajax刷新列表

	//	if((pageNum % 5 == 0 && pageNum>0) ||(nowPage % 5==0 && nowPage >0)){
	if (pageNum % 5 == 0 && pageNum > 0) {

		var url = "SharePageServlet";
		$.get(url, {
			"pageNum" : pageNum
		}, function(data) {
			$(".sharePage").html(data);
		}, "html")
		return;

	} else {
		//		$(".sharePage").data("page",{pageNum:nowPage});
	}
	$(".active").next().addClass("active nowSelect");
	$(".nowSelect").prev().removeClass("active nowSelect");
//	var nowPage = $(".nowSelect:first-child").html();
//	$(".sharePage").data("page",{pageNum:nowPage});
//	var pageNum = $(".sharePage").data("page").pageNum;
//	if(pageNum % 5 == 0 && pageNum>0){		
//		var url = "SharePageServlst";	
//		$.get(url,{"pageNum":pageNum},function(data) {
//			$(".sharePage").html(data);
//		},"html")
//	}
}



function pageUp() {
	//	var nowPage = $(".active :first-child").html();
	//	$(".sharePage").data("page", {
	//		pageNum : nowPage
	//	});
	var pageNum = $(".sharePage").data("page").pageNum;
	pageNum = parseInt(pageNum);
	var pageNum2 = pageNum - 1;
	$(".sharePage").data("page", {
		pageNum : pageNum2
	});
	//ajax刷新列表
	if (pageNum > 1) {
		var url = "RefreshChannelTypeControlServlet";
		var pageSize = $(".pageSize").html();
		var param = {
			"pageNum" : pageNum2,
			"pageSize" : pageSize
		};
		console.log(param);
		$.get(url, param, function(data) {
			$(".ChannelTypeTable").html(data);
		}, "html");
	}

	//ajax刷新列表
	//	if((pageNum % 5 == 1 && pageNum>5) ||(nowPage % 5==1 && nowPage >5)){
	if (pageNum % 5 == 1 && pageNum > 5) {
		pageNum = pageNum - 6;
		var url = "SharePageUpServlet";
		$.get(url, {
			"pageNum" : pageNum
		}, function(data) {
			$(".sharePage").html(data);
		}, "html")
		return;

	} else {
		//		$(".sharePage").data("page",{pageNum:nowPage});
	}
	$(".active").prev().addClass("active nowSelect");
	$(".nowSelect").next().removeClass("active nowSelect");
//	
//	var pageNum = $(".sharePage").data("page").pageNum;
//	
//	if(pageNum % 5 == 1 && pageNum>5){		
//		pageNum = pageNum -6;
//		var url = "SharePageServlst";
//		$.get(url,{"pageNum":pageNum},function(data) {
//			$(".sharePage").html(data);
//		},"html")
//	}
}


function pageStart() {
	var url = "ChannelTypeControlServlet";
	var size = $(".pageSize").html();
	var param = {"size":size};
	$.get(url, param,function(data) {
		$(".channel").html(data);
	}, "html");
	
}


function typeNameOnblur(obj) {
	var name = $(obj).val();
	if (name != null && name != "") {
		$("#TypeNameDiv").removeClass("has-error");
		$("#TypeNameCheck").removeClass("glyphicon glyphicon-remove form-control-feedback");
		$("#TypeNameCheck").addClass("glyphicon glyphicon-ok form-control-feedback");

	} else {
		$("#TypeNameCheck").removeClass("glyphicon glyphicon-ok form-control-feedback");
		$("#TypeNameDiv").addClass("has-error");
		$("#TypeNameCheck").addClass("glyphicon glyphicon-remove form-control-feedback");
	}
}

function SortOnblur(obj) {
	var name = $(obj).val();
	if (name != null && name != "" && !isNaN(name)) {
		$("#SortDiv").removeClass("has-error");
		$("#SortCheck").removeClass("glyphicon glyphicon-remove form-control-feedback");
		$("#SortCheck").addClass("glyphicon glyphicon-ok form-control-feedback");
	} else {
		$("#SortCheck").removeClass("glyphicon glyphicon-ok form-control-feedback");
		$("#SortDiv").addClass("has-error");
		$("#SortCheck").addClass("glyphicon glyphicon-remove form-control-feedback");
	}

}

function addForm() {
	var typeName = $("#inputSuccess2").val();
	var sort = $("#inputSuccess3").val();
	if (typeName != null && typeName != "" && sort != null && sort != "" && !isNaN(sort)) {

		var url = "AddChannelTypeServlet";
		var param = $("#ChannelTypeForm").serialize();
		$.get(url, param, function(data) {
			$(".channel").html(data);
			
			
		}, "html");

		return false;
	} else {
		alert("部分选项填写有误,还无法提交(⊙﹏⊙)");
		return false;

	}
}

function updateForm() {
	var typeName = $("#inputSuccess2").prop("placeholder");
	var typeName2 = $("#inputSuccess2").val();
	if (typeName2 == null || typeName2 == "") {
		typeName2 = typeName;
	}
	var fatherType = $("#father_select option:first-child").html();
	var fatherType2 = $("#father_select").val();
	if (fatherType2 == 0) {
		fatherType2 = "无父级"
	} else {
		fatherType2 = "一级分类"
	}
	var tagSort = $("#inputSuccess3").prop("placeholder");
	var tagSort2 = $("#inputSuccess3").val();
	if (tagSort2 == null || tagSort2 == "") {
		tagSort2 = tagSort;
	}
	var description = $("#inputSuccess4").prop("placeholder");
	var description2 = $("#inputSuccess4").val();
	if (description2 == null || description2 == "") {
		description2 = description;
	}

	var str = "提示:\n" + "父类名称:" + typeName + "===>" + typeName2 + "\n" + "父级" + fatherType + "===>" + fatherType2 + "\n" +
		"标签排序:" + tagSort + "===>" + tagSort2 + "\n" + "备注:" + description + "===>" + description2 + "\n" + "确定要这样修改吗?"

	if( confirm(str)){
		var url = "SureUpdataChannelTypeServlet";
		var param = $("#ChannelTypeForm").serialize();
		$.get(url,param,function(data){
			$(".channel").html(data);
		},"html");
		return false;
	}else{
		return false;
	}

}


function updateChannelType(obj) {
	var url = "UpdateChannelTypeServlet";
	var ctime = $(obj).val();
	var param = JSON.parse(ctime);
	console.log(param);
	$.get(url, param, function(data) {
		$(".channel").html(data);
		
	}, "html");

}