var app = app || {};

app.FlightDetailsView = Backbone.View.extend({
    render: function() {
        var template = _.template( $('#flightDetailsTemplate').html() );        
        this.$el.html(template(this.model.attributes));
        return this;
    }
});
