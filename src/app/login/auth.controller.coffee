angular.module('testeWba')
  .controller 'AuthController', [
    '$state',
    '$rootScope',
    ($location,$rootScope)->
      hash = $location.path().substr(1)
      splitted = hash.split('&')
      params = {}
      i = 0
      while i < splitted.length
        param = splitted[i].split('=')
        key = param[0]
        value = param[1]
        params[key] = value
        $rootScope.accesstoken = params
        i++
      $state.go 'dashboard'
      return
  ]