$ ->
  home = $('#home')
  
  items = $('#servers',home).find('.item')
  $(items).each (i,item) ->
    shot = $(item).find('.shot')
    img = $(shot).find('img')
    if !img? or $(img).size() < 1
      return true
    $(shot).css
      'background-image': 'url('+$(img).attr('src')+')'
    $(img).remove()
    return true