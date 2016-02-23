angular.module 'testeWba'
  .config ($stateProvider, $urlRouterProvider) ->
    'ngInject'
    $stateProvider
      .state 'authentication',
        url: '/login'
        controller: 'LoginController'
        templateUrl: 'app/login/login.html'

      .state 'teste',
        url: ''
        templateUrl: 'app/main/main.html',
        controller: 'MainController'

      .state 'teste.authentication-return',
        url: '/auth/instagram#:access_token'
        templateUrl: 'app/login/auth-return.html'
        controller: ($location,$rootScope)->
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
          $location.path '/dashboard'
          return

      .state 'teste.dashboard',
        url: '/dashboard'
        controller: 'DashboardController'
        templateUrl: 'app/dashboard/dashboard.html'

      .state 'oauthsuccess',
        url: "/access_token={access_token}",
        templateUrl: '/Partials/OAuth.html',
        controller: 'OAuthLoginController'


    $urlRouterProvider.otherwise '/login'
