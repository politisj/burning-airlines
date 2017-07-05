var app = app || {};

app.AppRouter = Backbone.Router.extend({
    routes: {
    ''       : 'app',
    'search': 'search'
    },
    initialize: function(){
    },
    app: function(){
        var av = new app.AppView();
        av.render();
    },
    search: function(){
        console.log("Search View");
    }

});
