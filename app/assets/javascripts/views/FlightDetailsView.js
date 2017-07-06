var app = app || {};

app.FlightDetailsView = Backbone.View.extend({
    render: function() {
        var template = _.template( $('#flightDetailsTemplate').html() );
        this.$el.html(template(this.model.attributes));
        this.$el.append(new app.ReservationSeatListView().render().el);
        this.$el.append($('<p>'));
        return this;
    }
});
