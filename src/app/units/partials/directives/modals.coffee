angular.module('doubtfire.units.partials.modals', [])

.controller('UnitModalCtrl', ($scope, $modalInstance, convenors) ->
  $scope.unit = { convenors: [] }
  $scope.modalState = {}
  $scope.availableConvenors = angular.copy(convenors)

  $scope.addSelectedConvenor = ->
    # Rip out the convenor to add and clear the input
    convenor = $scope.modalState.selectedConvenor
    $scope.modalState.selectedConvenor = null

    # Add the convenor to the list and remove it
    # from the list of available convenors
    $scope.unit.convenors.push(convenor)
    $scope.availableConvenors = _.without $scope.availableConvenors, convenor

  $scope.removeConvenor = (convenor) ->
    $scope.unit.convenors = _.without $scope.unit.convenors, convenor
    $scope.availableConvenors.push(convenor)
)