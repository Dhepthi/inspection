class Myapp.Models.Checklist extends Backbone.Model
  paramRoot: 'checklist'

  defaults:
    title: null
    comments: null
    photo: null

class Myapp.Collections.ChecklistsCollection extends Backbone.Collection
  model: Myapp.Models.Checklist
  url: '/checklists'
