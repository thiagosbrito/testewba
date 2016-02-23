angular.module 'testeWba'
  .controller 'MainController',[
    'InstagramService',
    '$scope',
    (InstagramService,$scope)->

      # InstagramService.getUserInfo().then(
      #   (res)->
      #     $scope.userInfo = res.data
      #     console.log $scope.userInfo
      # )

  ]
    
  
