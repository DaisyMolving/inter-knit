var currentInstructions;

function projectOverview() {
  var height = window.innerHeight;
  var width = window.innerWidth;
  $("#projectOverview").dialog({
    dialogClass: "no-close",
    height: height,
    width: width,
    modal: true,
    autoOpen: true,
    hide: {
        effect: "fadeOut",
        duration: 1000
    }
  });
}

function nextInstructions() {
  $("#next-stage").on("click", function(){
    console.log("clicked!");
    $.when($(".navbar-header").toggle(function() {
      $(".navbar-header").hide(1000);
    })).done(function(){
      $(".navbar-header").show(900);
      $("#go-back").show();
    });
  });   
};

function previousInstructions() {
  $("#go-back").on("click", function() {
    console.log ("go back");
    $.when($(".navbar-header").toggle(function() {
      $(".navbar-header").hide(1000);
    })).done(function() {
      $(".navbar-header").show(900);
    });
  });
};

function showInstructions(id) {
  $.ajax({
    method: 'GET',
    url: '/projects/' + id,
    dataType: 'json'
  }).done(function(data){
    currentInstructions = data;

    // data is all of the instructions
    // populate right hand div with data[0] info
    $('#instructions-list').append($('<li id="instruction-list-item"></li>').html(currentInstructions[0].content)).append('<button class="js-howto" data-id="0">how</button>');

    $('.stage').html(currentInstructions[0].stage_id)

    
  })
}

$(document).ready(function(){


  console.log("document ready");

  $("#go-back").hide();

  projectOverview();

  nextInstructions();

  previousInstructions();

  
  $("body").on("click", '.closeModal',function(){
    console.log("click to close");
    $("#projectOverview").dialog( "close" );
    var id = $(this).data("id");
    showInstructions(id);
  });

  $("body").on("click", '#next-stage', function(){
    // then when "I'm done" button is clicked, add one to data-index like this:
    var currentIndex = $(this).data("index");
    $(this).data("index", currentIndex+1);
    console.log(currentIndex);
    var instructionsIndex = $(this).data("index");

    $('#instructions-list').append($('<li id="instruction-list-item"></li>').html(currentInstructions[instructionsIndex].content)).append('<button class="js-howto" data-id="' + (currentIndex + 1) + '">how</button>');
  });
    
  $("body").on("click", '#go-back', function(){

    var currentIndex = $('#next-stage').data("index");
    $('#next-stage').data("index", currentIndex - 1);

    console.log(currentIndex);


    $('#instructions-list li:last').remove();
    $('#instructions-list button:last').remove();


  });

  $("#howToVideo").hide();

  $("body").on("click", ".js-howto", function(e){
      console.log("clicked the how");


      var currentHowToId = ($(this).data('id'))


  $('#howToVideo').append($('<h1 class="howToTitle"> Here is how! </h1>'));

  $('#howToVideo').append($('<iframe src="' + currentInstructions[currentHowToId].info_video + '" height="400" width="600"></iframe>').html(currentInstructions[currentHowToId].info_video));

  $('#howToVideo').append($('<button id="got-it" type="submit" class="i-know-how">I Understand</button>'));
  
  $("#howToVideo").show();

  });

  $("body").on("click", '.i-know-how', function(){
    console.log("click to close");

    //here i need to delete video so that it can be repopulated with new video...

    $("#howToVideo").hide();
    $("#howToVideo").empty();
  });
});

