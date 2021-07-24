

/* responsive menu */
function openNav() {
    $('body').addClass("active");
    document.getElementById("mySidenav").style.width = "280px";
}
function closeNav() {
    $('body').removeClass("active");
    document.getElementById("mySidenav").style.width = "0";
}

 /* loader */
/* Slider Loader*/
$(window).load(function myFunction() {
    $(".s-panel .loader").removeClass("wrloader");
});

//go to top
$(document).ready(function () {
    $("#common-home").parent().addClass("home-page");
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('#scroll').fadeIn();
        } else {
            $('#scroll').fadeOut();
        }
    });
    $('#scroll').click(function () {
        $("html, body").animate({scrollTop: 0}, 600);
        return false;
    });
});





$(document).ready(function () {
    if ($(window).width() <= 767) {
        $('.menuwidth').appendTo('.appmenu');
        $('.inuser').appendTo('.appcart');
        $('.xscartp').appendTo('.appcart');
        // $('.xsw').appendTo('.haccount');
        // $('.xsc').appendTo('.haccount');
        $('.xsla').appendTo('.haccount');
        $('.xscu').appendTo('.haccount');
    }
});


// function openSearch() {
//     $('body').addClass("active-search");
//     document.getElementById("search").style.height = "auto";
//     $('#search').addClass("sideb");
//     $('.search_query').attr('autofocus', 'autofocus').focus();
// }
// function closeSearch() {
//     $('body').removeClass("active-search");
//     document.getElementById("search").style.height = "0";
//     $('#search').addClass("siden");
//     $('.search_query').attr('autofocus', 'autofocus').focus();
// }


$(document).ready(function () {
$("#ratep,#ratecount").click(function() {
    $('body,html').animate({
        scrollTop: $(".product-tab").offset().top 
    }, 1500);
});
});

$(document).ready(function () {
$('.dropdown button.test').on("click", function(e)  {
    $(this).next('ul').toggle();
    e.stopPropagation();
    e.preventDefault();
});
});


/* dropdown effect of account */
$(document).ready(function () {
    if ($(window).width() <= 767) {
    $('.catfilter').appendTo('.appres');

    $('.dropdown a.account').on("click", function(e) {
        $(this).next('ul').toggle();
        e.stopPropagation();
        e.preventDefault();
    });
}
});
/* dropdown */

/* sticky header */
//   if ($(window).width() > 992) {
//  $(document).ready(function(){
//       $(window).scroll(function () {
//         if ($(this).scrollTop() > 100) {
//             $('.hsticky').addClass('fixed fadeInDown animated');
//         } else {
//             $('.hsticky').removeClass('fixed fadeInDown animated');
//         }
//       });
// });
// };




$(document).ready(function(){
       if ($(window).width() >= 768){
    var count_block = $('.moremenuh').length;
    var number_blocks = 12;
    //console.log(count_block);
    if(count_block < number_blocks){
        return false; 
    }
    else {
        $('.moremenuh').each(function(i,n){
            $('moremenuh').addClass(i);
            if(i == number_blocks) {
            $(this).append('<li class="view_more my-menu"><i class="fa fa-plus thumb_img"></i><a class="dropdown-toggle">More Categories</a></li>');
            }
            if(i> number_blocks) {
            $(this).addClass('wr_hide_menu').hide();
            }
        });
        $('.view_more').click(function() {
            $(this).toggleClass('active');
            $('.wr_hide_menu').slideToggle();
        });
    }
}
});

/* left column responsive */
function wbFilters(){

  if ($(window).width() <= 767) {
    $('#column-left').appendTo('#content');
    $('.filterp').appendTo('.xs-filter');
  } else {
    $('#column-left').appendTo('#column-left');
  }
}
$(document).ready(function(){ wbFilters(); });
$(window).resize(function(){ wbFilters(); });


// $(document).ready(function(){
//        if ($(window).width() >= 1410){
//     var count_block = $('.moremenu').length;
//     var number_blocks = 10;
//     //console.log(count_block);
//     if(count_block < number_blocks){
//         return false; 
//     }
//     else {
//         $('.moremenu').each(function(i,n){
//             $('moremenu').addClass(i);
//             if(i == number_blocks) {
//             $(this).append('<li class="view_more my-menu"><a class="dropdown-toggle"><i class="fa fa-plus thumb_img pull-left"></i>More Categories</a></li>');
//             }
//             if(i> number_blocks) {
//             $(this).addClass('wr_hide_menu').hide();
//             }
//         });
//         $('.view_more').click(function() {
//             $(this).toggleClass('active');
//             $('.wr_hide_menu').slideToggle();
//         });
//     }
// }
// });

// $(document).ready(function(){
//        if ($(window).width() >= 1200 && $(window).width() <= 1409){
//     var count_block = $('.moremenu').length;
//     var number_blocks = 7;
//     //console.log(count_block);
//     if(count_block < number_blocks){
//         return false; 
//     }
//     else {
//         $('.moremenu').each(function(i,n){
//             $('moremenu').addClass(i);
//             if(i == number_blocks) {
//             $(this).append('<li class="view_more my-menu"><a class="dropdown-toggle"><i class="fa fa-plus thumb_img pull-left"></i>More Categories</a></li>');
//             }
//             if(i> number_blocks) {
//             $(this).addClass('wr_hide_menu').hide();
//             }
//         });
//         $('.view_more').click(function() {
//             $(this).toggleClass('active');
//             $('.wr_hide_menu').slideToggle();
//         });
//     }
// }
// });

// $(document).ready(function(){
//        if ($(window).width() >= 992 && $(window).width() <= 1199){
//     var count_block = $('.moremenu').length;
//     var number_blocks = 7;
//     //console.log(count_block);
//     if(count_block < number_blocks){
//         return false; 
//     }
//     else {
//         $('.moremenu').each(function(i,n){
//             $('moremenu').addClass(i);
//             if(i == number_blocks) {
//             $(this).append('<li class="view_more my-menu"><a class="dropdown-toggle"><i class="fa fa-plus thumb_img pull-left"></i>More Categories</a></li>');
//             }
//             if(i> number_blocks) {
//             $(this).addClass('wr_hide_menu').hide();
//             }
//         });
//         $('.view_more').click(function() {
//             $(this).toggleClass('active');
//             $('.wr_hide_menu').slideToggle();
//         });
//     }
// }
// });




