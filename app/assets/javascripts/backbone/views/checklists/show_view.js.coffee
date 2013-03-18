Myapp.Views.Checklists ||= {}

class Myapp.Views.Checklists.ShowView extends Backbone.View
  template: JST["backbone/templates/checklists/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
