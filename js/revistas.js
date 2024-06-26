/* document.addEventListener('DOMContentLoaded', function() {
    const filterSelect = document.getElementById('filter-select');
    const elements = document.querySelectorAll('.elements');

    filterSelect.addEventListener('change', function() {
        const category = this.value;
        
        elements.forEach(element => {
            if (category === 'all') {
                element.style.display = 'block';
            } else {
                element.style.display = element.getAttribute('data-category') === category ? 'block' : 'none';
            }
        });
    });
});
 */