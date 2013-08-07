class WdiBackboneDemo.Routers.Questions extends Backbone.Router
  routes:
    '': 'index'
    'questions/:id': 'show'

  index: ->
    view = new WdiBackboneDemo.Views.QuestionsIndex()
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Question #{id}"