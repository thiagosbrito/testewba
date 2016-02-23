angular.module('testeWba')
  .controller 'AuthController', [
    '$state',
    '$rootScope',
    '$stateParams'
    '$window'
    ($state, $rootScope, $stateParams, $window)->

      $window.sessionStorage.access_token = $stateParams.access_token
      $state.go 'teste.dashboard'
      
      return
  ]