{View} = require 'atom'

module.exports =
class AsteroidsView extends View
  @content: ->
    @div class: 'asteroids overlay from-top', =>
      @div "The Asteroids package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "asteroids:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "AsteroidsView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
