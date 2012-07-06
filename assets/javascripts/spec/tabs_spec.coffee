describe 'The tabs view', ->
  describe 'on the "index" state', ->
    beforeEach ->
      app ''
      waitFor repositoriesRendered

    it 'has a "current" tab linking to the current build', ->
      href = $('#tab_current a').attr('href')
      expect(href).toEqual '#!/travis-ci/travis-core'

    it 'has a "history" tab linking to the builds list', ->
      href = $('#tab_builds a').attr('href')
      expect(href).toEqual '#!/travis-ci/travis-core/builds'

  describe 'on the "current" state', ->
    beforeEach ->
      app '!/travis-ci/travis-core'
      waitFor repositoriesRendered
      waitFor buildRendered

    it 'has a "current" tab linking to the current build', ->
      href = $('#tab_current a').attr('href')
      expect(href).toEqual '#!/travis-ci/travis-core'

