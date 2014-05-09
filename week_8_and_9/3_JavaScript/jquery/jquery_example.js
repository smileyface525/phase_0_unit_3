$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'})
 
//RELEASE 1:
  var bodyElement = $('body')
 
 
//RELEASE 2: 
$('h1').css({'color': 'blue', 'border-style': 'solid', 'visibility': 'visible'}) 
$('#mascot').html("Fence Lizards")
    // <h1> My DBC <span id="mascot">Mascot</span> </h1>

//RELEASE 3: Event Listener
  // Add the code for the event listener here 
  
$('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://www.nps.gov/band/naturescience/images/best_cu_fence_lizard.jpg')
})
$( "img" ).on('mouseleave', function() {
  $( this ).attr('src', "dbc_logo.jpg")
});
// $( "img" ).mouseleave(function() {
//   $(this).attr('src', "dbc_logo.jpg")
// });
 
 
//RELEASE 4 : Experiment on your own

$("img").click(function(){
  $("img").animate({
    left:'250px',
    opacity:'0.5',
    height:'120px',
    width:'150px'
  });
}); 
 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
