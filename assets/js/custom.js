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
  app.route({view: 'login-page', load: 'login.html'})
  app.route({view: 'register-page', load: 'register.html'})
  app.route({view: 'single-movie-page', load: 'single-movie-page.html'})
  app.route({view: 'single-director-page', load: 'single-director-page.html'})  
  // run app
  app.run();

  $(document).on('click', '#all-directors-link', function(e) {
    e.preventDefault();
    window.location.hash = 'favorites-directors-page';
  });

  $(document).on('click', '#all-movies-link', function(e) {
    e.preventDefault();
    window.location.hash = 'favorites-movies-page';
  });

  $(document).on('click', '.logo-text', function(e) {
    e.preventDefault();
    window.location.hash = 'homepage';
  });

  $(document).on('click', '.footer-logo', function(e) {
    e.preventDefault();
    window.location.hash = 'homepage';
  });

  $(document).on('click', '#single-movie-page-link', function(e) {
    e.preventDefault();
    window.location.hash = 'single-movie-page';
  });

  $(document).on('click', '#single-director-page-link', function(e) {
    e.preventDefault();
    window.location.hash = 'single-director-page';
  });

  app.route({
    view: 'login-page',
    onCreate: function() {
      $('.navbar').addClass('hidden');
      $('.footer').addClass('hidden');
    },
    onReady: function() {
      $('.navbar').addClass('hidden');
      $('.footer').addClass('hidden');
    }
  });

  app.route({
    view: 'register-page',
    onCreate: function() {
      $('.navbar').addClass('hidden');
      $('.footer').addClass('hidden');
    },
    onReady: function() {
      $('.navbar').addClass('hidden');
      $('.footer').addClass('hidden');
    }
  });

  app.route({
    view: 'homepage',
    onReady: function() {
      $('.navbar').removeClass('hidden');
      $('.footer').removeClass('hidden');
    }
  });

});


