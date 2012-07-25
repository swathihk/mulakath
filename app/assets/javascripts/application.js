// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled fil
jQuery(function(){

	$('#comment_tag').click(function(event){
        event.preventDefault();
     var url=location.href;
        //alert(url)

        var commenter =$("#comment_commenter").val();
        var message = $("#comment_message").val();
        var demo = "abc";
        
        $.get(url,{"commenter" :commenter, "message" :message, "demo" :demo },

                function(data){

                    //alert(data)

                }


                )



    });

});



