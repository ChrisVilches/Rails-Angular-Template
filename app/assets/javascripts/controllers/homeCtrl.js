angular.module('myApp').controller('HomeCtrl', function($scope, $http){
	console.log("Opens \"Home\"");
	$scope.mensaje = "Welcome to the homepage!";

	$scope.courseMostrando = null;

	$scope.showStudents = function(course){
		$scope.courseMostrando = course;
		$http.get("courses/"+$scope.courseMostrando.id+"/students").success(function(result){
			$scope.students = result;
		});
	}

	// Initialize

	$http.get("courses").success(function(result){
		$scope.courses = result;
	});
});