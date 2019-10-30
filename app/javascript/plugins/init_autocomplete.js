import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('camera_address');
//  console.log("I'm here")
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
