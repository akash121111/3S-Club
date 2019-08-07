document.addEventListener("turbolinks:load",function(){ 
      $('#datepickerfrom').datepicker({
        format: 'dd-mm-yyyy',
        uiLibrary: 'bootstrap4'
    });
    $('#datepickerto').datepicker({
      format: 'dd-mm-yyyy',
      uiLibrary: 'bootstrap4'
    });

    $('.search').click(function() {
       window.location.assign("/searching_records?start_date="+$('#datepickerfrom').val()+"&end_date="+$('#datepickerto').val());
     
    });
    if($('#datepickerfrom').val()===""){
      if($('#datepickerto').val()===""){
        $('#datepickerfrom').val(moment().format("DD-MM-YYYY"));
        $('#datepickerto').val(moment().format("DD-MM-YYYY"));
      }
    }
});
