AsteroidsView = require './asteroids-view'
require './asteroids-game'

module.exports =
  asteroidsView: null

  activate: (state) ->
    @asteroidsView = new AsteroidsView(state.asteroidsViewState)
    startAsteroids()

  deactivate: ->
    @asteroidsView.destroy()

  serialize: ->
    asteroidsViewState: @asteroidsView.serialize()
