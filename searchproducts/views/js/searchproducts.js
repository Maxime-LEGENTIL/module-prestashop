document.addEventListener('DOMContentLoaded', function() {
    var searchInput = document.getElementById('search-input');
    var searchResults = document.getElementById('search-results');

    if (searchInput) {
        searchInput.addEventListener('input', function() {
            var query = searchInput.value;
            console.log('Query:', query);
            console.log('Search URL:', search_url);

            if (query.length > 2) {
                fetch(search_url + '?q=' + encodeURIComponent(query))
                    .then(response => response.json())
                    .then(data => {
                        console.log('Response data:', data);
                        searchResults.innerHTML = '';
                        data.products.forEach(product => {
                            var productElement = document.createElement('div');
                            productElement.textContent = product.name + ' - ' + product.price; // Utilisation de + au lieu de `
                            searchResults.appendChild(productElement);
                        });
                    })
                    .catch(error => {
                        console.error('Error fetching data:', error);
                    });
            } else {
                searchResults.innerHTML = '';
            }
        });
    } else {
        console.error('Search input not found');
    }
});
