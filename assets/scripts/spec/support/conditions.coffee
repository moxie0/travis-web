@notEmpty = (selector) ->
  -> $(selector).text().trim() != ''

@hasText = (selector, text) ->
  -> $(selector).text().trim() == text

@reposRendered   = notEmpty('#repos li.selected')
@myReposRendered = -> notEmpty('#repos li.selected')() && $('#left #tab_owned').hasClass('active')
@buildRendered   = notEmpty('#summary .number')
@buildsRendered  = notEmpty('#builds .number')
@jobRendered     = notEmpty('#summary .number')
@jobsRendered    = notEmpty('#jobs .number')
@queuesRendered  = notEmpty('#queue_linux li')
@workersRendered = notEmpty('.worker')
@logRendered     = notEmpty('#log p')
@appRendered     = -> $('.ember-view.application').length

@sidebarTabsRendered = notEmpty('#right #tab_workers a')
