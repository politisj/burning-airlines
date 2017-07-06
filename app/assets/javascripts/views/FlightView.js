var app = app || {};

app.FlightView = Backbone.View.extend({
 tagName: "li",
  render: function() {
    var template = _.template($('#flightViewTemplate').html());
    this.$el.html(template(this.model.attributes));
    return this;
  }
});
