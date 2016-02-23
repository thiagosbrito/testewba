angular.module('testeWba')
  .controller 'OAuthLoginController', [
    '$scope',
    '$stateParams',
    '$window',
    '$state',
    ($scope, $stateParams, $window, $state) ->
        
      $parentScope = $window.opener.angular.element(window.opener.document).scope()
        
      if angular.isDefined($stateParams.access_token)
        $parentScope.$broadcast 'igAccessTokenObtained', access_token: $stateParams.access_token
        
      $window.close()
        
      return
  ]