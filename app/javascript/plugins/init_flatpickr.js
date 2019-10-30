import flatpickr from 'flatpickr'

// First we define two variables that are going to grab our inputs field. You can check the ids of the inputs with our inspector.
const startDateInput = document.getElementById('booking_rental_date');
const endDateInput = document.getElementById('booking_return_date');
console.log(startDateInput)
// Check that the query selector id matches the one you put around your form.
const initFlatpickr = () =>{
if (startDateInput) {
const unavailableDates = JSON.parse(document.querySelector('#cameras-booking-dates').dataset.unavailable)
endDateInput.disabled = true
console.log(flatpickr)
flatpickr(startDateInput, {
  minDate: "today",
  disable: unavailableDates,
  dateFormat: "Y-m-d",
});

console.log('im in the file')

startDateInput.addEventListener("change", (e) => {
  if (startDateInput != "") {
    endDateInput.disabled = false
  }
  flatpickr(endDateInput, {
    minDate: e.target.value,
    disable: unavailableDates,
    dateFormat: "Y-m-d"
    });
  })
};
}

export {initFlatpickr}
