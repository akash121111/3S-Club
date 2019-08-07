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
       window.location.assign("/searching_records?start_date="+$('#datepickerfrom').val()+"&end_date="+$('#datepickerto').val());
     
    });
    if($('#datepickerfrom').val()===""){
      if($('#datepickerto').val()===""){
        $('#datepickerfrom').val(moment().format("YYYY-MM-DD"));
        $('#datepickerto').val(moment().format("YYYY-MM-DD"));
      }
    }
    
});
