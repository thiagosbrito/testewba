angular.module 'testeWba'
  .controller 'DashboardController',[
    '$scope',
    '$modal',
    'InstagramService',
    '$stateParams',
    '$http',
    ($scope, $modal, InstagramService, $stateParams, $http)->

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
        (err)->
          console.log err
      )

      InstagramService.getPhotos().then(
        (res)->
          $scope.userMedia = res.data
        (err)->
          console.log err
      )

      InstagramService.getFollowers().then(
        (res)->
          console.log res.data
        (err)->
          console.log err.data
      )

      return
  ]