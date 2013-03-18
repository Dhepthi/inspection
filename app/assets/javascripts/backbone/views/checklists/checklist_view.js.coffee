Myapp.Views.Checklists ||= {}

class Myapp.Views.Checklists.ChecklistView extends Backbone.View
  template: JST["backbone/templates/checklists/checklist"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
