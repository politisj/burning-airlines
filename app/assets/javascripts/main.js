var app = app || {};

//app.flights = new app.Flights();

// Create instance of router for the whole app
app.router = new app.AppRouter();
app.airplanes = new app.Airplanes();

$(document).ready(function(){

  // Load all secrets from the Rails DB into the collection using AJAX
  Backbone.history.start();
  app.airplanes.fetch();
  

  //app.flights.fetch();

});
