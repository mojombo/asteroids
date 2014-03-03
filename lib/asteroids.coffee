AsteroidsView = require './asteroids-view'

module.exports =
  asteroidsView: null

  activate: (state) ->
    @asteroidsView = new AsteroidsView(state.asteroidsViewState)

  deactivate: ->
    @asteroidsView.destroy()

  serialize: ->
    asteroidsViewState: @asteroidsView.serialize()
