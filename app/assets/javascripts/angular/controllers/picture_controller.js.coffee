@photogur.controller 'PictureController', ($scope, $location, Picture, $routeParams) ->
  $scope.id = $routeParams.id
  $scope.picture = Picture.get id: $routeParams.id

  $scope.updatePicture = ->
    $location.path('/pictures')
    $scope.picture.$update onPictureSave, onError
    
  onPictureSave = ->
    $location.path('/pictures')

  onError = ->
    alert("Could not update picture.")