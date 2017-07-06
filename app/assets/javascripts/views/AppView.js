var app = app || {};

app.AppView = Backbone.View.extend({
  el: "#app",
  initialize: function(){
    app.flights = new app.Flights();
  },
  render: function(){
    template = $('#AppViewTemplate').html();
    this.$el.html(template);
    av = new app.SearchView();    
    this.$el.append(av.render().el);
  }
});
