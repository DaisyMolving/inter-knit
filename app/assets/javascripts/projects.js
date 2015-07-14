// function projectOverview() {
//   var height = window.innerHeight;
//   var width = window.innerWidth;
//   $("#projectOverview").dialog({
//     dialogClass: "no-close",
//     height: height,
//     width: width,
//     modal: true,
//     autoOpen: true,
//     hide: {
//         effect: "fadeOut",
//         duration: 1000
//     }
//   });
// }

function showSidebar() {
  $(".navbar-header").toggle(function() {
    $(".navbar-header").css("right", "0px")   
  }) 
}

function hideSidebar() {
  $("#next-stage").on("click", function(){
    console.log("clicked!");
    $.when($(".navbar-header").toggle(function() {
      $(".navbar-header").hide(1000);
    })).done(function(){
      $(".navbar-header").show(900);
    });
  });   
};


$(document).ready(function(){
  console.log("document ready");
  hideSidebar();
  // projectOverview();
  // $("body").on("click", '.closeModal',function(){
  //   console.log("click to close");
  //   $("#projectOverview").dialog( "close" );
  // });
});

