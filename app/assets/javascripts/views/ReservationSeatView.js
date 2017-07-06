var app = app || {};

app.ReservationSeatView = Backbone.View.extend({
    tagName: 'tr',
    events : {
        "click td" : "reserveSeat"
    },
    render: function(){
        //TODO get the users reserved seat and put his name in the cell
        this.$el.html(_.map(_.range(1,9), function(val,key){
            return '<td>' + val + '</td>';
        }));

        return this;
    },
    reserveSeat: function(evt){
        evt.preventDefault();
        if (evt.type == 'click' ) {
            //TODO highlight the seat
            alert('Reserving seat for User :' + $(evt.currentTarget).text());
        }

    }
});
