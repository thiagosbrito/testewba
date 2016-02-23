angular.module 'testeWba'
  .controller 'LoginController',[
    '$scope',
    '$window',
    '$location',
    '$rootScope',
    'InstagramService',
    '$state',
    ($scope, $window, $location, $rootScope, InstagramService, $state)->

      $scope.loginInsta = ()->
        client_id = "fbe92e3f9f2b4b7d81b8bbc5bb5c2cae"
        scope = 'basic+public_content+follower_list+comments+relationships+likes'
        redirect_uri = "http://localhost:3000/auth/instagram"
        response_type = "token"
        url = "https://instagram.com/oauth/authorize/?scope="+scope+"&client_id="+client_id+"&redirect_uri="+redirect_uri+"&response_type="+response_type
        window.location.replace url
  
      return

  ]