angular.module 'identifiAngular'
  .config ($stateProvider, $urlRouterProvider) ->
    'ngInject'
    $stateProvider
      .state 'identities',
        url: ''
        template: "<ui-view/>"
        abstract: true
      .state 'identities.list',
        url: ''
        templateUrl: 'app/identities/list.html'
        controller: 'IdentitiesController'
        controllerAs: 'identities'
      .state 'identities.show',
        url: '/identities/:type/:value'
        templateUrl: 'app/identities/show.html'
        controller: 'IdentitiesController'
        controllerAs: 'identities'
      .state 'messages',
        url: '/messages'
        template: "<ui-view/>"
        abstract: true
      .state 'messages.list',
        url: ''
        templateUrl: 'app/messages/list.html'
        controller: 'MessagesController'
        controllerAs: 'messages'
      .state 'messages.show',
        url: '/:id'
        templateUrl: 'app/messages/show.html'
        controller: 'MessagesController'
        controllerAs: 'messages'
      .state 'about',
        url: '/about'
        templateUrl: 'app/main/about.html'
        controller: 'MainController'
        controllerAs: 'main'

    $urlRouterProvider.otherwise '/'
