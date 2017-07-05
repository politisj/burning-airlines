var app = app || {};

// Create instance of router for the whole app
app.router = new app.AppRouter();


$(document).ready(function(){

  // Load all secrets from the Rails DB into the collection using AJAX
  Backbone.history.start();

});
