Myapp.Views.Checklists ||= {}

class Myapp.Views.Checklists.NewView extends Backbone.View
  template: JST["backbone/templates/checklists/new"]

  events:
    "submit #new-checklist": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
   	@$el.fileupload
     add: (e, data) ->
       data.submit()

     done: (e, data) =>
       window.location = "/"
  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
