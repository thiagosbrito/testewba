angular.module 'testeWba'
  .config ($logProvider, toastrConfig, $locationProvider, $httpProvider) ->
    'ngInject'

    $locationProvider.html5Mode(true)
    $logProvider.debugEnabled true

    
    toastrConfig.allowHtml = true
    toastrConfig.timeOut = 3000
    toastrConfig.positionClass = 'toast-top-right'
    toastrConfig.preventDuplicates = true
    toastrConfig.progressBar = true

    
    # OAuthProvider.configure
    #   baseUrl: 'https://api.instagram.com',
    #   clientId: 'fbe92e3f9f2b4b7d81b8bbc5bb5c2cae',
    #   clientSecret: '1df858ecbe5a4661bd3af3062d87bfb0',
    #   redirectUri: 'http://localhost:3000/auth/instagram'

    # $httpProvider.defaults.headers.common = {}
    # $httpProvider.defaults.headers.post = {}
    # $httpProvider.defaults.headers.put = {}
    # $httpProvider.defaults.headers.patch = {}