$(document).ready(function () {
  $.ajax({
    url: "/film-system/rest/movie",
    method: "GET",
    success: function (response) {
      var movieCardContainer = $("#movie-cards-container");

      response.forEach(function (movie) {
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
    error: function (error) {
      console.log("Error fetching movie data:", error);
    },
  });
});

$(document).ready(function () {
  $.ajax({
    url: "/film-system/rest/director",
    method: "GET",
    success: function (response) {
      var directorCardContainer = $("#director-cards-container");

      response.forEach(function (director) {
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
      $(document).on(
        "click",
        "#single-director-page-link",
        handleDirectorLinkClick
      );
    },
    error: function (error) {
      console.log("Error fetching director data:", error);
    },
  });
});

$(document).ready(function () {
  $.ajax({
    url: "/film-system/rest/movie",
    method: "GET",
    success: function (response) {
      var movieGridCardContainer = $("#movie-grid-cards-container");

      response.forEach(function (movie) {
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
    error: function (error) {
      console.log("Error fetching movie data:", error);
    },
  });
});

$(document).ready(function () {
  $.ajax({
    url: "/film-system/rest/director",
    method: "GET",
    success: function (response) {
      var directorGridCardContainer = $("#director-grid-cards-container");

      response.forEach(function (director) {
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
            class="director-image
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
      $(document).on(
        "click",
        "#single-director-page-link",
        handleDirectorLinkClick
      );
    },
    error: function (error) {
      console.log("Error fetching director data:", error);
    },
  });
});

$(document).ready(function () {
  $.ajax({
    url: "/film-system/rest/full/movie",
    method: "GET",
    success: function (response) {
      var movieGridLargeCardContainer = $("#movie-grid-large-cards-container");

      response.forEach(function (movie) {
        var id = movie.id;
        var title = movie.title;
        var year = movie.year;
        var length = movie.length;
        var genre = movie.genre;
        var rating = movie.rating;
        var director = movie.director;
        var writer = movie.writer;
        var actor = movie.actor;
        var description = movie.description;
        var image = movie.image;

        console.log("id:", id);
        console.log("title:", title);
        console.log("year:", year);
        console.log("length:", length);
        console.log("genre:", genre);
        console.log("rating:", rating);
        console.log("director:", director);
        console.log("writer:", writer);
        console.log("actor:", actor);
        console.log("description:", description);
        console.log("image:", image);

        var cardHtml = `
          <div class="large-card">
          <div class="movie-image">
          <a href="#single-movie-page" id="singe-movie-page-link" data-id="${id}">
          <img src="${image}" /></a>
        </div>
          <div class="info">
            <h1 class="title">${title}</h1>
            <p>${year}</p>
            <p>${length}</p>
            <p>${genre}</p>
            <p>
              ${rating} <span class="material-symbols-outlined rating"> star </span>
            </p>
            <p>${director}</p>
            <p>${writer}</p>
            <p>${actor}</p>
            <p>
              ${description}
            </p>
          </div>
          <div class="for-button">
            <button type="button" class="add-watchlist">
              <span class="material-symbols-outlined"> </span> Watchlist
            </button>
          </div>
        </div> 
          `;

        movieGridLargeCardContainer.append(cardHtml);
      });
    },
    error: function (error) {
      console.log("Error fetching movie data:", error);
    },
  });
});

$(document).ready(function () {
  $.ajax({
    url: "/film-system/rest/full/movie",
    method: "GET",
    success: function (response) {
      var movieGridLargeCardContainerFav = $(
        "#movie-grid-large-cards-container-fav"
      );

      response.forEach(function (movie) {
        var id = movie.id;
        var title = movie.title;
        var year = movie.year;
        var length = movie.length;
        var genre = movie.genre;
        var rating = movie.rating;
        var director = movie.director;
        var writer = movie.writer;
        var actor = movie.actor;
        var description = movie.description;
        var image = movie.image;

        console.log("id:", id);
        console.log("title:", title);
        console.log("year:", year);
        console.log("length:", length);
        console.log("genre:", genre);
        console.log("rating:", rating);
        console.log("director:", director);
        console.log("writer:", writer);
        console.log("actor:", actor);
        console.log("description:", description);
        console.log("image:", image);

        var cardHtml = `
          <div class="large-card">
          <div class="movie-image">
          <a href="#single-movie-page" id="singe-movie-page-link" data-id="${id}">
          <img src="${image}" /></a>
        </div>
          <div class="info">
            <h1 class="title">${title}</h1>
            <p>${year}</p>
            <p>${length}</p>
            <p>${genre}</p>
            <p>
              ${rating} <span class="material-symbols-outlined rating"> star </span>
            </p>
            <p>${director}</p>
            <p>${writer}</p>
            <p>${actor}</p>
            <p>
              ${description}
            </p>
          </div>
          <div class="for-button">
            <button type="button" class="add-favorites">
              <span class="material-symbols-outlined"> </span> Favorite
            </button>
          </div>
        </div> 
          `;

        movieGridLargeCardContainerFav.append(cardHtml);
      });
    },
    error: function (error) {
      console.log("Error fetching movie data:", error);
    },
  });
});

$(document).ready(function () {
  $.ajax({
    url: "/film-system/rest/director",
    method: "GET",
    success: function (response) {
      var directorGridLargeCardContainerFav = $(
        "#director-grid-large-cards-container-fav"
      );

      response.forEach(function (director) {
        var id = director.id;
        var name = director.name;
        var born = director.born;
        var known_for = director.known_for;
        var description = director.description;
        var image = director.image;

        console.log(id);
        console.log(name);
        console.log(born);
        console.log(known_for);
        console.log(description);
        console.log(image);

        var cardHtml = `
          <div class="large-card">
        <div class="movie-image">
        <a href="#single-director-page" id="single-director-page-link" data-id="${id}">
          <img src="${image}" /></a>
        </div>
        <div class="info">
          <h1 class="title">${name}</h1>
          <p>${born}</p>
          <p>
            ${description}
          </p>
          <p>
            ${known_for}
          </p>
        </div>
        <div class="for-button">
          <button type="button" class="add-favorites">
            <span class="material-symbols-outlined"> </span> Favorite
          </button>
        </div>
      </div>
          `;

        directorGridLargeCardContainerFav.append(cardHtml);
      });

      $(document).on(
        "click",
        "#single-director-page-link",
        handleDirectorLinkClick
      );
    },
    error: function (error) {
      console.log("Error fetching movie data:", error);
    },
  });
});

function loadSingleDirectorPage(directorId) {
  $.ajax({
    url: "/film-system/rest/director",
    method: "GET",
    success: function (response) {
      console.log(response);

      var singleDirectorPageData = $("#single-director-page-data");
      var director = response.find(function (director) {
        return director.id === directorId;
      });

      if (director) {
        var name = director.name;
        var image = director.image;
        var occupation = director.occupation;
        var born = director.born;
        var died = director.died;
        var description = director.description;
        var known_for = director.known_for;
        var biography = director.biography;

        console.log(name);
        console.log(image);
        console.log(occupation);
        console.log(born);
        console.log(died);
        console.log(description);
        console.log(known_for);
        console.log(biography);

        var cardHtml = `
            <div class="top-part">
              <img class="top-pic" src="${image}" alt="top-pic" />
              <h1 class="slogan">${name}</h1>
            </div>
            <div class="title-buttons">
              <button type="button" class="add-favorites">
                <span class="material-symbols-outlined"> </span> Favorite
              </button>
            </div>
            <div class="all-info">
              <div class="some-info">
                <p class="occupation">${occupation}</p>
                <p class="born">${born}</p>
                <p class="died">${died}</p>
              </div>
              <div class="desc">
                <p>${description}</p>
              </div>
            </div>
            <h2 class="known-for">${known_for}</h2>
            <h2 class="biography" id="biography">Biography</h2>
            <div class="biography-text">
              <p>${biography}</p>
            </div>
          `;

        singleDirectorPageData.html(cardHtml);
      } else {
        console.log("Director not found");
      }
    },
    error: function (error) {
      console.log("Error fetching director data:", error);
    },
  });
}

function handleDirectorLinkClick(e) {
  e.preventDefault();
  var directorId = $(this).data("id");
  loadSingleDirectorPage(directorId);
}
/*
  function loadSingleMoviePage(movieId) {
    $.ajax({
      url: '/film-system/rest/full/movie',
      method: 'GET',
      success: function(response) {
        console.log(response); 
  
        var singleMoviePageData = $('#single-movie-page-data');
        var movie = response.find(function(movie) {
          return movie.id === movieId;
        });
  
        if (movie) {
          var title = movie.title;
          var year = movie.year;
          var length = movie.length;
          var genre = movie.genre;
          var rating = movie.rating;
          var director = movie.director;
          var description = movie.description;
          var writer = movie.writer;
          var actor = movie.actor;
          

          var cardHtml = `
            
          `;
  
          singleMoviePageData.html(cardHtml);
        } else {
          console.log('Movie not found');
        }
      },
      error: function(error) {
        console.log('Error fetching movie data:', error);
      }
    });
  }

  function handleMovieLinkClick(e) {
    e.preventDefault();
    var movieId = $(this).data('id');
    loadSingleMoviePage(movieId);
  }
  */
