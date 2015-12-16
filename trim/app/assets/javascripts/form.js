$(document).on("page:change", function() {
// validates total points of Questionnaire = 50 points
// works onclick of form submit button
  $( "#submitbox" ).click(function( event ) {
    var team = $( '#team' ).val();
    var oop = $( '#oop' ).val();
    var modular = $( '#modular' ).val();
    var workflow = $( '#workflow' ).val();
    var testing = $( '#testing' ).val();
    var database = $( '#database' ).val();
    var problem = $( '#problem' ).val();
    var javascript = $( '#javascript' ).val();
    var html = $( '#html' ).val();
    var css = $( '#css' ).val();
    var selfmotivate = $( '#selfmotivate' ).val();
    var communication = $( '#communication' ).val();
    var energy = $('#energy').val();
    var intelligence = $('#intelligence').val();
    var debugging = $( '#debugging' ).val();
    var pointTotal = Number(team) + Number(oop) + Number(modular) + Number(workflow) + Number(testing) + Number(database) + Number(problem) +
                     Number(javascript) + Number(html) + Number(css) + Number(selfmotivate) + Number(communication) +
                     Number(debugging) + Number(energy) + Number(intelligence);

    if (pointTotal < 50) {
      event.preventDefault();
      alert("You must use up to 50 points! Keep adding points your worth it!");
    }
    else if (pointTotal > 50) {
      event.preventDefault();
      alert("You have more than 50 points! Decrease some values!");
    }
    });
});
