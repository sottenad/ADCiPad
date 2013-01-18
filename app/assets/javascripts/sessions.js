$(function(){
	$("form#new_user").bind('ajax:success', function(evt, data, status, xhr) {
	
	        if(data.success == true) {
	                // if it is successful it will redirect to the location 
	                // returned by the custom sessions controller line:
	                // return render :json => {:success => true, :redirect => after_sign_in_path_for(resource)}
	                
	                window.location.href = data.redirect;
	                
	        } else {
	                //if it is a failure do the following
	        }
	});
});