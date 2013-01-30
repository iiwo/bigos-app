//= require jquery
//= require jquery_ujs
//= require foundation
//= require tinymce
//= require cocoon
//= require pages




$(document).ready(function(){
    tinyMCE.init({
        "mode":"specific_textareas",
        "editor_selector":"tinymce",
        "theme":"advanced",
        "language":"en",
        "theme_advanced_toolbar_location": "top",
        "theme_advanced_toolbar_align": "left",
        "theme_advanced_statusbar_location": "bottom",
        "theme_advanced_buttons1" : "bold, italic, underline, separator, justifyleft, justifyright, justifyfull, separator, bullist, numlist, link",
        "theme_advanced_buttons2" : "",
        "theme_advanced_buttons3" : "",
        "theme_advanced_resizing" : false,
        "theme_advanced_resizing_min_width": $("this").closest("div").width()

    });
});
