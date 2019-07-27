document.addEventListener("turbolinks:load",function(){
    if(screen.width <=767 && screen.width >=240 )
    {
        $('.sidebar-open').click(function(){    
            $('.sidenav').slideDown();
            $(this).fadeOut(1000);
            
        });
        $('.container-fluid').click(function(){  
        $('.sidenav').slideUp();
        $('.sidebar-open').fadeIn(1000);
        });
   }
  });