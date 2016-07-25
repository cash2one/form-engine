function showLoadPaperDialog() {
	var mask = $('.mask-layer-tpl').clone();
	mask.addClass('mask-layer').removeClass('mask-layer-tpl');
	var dialog = $('.load-paper-dialog-tpl').clone();
	dialog.removeClass('load-paper-dialog-tpl');
	dialog.addClass('dialog');
	mask.find('.dialog-zone').append(dialog);
	mask.appendTo(document.body);
	
	$.ajax({
		url:'loadTempList.do',
		dataType: 'json',
		success: function(data){
			var select = $('select[name=paper-code]');
			select.empty();
			if(data && data.length > 0) {
				for(var i = 0; i < data.length; i++) {
					var option = $('<option>').val(data[i].CODE).html(data[i].TITLE);
					select.append(option);
				}
			}
			mask.show();
			dialog.show();
		}
	});
	
	dialog.find('.ok-btn').unbind('click').bind('click',function(){
		var paperCode = dialog.find('select[name=paper-code]').val();
		if($.trim(paperCode) == '') {
			alert('请选择模版！');
			return false;
		}
		$.ajax({
			url:'loadFormTpl.do',
			type:'post',
			data: {code : paperCode},
			success: function(data) {
				$('.paper-wrapper').html(data);
				resetAndHideAllPropertiesFields();
				makeHeaderResizable();
				makeContentResizable();
				makeFooterResizable();
				$('.sql-node').each(function(){
					registerSelectedSqlNodeHandler(this);
				});
				$('.iterator-wrapper').each(function(){
					registerWidgetMousedownHandler(this);
				});
				$('.widget-text-static').each(function(){
					registerWidgetMousedownHandler(this);
				});
				$('.widget-text-dynamic').each(function(){
					registerWidgetMousedownHandler(this);
				});
				$('.widget-field-hidden').each(function(){
					registerWidgetMousedownHandler(this);
				});
				$('.widget-field-date').each(function(){
					registerWidgetMousedownHandler(this);
				});
				$('.widget-field-number').each(function(){
					registerWidgetMousedownHandler(this);
				});
				$('.widget-field-dict').each(function(){
					registerWidgetMousedownHandler(this);
				});
				$('.widget-field-staff').each(function(){
					registerWidgetMousedownHandler(this);
				});
				$('.widget-field-text').each(function(){
					registerWidgetMousedownHandler(this);
				});
				$('.widget-check').each(function(){
					registerWidgetMousedownHandler(this);
				});
				$('.widget-table').each(function(){
					registerCellEventHandlers(this);
				});
				$('.widget-field-select').each(function(){
					registerWidgetMousedownHandler(this);
				});
				$('.widget-custom-diagnosis').each(function(){
					registerWidgetMousedownHandler(this);
				});
				mask.remove();
			}
		});
	});
	dialog.find('.cancel-btn').unbind('click').bind('click',function() {
		mask.remove();
	});
}

function showPaperInitConfigDialog() {
	var mask = $('.mask-layer-tpl').clone();
	mask.addClass('mask-layer').removeClass('mask-layer-tpl');
	var dialog = $('.paper-init-config-dialog-tpl').clone();
	dialog.removeClass('paper-init-config-dialog-tpl');
	dialog.addClass('dialog');
	mask.find('.dialog-zone').append(dialog);
	mask.appendTo(document.body);
	dialog.find('.ok-btn').unbind('click').bind('click',function(){
		var paperCode = dialog.find('input[name=paper-code]').val();
		var paperName = dialog.find('input[name=paper-name]').val();
		var tableName = dialog.find('input[name=table-name]').val();
		var paperType = dialog.find('select[name=paper-type]').val();
		if($.trim(paperName) == '') {
			alert('表单名称是必填项！');
			return false;
		}
		createFormPaper();
		$('.paper').attr('name', paperName);
		$('.paper').attr('code', paperCode);
		$('.paper').attr('table-name', tableName);
		$('.paper').attr('direction', paperType);
		if(paperType == 'portrait') {
			$('.paper').css({'width':'210mm'});//width(794).height(1123);
			$('.sql-wrapper').css('width','210mm');//width(794);
		}
		else {
			$('.paper').css({'width':'297mm'});//width(1123).height(794);
			$('.sql-wrapper').css('width','297mm');//width(1123);
		}
		
		resetAndHideAllPropertiesFields();
		makeHeaderResizable();
		makeContentResizable();
		makeFooterResizable();
		mask.remove();
	});
	dialog.find('.cancel-btn').unbind('click').bind('click',function() {
		mask.remove();
	});
	mask.show();
	dialog.show();
}

function showPickDatasetFieldDialog(parent) {
	var mask = $('.mask-layer-tpl').clone();
	mask.addClass('mask-layer').removeClass('mask-layer-tpl');
	mask.css('z-index','200');
	var dialog = $('.pick-field-dialog-tpl').clone();
	dialog.removeClass('pick-field-dialog-tpl');
	dialog.addClass('dialog');
	mask.find('.dialog-zone').append(dialog);
	mask.appendTo(document.body);
	
	var datasetsWrapper = dialog.find('.datasets-wrapper');
	var fieldsWrapper = dialog.find('.fields-wrapper');
	if(datasetsWrapper.length > 0) {
		$('.sql-wrapper .sql-node').each(function(){
			var sqlNode = $(this);
			var sqlName = sqlNode.find('.sql-name').html();
			var varName = sqlNode.find('.var-name').html();
			var sql = sqlNode.find('.sql').html();
			var datasetName = document.createElement('li');
			$(datasetName).html(sqlName);
			$(datasetName).data('sqlName', sqlName);
			if(varName) {
				$(datasetName).html(sqlName + '(' + varName + ')');
				$(datasetName).data('varName', varName);
			}
			$(datasetName).bind('click', function(){
				fieldsWrapper.empty();
				datasetsWrapper.find('.selected-item').removeClass('selected-item');
				$(this).addClass('selected-item');
				$.ajax({
					url:'loadFields.do',
					type:'post',
					data:{'sql':sql},
					success: function(data){
						for(var i = 0; i < data.length; i++){
							var fieldName = document.createElement('li');
							$(fieldName).html(data[i]);
							if(i == 0) {
								$(fieldName).addClass('selected-item');
							}
							$(fieldName).bind('click', function(){
								fieldsWrapper.find('.selected-item').removeClass('selected-item');
								$(this).addClass('selected-item');
								var selectedItem = datasetsWrapper.find('.selected-item');
								var prefix = selectedItem.data('varName') || selectedItem.data('sqlName');
								var suffix = $(this).html();
								var expr = '${(' + prefix + '.' + suffix + ')!}';
							});
							$(fieldName).appendTo(fieldsWrapper);
						}
					}
				});
			});
			$(datasetName).appendTo(datasetsWrapper);
		});
	}
	dialog.find('.ok-btn').unbind('click').bind('click',function(){
		var selectedItem = datasetsWrapper.find('.selected-item');
		if(selectedItem.length <= 0) {
			alert('未选择任何数据集！');
			return false;
		}
		var prefix = selectedItem.data('varName') || selectedItem.data('sqlName');
		var suffix = fieldsWrapper.find('.selected-item').html();
		var valueExpr = '${(' + prefix + '.' + suffix + ')!}';
		var dispExpr = '${(' + prefix + '.' + suffix + ')!}';
		if(parent.hasClass('dialog')) {
			parent.find('input[name=real-value]').val(valueExpr);
			parent.find('textarea[name=disp-value]').val(dispExpr);
			parent.find('input[name=field-name]').val(suffix);
			parent.find('input[name=dataset-name]').val(selectedItem.data('sqlName'));
			parent.find('input[name=iterator-name]').val(selectedItem.data('varName'));
		}
		else {
			parent.val(valueExpr);
		}
		mask.remove();
	});
	dialog.find('.cancel-btn').unbind('click').bind('click',function() {
		mask.remove();
	});
	mask.show();
	dialog.show();
}

function showTableInitConfigDialog() {
	var mask = $('.mask-layer-tpl').clone();
	mask.addClass('mask-layer').removeClass('mask-layer-tpl');
	var dialog = $('.table-init-config-dialog-tpl').clone();
	dialog.removeClass('table-init-config-dialog-tpl');
	dialog.addClass('dialog');
	mask.find('.dialog-zone').append(dialog);
	mask.appendTo(document.body);
	
	dialog.find('input[name=thead-row-num]').val('');
	dialog.find('select[name=check-group-type]').val('');
	dialog.find('input[name=has-thead]').unbind('change').bind('change', function(){
		//attr不行，只能用prop
		if($(this).prop('checked')) {
			dialog.find('input[name=thead-row-num]').removeAttr('disabled');
		}
		else {
			dialog.find('input[name=thead-row-num]').attr('disabled','disabled');
			dialog.find('input[name=thead-row-num]').val('');
		}
	});
	dialog.find('input[name=is-check-group]').unbind('change').bind('change', function(){
		if($(this).prop('checked')) {
			dialog.find('select[name=check-group-type]').removeAttr('disabled');
		}
		else {
			dialog.find('select[name=check-group-type]').attr('disabled','disabled');
			dialog.find('select[name=check-group-type]').val('');
		}
	});
	
	dialog.find('.ok-btn').unbind('click').bind('click',function(){
		var msg = [];
		var config = {};
		dialog.find('.config-item[disabled!=disabled]').each(function(){
			var name = $(this).attr('name');
			var value = $(this).val();
			var required = $(this).attr('required');
			if(required == 'required' && $.trim(value) <= 0) {
				msg.push(name + '不能为空!');
			}
			config[name] = value;
		});
		if(msg.length > 0) {
			alert(msg.join('\n'));
			return;
		}
		createTableWidget(config);
		$('.drop-zone').removeClass('drop-zone');
		mask.remove();
	});
	dialog.find('.cancel-btn').unbind('click').bind('click',function() {
		$('.drop-zone').removeClass('drop-zone');
		mask.remove();
	});
	mask.show();
	dialog.show();
}

function showSelectInitConfigDialog() {
	var mask = $('.mask-layer-tpl').clone();
	mask.addClass('mask-layer').removeClass('mask-layer-tpl');
	var dialog = $('.select-init-config-dialog-tpl').clone();
	dialog.removeClass('select-init-config-dialog-tpl');
	dialog.addClass('dialog');
	mask.find('.dialog-zone').append(dialog);
	mask.appendTo(document.body);
	
	dialog.find('input[name=real-value]').bind('dblclick', function() {
		showPickDatasetFieldDialog(dialog);
	});
	dialog.find('textarea[name=disp-value]').bind('dblclick', function() {
		showPickDatasetFieldDialog($(this));
	});
	dialog.find('textarea[name=text-val]').bind('dblclick', function() {
		showPickDatasetFieldDialog($(this));
	});
	dialog.find('select[name=is-row-data]').val('0');
	var dropZone = $('.drop-zone');
	if(dropZone.hasClass('cell')) {
		if($('#' + dropZone.attr('table')).hasClass('data-row')) {
			dialog.find('select[name=is-row-data]').val('1');
		}
		else {
			dialog.find('select[name=is-row-data]').val('0');
		}
	}
	else if(dropZone.hasClass('row-field')) {
		dialog.find('select[name=is-row-data]').val('1');
	}
	else {
		dialog.find('select[name=is-row-data]').val('0');
	}
	dialog.find('.ok-btn').unbind('click').bind('click',function(){
		var msg = [];
		var config = {};
		dialog.find('.config-item[disabled!=disabled]').each(function(){
			var name = $(this).attr('name');
			var value = $(this).val();
			var required = $(this).attr('required');
			if(required == 'required' && $.trim(value) <= 0) {
				msg.push(name + '不能为空!');
			}
			config[name] = value;
		});
		if(msg.length > 0) {
			alert(msg.join('\n'));
			return;
		}
		createSelectFieldWidget(config);
		$('.drop-zone').removeClass('drop-zone');
		mask.remove();
	});
	dialog.find('.cancel-btn').unbind('click').bind('click',function() {
		$('.drop-zone').removeClass('drop-zone');
		mask.remove();
	});
	mask.show();
	dialog.show();
}

function showWidgetInitConfigDialog(tplClass, callback) {
	var mask = $('.mask-layer-tpl').clone();
	mask.addClass('mask-layer').removeClass('mask-layer-tpl');
	var dialog = $('.' + tplClass).clone();
	dialog.removeClass(tplClass);
	dialog.addClass('dialog');
	mask.find('.dialog-zone').append(dialog);
	mask.appendTo(document.body);
	
	dialog.find('input[name=real-value]').bind('dblclick', function() {
		showPickDatasetFieldDialog(dialog);
	});
	dialog.find('textarea[name=disp-value]').bind('dblclick', function() {
		showPickDatasetFieldDialog($(this));
	});
	dialog.find('textarea[name=text-val]').bind('dblclick', function() {
		showPickDatasetFieldDialog($(this));
	});
	dialog.find('input[name=dataset-name]').bind('dblclick', function() {
		showPickDatasetFieldDialog(dialog);
	});
	dialog.find('input[name=page-count]').bind('dblclick', function() {
		showPickDatasetFieldDialog($(this));
	});
	dialog.find('input[name=row-count]').bind('dblclick', function() {
		showPickDatasetFieldDialog($(this));
	});
	dialog.find('select[name=is-row-data]').val('0');
	var dropZone = $('.drop-zone');
	if(dropZone.hasClass('cell')) {
		if($('#' + dropZone.attr('table')).hasClass('data-row')) {
			dialog.find('select[name=is-row-data]').val('1');
		}
		else {
			dialog.find('select[name=is-row-data]').val('0');
		}
	}
	else if(dropZone.hasClass('row-field')) {
		dialog.find('select[name=is-row-data]').val('1');
	}
	else {
		dialog.find('select[name=is-row-data]').val('0');
	}
	dialog.find('.ok-btn').unbind('click').bind('click',function(){
		var msg = [];
		var config = {};
		dialog.find('.config-item[disabled!=disabled]').each(function(){
			var name = $(this).attr('name');
			var value = $(this).val();
			var required = $(this).attr('required');
			if(required == 'required' && $.trim(value) <= 0) {
				msg.push(name + '不能为空!');
			}
			config[name] = value;
		});
		if(msg.length > 0) {
			alert(msg.join('\n'));
			return;
		}
		if(callback) {
			callback(config);
		}
		$('.drop-zone').removeClass('drop-zone');
		mask.remove();
	});
	dialog.find('.cancel-btn').unbind('click').bind('click',function() {
		$('.drop-zone').removeClass('drop-zone');
		mask.remove();
	});
	mask.show();
	dialog.show();
}