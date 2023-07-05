$(document).ready(function () {
  $("#mobile-search-submit").on("click", handleMobileSearchFormSubmit);
});

function handleMobileSearchFormSubmit(e) {
  e.preventDefault();
  var searchQuery = $("#mobile-search-input").val();
  searchMovie(searchQuery);
}

function handleSearchFormSubmit(e) {
  e.preventDefault();
  var searchQuery = $("#search-input").val();
  searchMovie(searchQuery);
}

function searchMovie(title) {
  $("#search-results").empty();

  $.ajax({
    url: "rest/full/movie/" + title,
    method: "GET",
    data: {
      title: title,
    },
    success: function (response) {
      displaySearchResults(response);
    },
    error: function (error) {
      console.log("Error searching movies:", error);
    },
  });
}

function displaySearchResults(results) {
  if (!results || Object.keys(results).length === 0) {
    alert("No results found for the given title.");
    return;
  }

  var movieId = results.id;
  loadSingleMoviePage(movieId);

  window.location.hash = "single-movie-page";

  $("#search-input").val("");
}

$("#search-form").on("submit", handleSearchFormSubmit);
