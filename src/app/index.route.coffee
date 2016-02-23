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
        controller: 'AuthController'

      .state 'teste.dashboard',
        url: '/dashboard'
        controller: 'DashboardController'
        templateUrl: 'app/dashboard/dashboard.html'

      .state 'oauthsuccess',
        url: "/access_token={access_token}",
        templateUrl: '/Partials/OAuth.html',
        controller: 'OAuthLoginController'


    $urlRouterProvider.otherwise '/login'
