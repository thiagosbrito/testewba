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
        url: '/access_token={access_token}'
        templateUrl: 'app/login/auth-return.html'
        controller: 'AuthController'
        # http://localhost:3000/auth/instagram#access_token=23338977.fbe92e3.ba4d6bf7e5914f95989fbd1de187c853

      .state 'teste.dashboard',
        url: '/dashboard'
        controller: 'DashboardController'
        templateUrl: 'app/dashboard/dashboard.html'

      # .state 'oauthsuccess',
      #   url: "/access_token={access_token}",
      #   templateUrl: '/Partials/OAuth.html',
      #   controller: 'OAuthLoginController'


    $urlRouterProvider.otherwise '/login'
