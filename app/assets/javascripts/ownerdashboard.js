document.addEventListener("turbolinks:load",function(){
      
      $('#datepickerfrom').datepicker({
       
        format: 'yyyy-mm-dd',
        uiLibrary: 'bootstrap4'
    });
    $('#datepickerto').datepicker({
     
      format: 'yyyy-mm-dd',
      uiLibrary: 'bootstrap4'
    });

    $('.search').click(function() {
      $.ajax({
       type: "GET",
       url: "/searching_records",
       data: {"start_date" : $('#datepickerfrom').val(),"end_date" : $('#datepickerto').val()},
       dataType: "html",
       success: function(result) {
        alert("success");
       }
     });
    });
});
