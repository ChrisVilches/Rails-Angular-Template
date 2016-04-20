angular.module('myApp', ['ui.router', 'templates'])
.config(function($stateProvider, $urlRouterProvider, $locationProvider){
	$stateProvider
	.state('home', {
		url: '/',
		templateUrl: 'home.html',
		controller: 'HomeCtrl'
	})
	.state('about', {
		url: '/about',
		templateUrl: 'about.html',
		controller: 'AboutCtrl'
	})

	$urlRouterProvider.otherwise('/');

	//$locationProvider.html5Mode(true);
});