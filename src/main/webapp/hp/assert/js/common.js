$(document).ready(function() {

	// form validation
	$(".edit_form").Validform({
		tiptype : 2,
		datatype:{
			"float5-2" : /^\d{1,5}\.\d{2}$/,
			"_date" : /^\d{4}-\d{2}-\d{2}$/,
			"_img": /\w+([.jpg|.JPG|.png|.PNG|.gif|.GIF|.bmp|.BMP|.jpeg|.JPEG]){1}$/
		},
		callback:function(form) {
			lock_form();
		}
	});
	
});

// receive server response var hidden frame like ajax
function callback(code, msg, url) {
       var t = (code==1) ? 'confirmation' : 'error';
       $.Zebra_Dialog(msg, {
           'type':  t,
           'title':    '操作提示',
           'buttons':  ['继续', '返回'],
           'onClose':  function(caption) {
               if(caption == '返回') location.href = url;
               else release_form();
           }
       });
}
function show_processing_dialog () {
       $.Zebra_Dialog('数据处理中', {
           'type':   'information',
           'title':    '操作提示',
           'buttons':  false
       });
}
function lock_form() {
	$(".form_submti_btn").attr("disabled", true);
}
function release_form() {
	$(".form_submti_btn").removeAttr("disabled");
}

/* check all button */
function check_all_items() {
	var checked = $("#cb_check_all_items").is(":checked");
	$(".cb_item").each(function () {
		$(this).attr("checked", checked);
	});
}
function has_checked_items() {
	var has_checked_item = false;
	$(".cb_item").each(function () {
		if ($(this).is(":checked")) {
			has_checked_item = true;
		}
	});
	return has_checked_item;
}
function build_checked_item_ids() {
	var ids = "";
	$(".cb_item").each(function () {
		if ($(this).is(":checked")) {
			ids += $(this).val() + "_";
		}
	});
	if (ids != "") {
		ids = ids.substring(0, ids.lastIndexOf("_"));
	}
	return ids;
}

var cm = {

	add : function (url) {
		new $.Zebra_Dialog({"source":{"ajax": cm.rand(url) }, width:800, "title":"添加", type:false, buttons:false});
	},
	
	edit : function (url) {
		new $.Zebra_Dialog({"source":{"ajax": cm.rand(url) }, width:800, "title":"编辑", type:false, buttons:false});
	},
	
	del : function (id, del_url, ret_url) {
	    $.Zebra_Dialog('确定删除 ?', {'type':  'question','title':   '操作确认','buttons':  ['确定', '取消'],
	    'onClose':  function(caption) {
         if(caption == '确定') {
             show_processing_dialog();
             $.post(del_url, {"id" : id}, function(msg){
                 $(".ZebraDialog_Information").html(msg);
                 location.href = ret_url;
             }); // end of post
         }}
	    });
	  },
	  
	del_batch : function (del_url, ret_url) {
	    if(!has_checked_items()) return;
	    $.Zebra_Dialog('确定删除 ?', {'type':  'question','title':   '操作确认','buttons':  ['确定', '取消'],'onClose':  function(caption) {
	    if(caption == '确定') {
            show_processing_dialog();
            $.post(del_url, {"ids" : build_checked_item_ids()}, function(msg){
                $(".ZebraDialog_Information").html(msg);
                 location.href = ret_url;
            });
	     }}});
	  },
	
	rand : function(url) {
		url += (url.indexOf("?")>0) ? '&' : '?';
		url += "r=" + new Date().getTime();
		return url;
	}
	
};

