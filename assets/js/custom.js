$(document).ready(function() {

  var app = $.spapp({pageNotFound : 'error_404'}); // initialize

  // define routes
  app.route({
    view: 'homepage'
  });
  app.route({view: 'movies-page', load: 'movies-page.html' });
  app.route({view: 'directors-page', load: 'directors-page.html' });
  app.route({view: 'watchlist-page', load: 'watchlist.html'})
  app.route({view: 'favorites-movies-page', load: 'favorites-movies.html'})
  app.route({view: 'favorites-directors-page', load: 'favorites-directors.html'})
  app.route({view: 'single-movie-page', load: 'single-movie-page.html'})
  app.route({view: 'single-director-page', load: 'single-director-page.html'})  
  // run app
  app.run();

  $(document).on('click', '#all-directors-link', function(e) {
    e.preventDefault();
    window.location.hash = 'favorites-directors-page';
  });

});