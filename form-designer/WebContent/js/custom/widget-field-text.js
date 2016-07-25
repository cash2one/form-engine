/*创建读写字段控件*/
function createTextFieldWidget(config) {
	var dropZone = $('.drop-zone');
	var field = document.createElement('span');
	$(field).addClass('widget-field-text');
	$(field).addClass('droppable');
	$(field).attr('field', config['field-name']);
	$(field).attr('type', 'text');
	if(config['is-row-data'] === '1') {
		$(field).addClass('row-field');
	} 
	else {
		$(field).addClass('main-field');
	}
	$(field).css({
		'display':'inline-block',
		'overflow':'hidden',
		'text-align':'center',
		'white-space':'normal',
		'vertical-align':'bottom',
		'width':'auto'
	});
	registerWidgetMousedownHandler(field);
	if(dropZone.hasClass('widget-container')) {
		$(field).appendTo(dropZone);
	}
	else {
		dropZone.before(field);
	}
	
	var valueField = document.createElement('span');
	$(valueField).addClass('value-field');
	$(valueField).hide();
	$(valueField).html(config['real-value']);
	$(valueField).appendTo(field);
	
	var displayField = document.createElement('span');
	$(displayField).addClass('display-field');
	$(displayField).html(config['disp-value']);
	$(displayField).appendTo(field);
	
	var width = $(field).width();
	$(field).width(width);
}
