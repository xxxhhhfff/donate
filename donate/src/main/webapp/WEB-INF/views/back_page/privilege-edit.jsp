<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<LINK rel="Bookmark" href="/favicon.ico" >
<LINK rel="Shortcut Icon" href="/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="<%=path%>/back/lib/html5.js"></script>
<script type="text/javascript" src="<%=path%>/back/lib/respond.min.js"></script>
<script type="text/javascript" src="<%=path%>/back/lib/PIE_IE678.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="<%=path%>/back/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/back/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/back/lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/back/lib/icheck/icheck.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/back/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="<%=path%>/back/static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<!--/meta 作为公共模版分离出去-->

<title>权限修改 - 权限管理 </title>
<meta name="keywords" content="H-ui.admin v2.3,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description" content="H-ui.admin v2.3，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">

</head>
<body>
<article class="page-container">
	<form class="form form-horizontal" method="post" action="<%=path%>/privilege/updatePrivilege">
		<input type="hidden" name="privilege.id" value="${privilege.id}">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>权限名称：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${privilege.name }" placeholder="" id="" name="privilege.name"  >
			</div>
		</div>
	
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">权限路径：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${privilege.path }" placeholder="" id="" name="privilege.path" >
			</div>
		</div>
	 
		 
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">父节点编码：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${privilege.parentNode }" placeholder="" id="" name="privilege.parentNode">
			</div>
		</div>
	  
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">根节点：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${privilege.rootNode }" placeholder="" id="" name="privilege.rootNode">
			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">是否根节点：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${privilege.isRoot }" placeholder="" id="" name="privilege.isRoot">
			</div>
		</div>
	 
		 
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button type="submit" class="btn btn-primary radius" >
				<i class="Hui-iconfont">&#xe632;</i> 确认修改</button>
				 
				<button onClick="removeIframe();" class="btn btn-default radius">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
			</div>
		</div>
	</form>
</article>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="<%=path%>/back/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="<%=path%>/back/lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="<%=path%>/back/lib/icheck/jquery.icheck.min.js"></script> 
<script type="text/javascript" src="<%=path%>/back/lib/jquery.validation/1.14.0/jquery.validate.min.js"></script> 
<script type="text/javascript" src="<%=path%>/back/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="<%=path%>/back/lib/jquery.validation/1.14.0/messages_zh.min.js"></script> 
<script type="text/javascript" src="<%=path%>/back/static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="<%=path%>/back/static/h-ui.admin/js/H-ui.admin.js"></script> 
<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="<%=path%>/back/lib/My97DatePicker/WdatePicker.js"></script>  
<script type="text/javascript" src="<%=path%>/back/lib/webuploader/0.1.5/webuploader.min.js"></script> 
<script type="text/javascript" src="<%=path%>/back/lib/ueditor/1.4.3/ueditor.config.js"></script> 
<script type="text/javascript" src="<%=path%>/back/lib/ueditor/1.4.3/ueditor.all.min.js"> </script> 
<script type="text/javascript" src="<%=path%>/back/lib/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
$(function(){
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	
	
	$list = $("#fileList"),
	$btn = $("#btn-star"),
	state = "pending",
	uploader;

	var uploader = WebUploader.create({
		auto: true,
		swf: '<%=path%>/back/lib/webuploader/0.1.5/Uploader.swf',
	
		// 文件接收服务端。
		server: 'fileupload.php',
	
		// 选择文件的按钮。可选。
		// 内部根据当前运行是创建，可能是input元素，也可能是flash.
		pick: '#filePicker',
	
		// 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
		resize: false,
		// 只允许选择图片文件。
		accept: {
			title: 'Images',
			extensions: 'gif,jpg,jpeg,bmp,png',
			mimeTypes: 'image/*'
		}
	});
	uploader.on( 'fileQueued', function( file ) {
		var $li = $(
			'<div id="' + file.id + '" class="item">' +
				'<div class="pic-box"><img></div>'+
				'<div class="info">' + file.name + '</div>' +
				'<p class="state">等待上传...</p>'+
			'</div>'
		),
		$img = $li.find('img');
		$list.append( $li );
	
		// 创建缩略图
		// 如果为非图片文件，可以不用调用此方法。
		// thumbnailWidth x thumbnailHeight 为 100 x 100
		uploader.makeThumb( file, function( error, src ) {
			if ( error ) {
				$img.replaceWith('<span>不能预览</span>');
				return;
			}
	
			$img.attr( 'src', src );
		}, thumbnailWidth, thumbnailHeight );
	});
	// 文件上传过程中创建进度条实时显示。
	uploader.on( 'uploadProgress', function( file, percentage ) {
		var $li = $( '#'+file.id ),
			$percent = $li.find('.progress-box .sr-only');
	
		// 避免重复创建
		if ( !$percent.length ) {
			$percent = $('<div class="progress-box"><span class="progress-bar radius"><span class="sr-only" style="width:0%"></span></span></div>').appendTo( $li ).find('.sr-only');
		}
		$li.find(".state").text("上传中");
		$percent.css( 'width', percentage * 100 + '%' );
	});
	
	// 文件上传成功，给item添加成功class, 用样式标记上传成功。
	uploader.on( 'uploadSuccess', function( file ) {
		$( '#'+file.id ).addClass('upload-state-success').find(".state").text("已上传");
	});
	
	// 文件上传失败，显示上传出错。
	uploader.on( 'uploadError', function( file ) {
		$( '#'+file.id ).addClass('upload-state-error').find(".state").text("上传出错");
	});
	
	// 完成上传完了，成功或者失败，先删除进度条。
	uploader.on( 'uploadComplete', function( file ) {
		$( '#'+file.id ).find('.progress-box').fadeOut();
	});
	uploader.on('all', function (type) {
        if (type === 'startUpload') {
            state = 'uploading';
        } else if (type === 'stopUpload') {
            state = 'paused';
        } else if (type === 'uploadFinished') {
            state = 'done';
        }

        if (state === 'uploading') {
            $btn.text('暂停上传');
        } else {
            $btn.text('开始上传');
        }
    });

    $btn.on('click', function () {
        if (state === 'uploading') {
            uploader.stop();
        } else {
            uploader.upload();
        }
    });
	
	var ue = UE.getEditor('editor');
	
});
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>