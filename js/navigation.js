function navigateTo(dest) {
    // Hide all current pages
    $('.container').filter(':visible').effect('fade');

    // Show the requested page
    $('.container').filter('[data-location=' + dest + ']').effect('fade');
}

var popped = !!window.history.state, initialURL = location.href
$(window).bind('statechange', function(event) {
    // Make sure this isn't the initial pop some browsers fire
    var initialPop = !popped && location.href == initialURL;
    popped = true;
    if ( initialPop ) {
        return;
    }

    var state = History.getState().data;
    var dest = state.destination;
    navigateTo(state.destination);
});


// Bindings for navigation elements
$('.navigation').click(function() {
    var dest = $(this).data('destination');
    History.pushState({destination: dest}, '', dest);
});

// Make sure we have the state variable properly set on page load.
History.replaceState({destination: $('.container').filter(':visible').data('location')},
                     '', window.location.pathname);
