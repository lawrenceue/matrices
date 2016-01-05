Template.theInput.events
  'change #theInput': (event, template) -> 
   x = template.find('#theInput').value
   a = x.replace(/\$|\,/g, '')
   template.find('#theOutput').value = split(a)
   return




split = (x) ->
  splitter = /\s|\t|\n/g
  y = x.split(splitter)
  a = []

  pushToA = (x) ->
    if !isNaN(parseInt(x)) and a.indexOf(parseInt(x)) == -1
      a.push parseInt(x)
    return

  y.forEach pushToA
  z = a.sort((a, b) ->
    a - b
  )
  a.join('\n')
