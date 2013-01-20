function navigateTo(dest) {
    // Hide all current pages
    $('.container').filter(':visible').effect('fade');

    // Hide/show the nav bar, but only on non-home pages.
    $('.navbar').toggle(dest !== 'home');

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
$('.navigation').click(function(event) {
    var dest = $(this).data('destination');
    if (!dest) {
        console.log('Got null destination on navigation, ignoring');
        return false;
    }
    History.pushState({destination: dest}, '', '/' + dest);

    // If it's a link, don't follow it
    event.preventDefault();
    return false;
});

// Make sure we have the state variable properly set on page load.
History.replaceState({destination: $('.container').filter(':visible').data('location')},
                     '', window.location.pathname);
