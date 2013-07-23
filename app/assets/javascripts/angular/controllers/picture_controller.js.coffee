@photogur.controller 'PicturesController', ($scope, Pictures) ->
  $scope.pictures = Pictures

  $scope.createPicture = ->
    Pictures.push $scope.picture
    $location.path('/pictures')
    

@photogur.controller 'PictureController', ($scope, Pictures, $routeParams) ->
  $scope.picture = Pictures[$routeParams.id]

  $scope.updatePicture = ->
    $location.path('/pictures')
