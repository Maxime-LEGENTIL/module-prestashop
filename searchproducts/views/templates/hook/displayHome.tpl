<div class="search-products-container">
    <input type="text" id="product-search-input" placeholder="Rechercher un produit...">
    <button id="product-search-button">Rechercher</button>
    <div id="search-results"></div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
    var searchButton = document.getElementById('product-search-button');
    var searchInput = document.getElementById('product-search-input');
    var searchResults = document.getElementById('search-results');

    if (searchButton && searchInput) {
        searchButton.addEventListener('click', function() {
            var query = searchInput.value;
            if (query.length > 2) {
                fetch('{$search_url}?q=' + encodeURIComponent(query))
                    .then(response => response.json())
                    .then(data => {
                        searchResults.innerHTML = '';
                        if (data.products && data.products.length > 0) {
                            data.products.forEach(product => {
                                var productElement = document.createElement('div');
                                productElement.textContent = product.name + ' - ' + product.price;
                                searchResults.appendChild(productElement);
                            });
                        } else {
                            searchResults.innerHTML = 'Aucun produit trouvé.';
                        }
                    })
                    .catch(error => {
                        console.error('Error fetching data:', error);
                        searchResults.innerHTML = 'Erreur lors de la recherche.';
                    });
            } else {
                searchResults.innerHTML = 'Veuillez entrer au moins 3 caractères.';
            }
        });
    }
});
</script>
