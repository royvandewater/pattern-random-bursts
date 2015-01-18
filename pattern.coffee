_ = require 'lodash'

class Pattern
  constructor: ->
    @ledCount = 14
    @colors = _.times 200, -> '#000'
    @colors.push '#100'
    @colors.push '#010'
    @colors.push '#001'
    @colors.push '#110'
    @colors.push '#011'
    @colors.push '#101'

  frame: =>
    _.times @ledCount, => _.sample @colors

  generate: =>
    _.times 400, (i) =>
      @frame()

module.exports = Pattern
