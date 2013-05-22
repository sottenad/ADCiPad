$(function(){ 
    $('#years li input').change(function(){
        $(this).parent().find(':checkbox').attr('checked', this.checked);
    });
    $('#years .title').click(function(){
    	if($(this).hasClass('open')){
	    	$(this).removeClass('open');
        	$(this).parent().find('ul').hide();	    	
    	}else{
        	$(this).addClass('open');
        	$(this).parent().find('ul').show();
        }
    })
})