# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
 if ($('textarea').length > 0)
    data = $('textarea')
    $.each data, (i) ->
         CKEDITOR.replace(data[i].id)


$(document).ready(ready)
$(document).on('page:load', ready)
