angular.module 'testeWba'
  .controller 'ModalPhotoController',[
    '$scope',
    '$modalInstance',
    'item',
    ($scope, $modalInstance, item)->

      $scope.photo = item
      
      $scope.cancel = ()->
        $modalInstance.dismiss 'cancel'
      
      return

  ]