$(document).ready(function() {
    $.ajax({
      url: '/film-system/rest/movie',
      method: 'GET',
      success: function(response) {
        var movieCardContainer = $('#movie-cards-container');
  
     
        response.forEach(function(movie) {
          var id = movie.id;
          var title = movie.title;
          var image = movie.image;
          
          console.log(id);
          console.log(title);
          console.log(image);
  
          var cardHtml = `
            <div class="card">
              <a href="#single-movie-page" id="singe-movie-page-link" data-id="${id}">
                <img src="${image}" class="movie-image">
              </a>
              <div class="container-box">
                <h2 class="movie-title">${title}</h2>
                <div class="for-buttons">
                  <button type="button" class="add-favorites">
                    <span class="material-symbols-outlined"> </span> Favorite
                  </button>
                  <button type="button" class="add-watchlist">
                    <span class="material-symbols-outlined"> </span> Watchlist
                  </button>
                </div>
              </div>
            </div>
          `;
  
          movieCardContainer.append(cardHtml);
        });
      },
      error: function(error) {
        console.log('Error fetching movie data:', error);
      }
    });
  });
  
  $(document).ready(function() {
    $.ajax({
      url: '/film-system/rest/director',
      method: 'GET',
      success: function(response) {
        var directorCardContainer = $('#director-cards-container');
  
        
        response.forEach(function(director) {
          var id = director.id;
          var name = director.name;
          var image = director.image;
  
          console.log(id);
          console.log(name);
          console.log(image);
  
          var cardHtml = `
          <div class="card">
          <a href="#single-director-page" id="single-director-page-link" data-id="${id}"><img
          src="${image}"
            class="director-image"
          /></a>
          <div class="container-box">
            <h2 class="director-name">${name}</h2>
            <button type="button" class="add-favorites">
              <span class="material-symbols-outlined"> </span> Favorite
            </button>
          </div>
        </div>
          `;
  
          directorCardContainer.append(cardHtml);
        });
      },
      error: function(error) {
        console.log('Error fetching director data:', error);
      }
    });
  });

  $(document).ready(function() {
    $.ajax({
      url: '/film-system/rest/movie',
      method: 'GET',
      success: function(response) {
        var movieGridCardContainer = $('#movie-grid-cards-container');
  
     
        response.forEach(function(movie) {
          var id = movie.id;
          var title = movie.title;
          var image = movie.image;
          
          console.log(id);
          console.log(title);
          console.log(image);
  
          var cardHtml = `
          <div class="col">
          <div class="card">
          <a href="#single-movie-page" id="singe-movie-page-link" data-id="${id}">
            <img src="${image}" class="movie-image" />
            </a>
            <div class="container-box">
              <h2 class="movie-title">${title}</h2>
              <div class="for-buttons">
                <button type="button" class="add-favorites">
                  <span class="material-symbols-outlined"> </span> Favorite
                </button>
                <button type="button" class="add-watchlist">
                  <span class="material-symbols-outlined"> </span> Watchlist
                </button>
              </div>
            </div>
          </div>
        </div>
          `;
  
          movieGridCardContainer.append(cardHtml);
        });
      },
      error: function(error) {
        console.log('Error fetching movie data:', error);
      }
    });
  });

  $(document).ready(function() {
    $.ajax({
      url: '/film-system/rest/director',
      method: 'GET',
      success: function(response) {
        var directorGridCardContainer = $('#director-grid-cards-container');
  
        
        response.forEach(function(director) {
          var id = director.id;
          var name = director.name;
          var image = director.image;
  
          console.log(id);
          console.log(name);
          console.log(image);
  
          var cardHtml = `
          <div class="col">
        <div class="card">
        <a href="#single-director-page" id="single-director-page-link" data-id="${id}">
          <img
            src="${image}"
            class="director-image kubrick"
          /></a>
          <div class="container-box">
            <h2 class="director-name">${name}</h2>
            <button type="button" class="add-favorites">
              <span class="material-symbols-outlined"> </span> Favorite
            </button>
          </div>
        </div>
      </div>
          `;
  
          directorGridCardContainer.append(cardHtml);
        });
      },
      error: function(error) {
        console.log('Error fetching director data:', error);
      }
    });
  });