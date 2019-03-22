import places from 'places.js';

const initAutocomplete = () => {
  console.log('Algolia initAutocomplete');
  const addressInput = document.getElementById('shelter_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
