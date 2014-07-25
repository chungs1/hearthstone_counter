
$(document).on('page:change', function() {
  $('#primary-content').attr('class', $('#primary-content').attr('class') + ' animated fadeIn');
});

$(document).on('page:fetch', function() {
  $('#primary-content').attr('class', $('#primary-content').attr('class') + ' animated fadeOut');
});