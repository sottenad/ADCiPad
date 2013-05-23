$(function(){ 
    $('#years li input').change(function(){
    	console.log(this.checked);
        $(this).parent().find('input[type=checkbox]').prop('checked', this.checked);
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