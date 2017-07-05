var app = app || {};

app.AppRouter = Backbone.Router.extend({
  routes: {
    '': 'app'
  },

  app: function(){
    console.log('AppRouter::index');
    var appView = new app.AppView();
    appView.render();
  }

});
