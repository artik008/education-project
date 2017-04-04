// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_select2
//= require_select2_locale_pt-RU
//= require_tree .


$(document).ready(function() {
	$("#div1").hide();
	$("input[id='fsbch']").hide();	
	$("#fsb").hide();
	$("img").bind('click', function() {
		$("#div1").show();
	});
	$("#a1").bind('click', function() {
		$("#div1").hide();
	});
	$("#a2").click(function() {
		$("#fsb").click();
		$("#div1").hide();
	});
        $('input').iCheck({
        	checkboxClass: 'icheckbox_minimal-blue',
    		radioClass: 'iradio_minimal-blue'
        });
        $("form[id^='edit_todo_']").on('click',function() {
		$(this).submit();
	});
	$(".iCheck-helper").click(function() {
		$(this).parent().parent().parent().submit();
	});
	$("div:has('#ch1')").hide();
	$("input[id='fsbch']").click(function() {
		$(this).parent().parent().parent().submit();
	});
	$("label[for^='_']").click(function() {
		$(this).parent().parent().submit();
	});
	$('select').select2({
		placeholder: "Выберите категорию...",
		dropdownCssClass: 'no-search'
	});
});

