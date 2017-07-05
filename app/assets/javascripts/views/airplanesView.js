var app = app || {};

app.AirplaneView = Backbone.View.extend({
    tagName: 'li',
    initialize: function(){
    },
    render: function() {
        var template = _.template( $('#planesViewTemplate').html() );
        this.$el.html( template(this.model.attributes) );
        this.$el.appendTo( "#planes" );
    }
});
