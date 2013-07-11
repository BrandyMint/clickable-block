$ ->
  $('[rel*="clickable-block"]').click (event) ->
    link = $(this).attr('data-target')
    target = $(this).find(link).attr('href')
    if target && target.length > 0
      if event.shiftKey || event.ctrlKey || event.metaKey
        window.open(target, '_blank')
      else
        window.location = target
