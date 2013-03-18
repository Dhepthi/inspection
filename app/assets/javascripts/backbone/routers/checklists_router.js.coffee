class Myapp.Routers.ChecklistsRouter extends Backbone.Router
  initialize: (options) ->
    @checklists = new Myapp.Collections.ChecklistsCollection()
    @checklists.reset options.checklists

  routes:
    "new"      : "newChecklist"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newChecklist: ->
    @view = new Myapp.Views.Checklists.NewView(collection: @checklists)
    $("#checklists").html(@view.render().el)

  index: ->
    @view = new Myapp.Views.Checklists.IndexView(checklists: @checklists)
    $("#checklists").html(@view.render().el)

  show: (id) ->
    checklist = @checklists.get(id)

    @view = new Myapp.Views.Checklists.ShowView(model: checklist)
    $("#checklists").html(@view.render().el)

  edit: (id) ->
    checklist = @checklists.get(id)

    @view = new Myapp.Views.Checklists.EditView(model: checklist)
    $("#checklists").html(@view.render().el)
