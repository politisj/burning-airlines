var app = app || {};

app.AppRouter = Backbone.Router.extend({
    routes: {
    ''       : 'app'    
    },
    initialize: function(){
    },
    app: function(){
        var av = new app.AppView();
        av.render();
    }
});
