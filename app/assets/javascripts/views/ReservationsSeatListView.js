var app = app || {};

app.ReservationSeatListView = Backbone.View.extend({
    tagName: 'table',
    render: function(){
        this.$el.empty();

        //append the table with a header
        //TODO Get the seat cols from the plane
        this.$el.append($('<tr>').html(_.map( ['A','B','C','D','E','F','G','H'], function(val){
            return '<th>' + val + '</th>'
        })));
        // append the table with row data
        //TODO get the seat rows from the plane
        for (var i = 0; i < 10; i++) {
            this.$el.append(new app.ReservationSeatView().render().el);
        }        
        return this;
    }
});
