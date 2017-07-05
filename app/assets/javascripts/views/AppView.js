var app = app || {};

app.AppView = Backbone.View.extend({
  el: "#app",

  render: function(){
    this.$el.html( $('#AppViewTemplate').html() );
    console.log('app.AppView::render');
  }

});
