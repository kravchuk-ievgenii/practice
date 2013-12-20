$ ->
  $('.btn_test').click ->
    $('.test').append('<h2>It works</h2>')

$(document).keydown (event) ->
  
  mine = $('.mine')

  one = $('.one')
  console.log one.offset()

  two = $('.two')
  console.log two.offset()


  
  switch event.keyCode
    when 68
      $('.one').animate {
        left: '+=5%'
        }, 500
    when 65
      $('.one').animate {
        left: '-=5%'
        }, 500
    when 87
      $('.one').animate {
        top: '-=5%'
        }, 500
    when 83
      $('.one').animate {
        top: '+=5%'
        }, 500
      


    when 102
      $('.two').animate {
        left: '+=5%'
        }, 500
    when 100
      $('.two').animate {
        left: '-=5%'
        }, 500
    when 104
      $('.two').animate {
        top: '-=5%'
        }, 500
    when 101
      $('.two').animate {
        top: '+=5%'
        }, 500
    when 13
      mine.append(mine.clone())

     