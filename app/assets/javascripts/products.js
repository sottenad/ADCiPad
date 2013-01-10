$(function(){
    $('#years li input').change(function(){
        $(this).parent().find(':checkbox').attr('checked', this.checked);
    });
    $('#years .title').click(function(){
        $(this).toggleClass('open');
        $(this).parent().find('ul').toggle();
    })



})