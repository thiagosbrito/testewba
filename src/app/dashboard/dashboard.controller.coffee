angular.module 'testeWba'
  .controller 'DashboardController',[
    '$scope',
    '$modal',
    'InstagramService',
    '$stateParams',
    '$http',
    '$timeout',
    ($scope, $modal, InstagramService, $stateParams, $http, $timeout)->

      $scope.openModalPhoto = (item)->
        modalInstance = $modal.open
          animation: true
          templateUrl: 'app/dashboard/modal-photo.html'
          controller: 'ModalPhotoController'
          resolve: 
            item: ()->
              item

      InstagramService.getUserInfo().then(
        (res)->
          $scope.userInfo = res.data.data
          $scope.getInfos()
        (err)->
          console.log err
      )

      $scope.getInfos = () ->
        InstagramService.getPhotos().then(
          (res)->
            $scope.userMedia = res.data
          (err)->
            console.log err
        )

        # This service cannot be used in SANDBOX mode
        InstagramService.getFollowers().then(
          (res)->
            # console.log res.data
          (err)->
            # console.log err.data
        )

      $timeout $scope.getInfos(),5000

      return
  ]