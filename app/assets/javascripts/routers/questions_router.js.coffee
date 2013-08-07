class WdiBackboneDemo.Routers.Questions extends Backbone.Router
  routes:
    '': 'index'
    'questions/:id': 'show'

  initialize: ->
    @collection = new WdiBackboneDemo.Collections.Questions()
    @collection.fetch(reset: true)

  index: ->
    view = new WdiBackboneDemo.Views.QuestionsIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Question #{id}"