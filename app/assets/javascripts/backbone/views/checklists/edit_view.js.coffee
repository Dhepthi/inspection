Myapp.Views.Checklists ||= {}

class Myapp.Views.Checklists.EditView extends Backbone.View
  template: JST["backbone/templates/checklists/edit"]

  events:
    "submit #edit-checklist": "update"

  update: (e) ->
   	@$el.fileupload
     add: (e, data) ->
       data.submit()

     done: (e, data) =>
       window.location = "/"

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
