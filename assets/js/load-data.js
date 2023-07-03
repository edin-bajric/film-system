function decodeJwtToken(token) {
  var base64Url = token.split('.')[1];
  var base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
  var jsonPayload = decodeURIComponent(
    atob(base64)
      .split('')
      .map(function (c) {
        return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
      })
      .join('')
  );
  return JSON.parse(jsonPayload);
}

function addMovieToWatchlist(movieId) {
 
  var token = localStorage.getItem("token");

  
  var decodedToken = decodeJwtToken(token);
  var userId = decodedToken.id;


  $.ajax({
    url: "/film-system/rest/watchlist",
    method: "POST",
    data: {
      user_id: userId,
      movie_id: movieId,
    },
    success: function (response) {
      alert("Movie added to watchlist!");
    },
    error: function (error) {
      alert("Error adding movie to watchlist.");
    },
  });
}

function deleteMovieFromWatchlist(decodedUserId, movieId) {
 
  var token = localStorage.getItem("token");

  
  var decodedToken = decodeJwtToken(token);
  var decodedUserId = decodedToken.id;


  $.ajax({
    url: "/film-system/rest/watchlist/" + decodedUserId + "/" + movieId,
    method: "DELETE",
    data: {
      user_id: decodedUserId,
      movie_id: movieId,
    },
    success: function (response) {
      alert("Movie removed from watchlist!");
      location.reload();
    },
    error: function (error) {
      alert("Error removing movie from watchlist.");
    },
  });
}

function addMovieToFavorite(movieId) {
 
  var token = localStorage.getItem("token");

  
  var decodedToken = decodeJwtToken(token);
  var userId = decodedToken.id;


  $.ajax({
    url: "/film-system/rest/favorite",
    method: "POST",
    data: {
      user_id: userId,
      movie_id: movieId,
    },
    success: function (response) {
      alert("Movie added to favorites!");
    },
    error: function (error) {
      alert("Error adding movie to favorites.");
    },
  });
}

function deleteMovieFromFavorite(dUserId, movieId) {
 
  var token = localStorage.getItem("token");

  
  var decodedToken = decodeJwtToken(token);
  var dUserId = decodedToken.id;


  $.ajax({
    url: "/film-system/rest/movie/favorite/" + dUserId + "/" + movieId,
    method: "DELETE",
    data: {
      user_id: dUserId,
      movie_id: movieId,
    },
    success: function (response) {
      alert("Movie removed from favorites!");
      location.reload();
    },
    error: function (error) {
      alert("Error removing movie from favorites.");
    },
  });
}

function addDirectorToFavorite(directorId) {
 
  var token = localStorage.getItem("token");

  
  var decodedToken = decodeJwtToken(token);
  var userId = decodedToken.id;


  $.ajax({
    url: "/film-system/rest/favorite",
    method: "POST",
    data: {
      user_id: userId,
      director_id: directorId,
    },
    success: function (response) {
      alert("Director added to favorites!");
    },
    error: function (error) {
      alert("Error adding director to favorites.");
    },
  });
}

function deleteDirectorFromFavorite(deUserId, directorId) {
 
  var token = localStorage.getItem("token");

  
  var decodedToken = decodeJwtToken(token);
  var deUserId = decodedToken.id;


  $.ajax({
    url: "/film-system/rest/director/favorite/" + deUserId + "/" + directorId,
    method: "DELETE",
    data: {
      user_id: deUserId,
      director_id: directorId,
    },
    success: function (response) {
      alert("Director removed from favorites!");
      location.reload();
    },
    error: function (error) {
      alert("Error removing director from favorites.");
    },
  });
}


$(document).ready(function () {

  $("#movie-cards-container").on("click", ".add-watchlist", function () {
    var movieId = $(this).closest(".card").find("a").data("id");
    addMovieToWatchlist(movieId);
  });

  $("#movie-cards-container").on("click", ".add-favorites", function () {
    var movieId = $(this).closest(".card").find("a").data("id");
    addMovieToFavorite(movieId);
  });

  $.ajax({
    url: "/https://shark-app-hvcew.ondigitalocean.app/rest/movie",
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
              <a href="#single-movie-page" id="single-movie-page-link" data-id="${id}">
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
      $(document).on(
        "click",
        "#single-movie-page-link",
        handleMovieLinkClick
      );
    },
    error: function (error) {
      console.log("Error fetching movie data:", error);
    },
  });
});

$(document).ready(function () {

  $("#director-cards-container").on("click", ".add-favorites", function () {
    var directorId = $(this).closest(".card").find("a").data("id");
    addDirectorToFavorite(directorId);
  });
  
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

  $("#movie-grid-cards-container").on("click", ".add-watchlist", function () {
    var movieId = $(this).closest(".card").find("a").data("id");
    addMovieToWatchlist(movieId);
  });

  $("#movie-grid-cards-container").on("click", ".add-favorites", function () {
    var movieId = $(this).closest(".card").find("a").data("id");
    addMovieToFavorite(movieId);
  });

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
          <a href="#single-movie-page" id="single-movie-page-link" data-id="${id}">
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
      $(document).on(
        "click",
        "#single-movie-page-link",
        handleMovieLinkClick
      );
    },
    error: function (error) {
      console.log("Error fetching movie data:", error);
    },
  });
});

$(document).ready(function () {

  $("#director-grid-cards-container").on("click", ".add-favorites", function () {
    var directorId = $(this).closest(".card").find("a").data("id");
    addDirectorToFavorite(directorId);
  });

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
              <img src="${image}" class="director-image"/>
              </a>
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

  var token = localStorage.getItem("token");

  
  var decodedToken = decodeJwtToken(token);
  var userId = decodedToken.id;

  $("#movie-grid-large-cards-container").on("click", ".add-watchlist", function () {
    var movieId = $(this).closest(".large-card").find("a").data("id");
    
    deleteMovieFromWatchlist(userId, movieId);
  });

  
  $.ajax({
    url: "/film-system/rest/full/watchlist/" + userId,
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
          <a href="#single-movie-page" id="single-movie-page-link" data-id="${id}">
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
      $(document).on(
        "click",
        "#single-movie-page-link",
        handleMovieLinkClick
      );
    },
    error: function (error) {
      console.log("Error fetching movie data:", error);
    },
  });
});

$(document).ready(function () {
  var token = localStorage.getItem("token");

  
  var decodedToken = decodeJwtToken(token);
  var userId = decodedToken.id;


  $("#movie-grid-large-cards-container-fav").on("click", ".add-favorites", function () {
    var movieId = $(this).closest(".large-card").find("a").data("id");
    deleteMovieFromFavorite(userId, movieId);
  });


  $.ajax({
    url: "/film-system/rest/full/movie/favorite/" + userId,
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
          <a href="#single-movie-page" id="single-movie-page-link" data-id="${id}">
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
      $(document).on(
        "click",
        "#single-movie-page-link",
        handleMovieLinkClick
      );
    },
    error: function (error) {
      console.log("Error fetching movie data:", error);
    },
  });
});

$(document).ready(function () {

  var token = localStorage.getItem("token");

  
  var decodedToken = decodeJwtToken(token);
  var userId = decodedToken.id;


  $("#director-grid-large-cards-container-fav").on("click", ".add-favorites", function () {
    var directorId = $(this).closest(".large-card").find("a").data("id");
    deleteDirectorFromFavorite(userId, directorId);
  });
  $.ajax({
    url: "/film-system/rest/full/director/favorite/" + userId,
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
      console.log("Error fetching director data:", error);
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

        $(".add-favorites").on("click", function () {
          addDirectorToFavorite(directorId);
        });

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
          var trailer = movie.trailer;
  
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
          console.log("trailer:", trailer);
          

          var cardHtml = `
          <div class="top-info">
          <p>${year}</p>
          <p>${length}</p>
          <p>
            Movie rating: ${rating}
            <span class="material-symbols-outlined rating"> star </span>
          </p>
          
        </div>
        <div class="top-part">
          <img
            class="top-pic"
            src="${image}"
            alt="top-pic"
          />
          <h1 class="slogan">${title}</h1>
        </div>
    
        <div class="title-buttons">
          <div class="for-trailer">
            <a
              href="${trailer}"
              class="youtube"
              target="_blank"
              ><button type="button" class="play-trailer">
                <span class="material-symbols-outlined rate"> play_arrow </span>
                Play trailer
              </button></a
            >
          </div>
          <div class="favorite-watchlist">
            <button type="button" class="add-favorites">
              <span class="material-symbols-outlined"> </span> Favorite
            </button>
            <button type="button" class="add-watchlist">
              <span class="material-symbols-outlined"> </span> Watchlist
            </button>
          </div>
        </div>
        <div class="title-buttons-mobile">
          <div class="for-trailer-mobile">
            <a href="${trailer}" target="_blank"
              ><span class="material-symbols-outlined rate"> play_arrow </span></a
            >
          </div>
          <div class="favorite-mobile">
            <span class="material-symbols-outlined"> </span>
          </div>
          <div class="watchlist-mobile">
            <span class="material-symbols-outlined"> </span>
          </div>
        </div>
        <div class="all-info">
          <div class="some-info">
            <p class="genre">${genre}</p>
            <p class="directors">${director}</p>
            <p class="writers">${writer}</p>
            <p class="stars">${actor}</p>
          </div>
          <div class="desc">
            <p>
              ${description}
            </p>
          </div>
        </div>
          `;
  
          singleMoviePageData.html(cardHtml);

          $(".add-favorites").on("click", function () {
            addMovieToFavorite(movieId);
          });
          $(".add-watchlist").on("click", function () {
            addMovieToWatchlist(movieId);
          });
          $(".favorite-mobile").on("click", function () {
            addMovieToFavorite(movieId);
          });
          $(".watchlist-mobile").on("click", function () {
            addMovieToWatchlist(movieId);
          });
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
  
