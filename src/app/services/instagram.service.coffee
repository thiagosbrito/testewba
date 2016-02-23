angular.module('testeWba')
  .service 'InstagramService', [
    '$http',
    '$window',
    ($http, $window) ->

      return {

        getUserInfo: () ->
          $http
            url: 'https://api.instagram.com/v1/users/self/?access_token='+ $window.sessionStorage.access_token
            method: 'GET'

        getPhotos: () ->
          $http
            url         : 'https://api.instagram.com/v1/users/self/media/recent/?access_token='+ $window.sessionStorage.access_token
            method      : 'GET'

        getFollowers: () ->
          $http
            url         : 'https://api.instagram.com/v1/users/self/followed-by?access_token='+ $window.sessionStorage.access_token
            method      : 'GET'

        getFollows: () ->
          $http
            url         : 'https://api.instagram.com/v1/users/self/follows?access_token='+ $window.sessionStorage.access_token
            method      : 'GET'
      }
  ]