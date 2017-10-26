var pages = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('title'),
    // datumTokenizer: Bloodhound.tokenizers.whitespace,
    queryTokenizer: Bloodhound.tokenizers.whitespace,

    prefetch: baseurl + '/search.json'
});

$('#search-label').click(function(){
  // Modificar el if si se agrega otro autocomplete con typeahead al sitio
  if (!$(".twitter-typeahead")[0]){
    $('#search-box').typeahead({
        minLength: 0,
        highlight: true
    }, {
        name: 'pages',
        display: 'title',
        source: pages
    });

    $('#search-box').bind('typeahead:select', function(ev, suggestion) {
        window.location.href = suggestion.url;
    });
  }
});
