# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



postId = 0
temparr = []


$ ->
  ctx = document.getElementById('myChart').getContext('2d')
  window.myChart = new Chart(ctx,
    type: 'bar'
    data:
      datasets: [ {
        label: 'temperaturen'
        backgroundColor : 'rgba(66, 134, 244, 0.1)'
        borderColor: '#0342a8'
        borderWidth: 1
      } ]
    options:
      legend: {
        labels: {
          fontColor: "black"
        }
      }
      scales:
        xAxes: [{
          ticks: {
            fontColor: "black"
            beginAtZero: true
          }
        }]
        yAxes: [{
          ticks: {
            fontColor: "black"
            beginAtZero: true
          }
        }])
