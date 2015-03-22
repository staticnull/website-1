angular.module('gr8conf2015')
//TOOD: AuthService
    .service('backendService', ['$rootScope', '$http', 'storage', 'API', 'CONFERENCE', 'ENV', function ($rootScope, $http, storage, API, CONFERENCE, ENV) {

        function loadSpeakers(reload) {
            if (reload) {
                $http.get(API.speakers + CONFERENCE.id).
                    success(function (data) {
                        storage.put('speakers', data);
                        $rootScope.$broadcast('loaded', ['speakers', data]);
                    })
            } else {
                $rootScope.$broadcast('loaded', ['speakers', storage.get('speakers')]);
            }
        }

        function loadTalks(reload) {
            if (reload) {
                $http.get(API.talks + CONFERENCE.id).
                    success(function (data) {
                        storage.put('talks', data);
                        $rootScope.$broadcast('loaded', ['talks', data]);
                    })
            } else {
                $rootScope.$broadcast('loaded', ['talks', storage.get('talks')]);
            }
        }

        function loadAgenda(reload) {
            if (reload) {
                console.log("Loading agenda");
                $http.get(API.agenda + CONFERENCE.id).
                    success(function (data) {
                        storage.put('agenda', data);
                        console.log("Agenda: " + data);
                        $rootScope.$broadcast('loaded', ['agenda', data]);
                    }).error(function(data) {
                      console.log("Failed: " + data);
                    });
            } else {
                $rootScope.$broadcast('loaded', ['agenda', storage.get('agenda')]);
            }
        }

        //function loadFavorites() {
            //if (AuthService.isLoggedIn()) {
                //var user = AuthService.currentUser();
                //$http.get(API.loadFavorites, {params: {'conference.id': CONFERENCE.id, uuid: user.uuid } }).
                    //success(function (data) {
                        //storage.put('favorites', data);
                        //$rootScope.$broadcast('loaded', ['favorites', data]);
                    //})
            //}
        //}

        //function saveFavorite(id, status) {
            //if (AuthService.isLoggedIn()) {
                //var user = AuthService.currentUser();
                //$http.get(API.saveFavorite, {params: {'conference.id': CONFERENCE.id, uuid: user.uuid, 'talk.id': id, status: status} }).
                    //success(function (data) {
                        //storage.put('favorites', data);
                        //$rootScope.$broadcast('saved', ['favorites', data]);
                    //})
            //}

        //}

        //function loadRatings() {
            //if (AuthService.isLoggedIn()) {
                //var user = AuthService.currentUser();
                //$http.get(API.loadRatings, {params: {'conference.id': CONFERENCE.id, uuid: user.uuid } }).
                    //success(function (data) {
                        //storage.put('ratings', data);
                        //$rootScope.$broadcast('loaded', ['ratings', data]);
                    //})
            //}
        //}

        //function saveRating(id, data) {
            //if (AuthService.isLoggedIn()) {
                //var user = AuthService.currentUser();
                //var params = angular.extend({},{'conference.id': CONFERENCE.id, uuid: user.uuid, 'talk.id': id }, data)
                //console.debug("Save rating", params);
                //$http.get(API.saveRating, {params: params }).
                    //success(function (data) {
                        //storage.put('ratings', data);
                        //$rootScope.$broadcast('saved', ['ratings', data]);
                    //})
            //}

        //}

        this.bootstrap = function () {
            console.log("Loading stuff");
            $http.get(API.status + CONFERENCE.id).
                success(function (data) {
                    var status = ENV === 'development' ? {} : storage.get('status') || {};
                    console.debug(data, status);
                    loadSpeakers(status.speakers != data.speakers);
                    loadTalks(status.talks != data.talks);
                    loadAgenda(true);    // Load every time for now

                    //loadFavorites();
                    //loadRatings();
                    storage.put('status', data);

                }).error(function(data) {
                  console.log("Failed: " + data);
                });
        };

        this.isFavorite = function (id) {
            var favorites = storage.get('favorites') || [];
            return _.some(favorites, function (favorite) {
                return favorite == id
            })
        };

        this.getRating = function (id) {
            var ratings = storage.get('ratings') || [];
            return _.find(ratings, function (rating) {
                return rating.id == id
            })
        };
        this.getTalk = function (id) {
            var talks = storage.get('talks') || [];
            return _.find(talks, function (talk) {
                return talk.id == id
            })
        };
        this.getSpeaker = function (id) {
            var speakers = storage.get('speakers') || [];
            return _.find(speakers, function (speaker) {
                return speaker.id == id
            })
        };

        $rootScope.$on('favorited', function (event, args) {
            var favorites = storage.get('favorites') || [];
            var id = args[0];
            var favorited = args[1];
            if (favorited) {
                favorites.push(id)
            } else {
                favorites = _.reject(favorites, function (favorite) {
                    return favorite == args[0]
                })
            }
            storage.put('favorites', favorites);
            saveFavorite(id, favorited);
        });
        $rootScope.$on('saveRating', function(event, args) {
            var id = args[0];
            var data = args[1];
            saveRating(id, data);
        });
        $rootScope.$on('login', function () {
            loadFavorites();
            loadRatings();
        })


    }]);
