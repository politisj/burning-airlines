var app = app || {};

app.SearchView = Backbone.View.extend({
    events : {
        "click button" : "search",
        "click a" : "showDetailsPage"
    },
    initialize: function() {
    },
    render: function(){
      template = $('#searchTemplate').html();
      this.$el.html(template);
      return this;
  },
  search: function(){
      this.$el.find('li').remove();
      var _from = $('#from').val();
      var _to = $('#to').val();

      app.flights.fetch({ data : { 'from' : _from , 'to': _to }});
      self = this;
      app.flights.each(function(flight){
            var fv = new app.FlightView({ model: flight });
            self.$el.append(fv.render().el);
      });
  },
  showDetailsPage: function(evt) {
      evt.preventDefault();
      if (evt.type === 'click') {
          $dvPage = $('#main-details-view');
          $dvPage.empty();
          fdv = new app.FlightDetailsView({model: app.flights.findWhere({ flight_no: $(evt.currentTarget).text()}) });
          $dvPage.append(fdv.render().el);
      }
  }

});
