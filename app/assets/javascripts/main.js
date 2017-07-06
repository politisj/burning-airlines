var app = app || {};

_.templateSettings = {
     evaluate : /\{\[([\s\S]+?)\]\}/g,
     interpolate : /\{\{([\s\S]+?)\}\}/g
};

$(document).ready(function(){
  app.router = new app.AppRouter();
  Backbone.history.start();
  app.flights.fetch();
});
