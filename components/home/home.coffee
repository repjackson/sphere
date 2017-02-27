FlowRouter.route '/', action: (params) ->
    BlazeLayout.render 'layout',
        main: 'home'

if Meteor.isClient
    Template.home.events
        'click #add': ->
            id = Docs.insert({})
            FlowRouter.go "/edit/#{id}"
