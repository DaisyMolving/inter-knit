function howToVideo() {
  var height = window.innerHeight;
  var width = window.innerWidth;
  $("#howToVideo").dialog({
    dialogClass: "no-close",
    height: height,
    width: width,
    modal: true,
    autoOpen: false,
    hide: {
        effect: "fadeOut",
        duration: 1000
    }
  });
}

$(document).ready(function(){
  console.log("document ready");
  $("#howButton").on("click", "#howButton", function(){
      console.log("clicked the how")
  });

  $("#got-it").on("click", '.i-know-how',function(){
    console.log("click to close");
    $("#howToVideo").dialog( "close" );
  });
});