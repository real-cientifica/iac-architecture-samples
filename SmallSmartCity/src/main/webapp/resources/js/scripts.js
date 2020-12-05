$(document).ready(function() {

    const $valueSpan = $('.valueSpan2');
    const $valueSpan2 = $('.valueSpan3');
    const $value = $('#customRange11');
    const $values = $('#customRange12');
    $valueSpan.html($value.val());
    $valueSpan2.html($values.val());

    $value.on('input change', () => {
  
      $valueSpan.html($value.val());
    });

    $values.on('input change', () => {
  
      $valueSpan2.html($values.val());
    });
  });

  
