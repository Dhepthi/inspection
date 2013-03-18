Myapp.Views.Checklists ||= {}

class Myapp.Views.Checklists.IndexView extends Backbone.View
  template: JST["backbone/templates/checklists/index"]

  initialize: () ->
    @options.checklists.bind('reset', @addAll)

  addAll: () =>
    @options.checklists.each(@addOne)

  addOne: (checklist) =>
    view = new Myapp.Views.Checklists.ChecklistView({model : checklist})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(checklists: @options.checklists.toJSON() ))
    @addAll()

    return this
