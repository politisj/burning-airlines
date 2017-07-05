var app = app || {};

app.AppView = Backbone.View.extend({
  el: "#app",
  initialize: function(){
      this.collection = new app.Airplanes();
      this.collection.fetch();
      this.listenTo( this.collection, 'add', this.render );     
  },
  render: function(){
    template = $('#AppViewTemplate').html();
    this.$el.html(template);
    this.collection.each(function(plane){
        new app.AirplaneView({model: plane}).render();
    });
  }
});
