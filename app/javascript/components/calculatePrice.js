const calculatePrice = () => {
  const returnDateInput = document.querySelector("#booking_return_date")

if (returnDateInput){
    returnDateInput.addEventListener("change", () => {
    // have our two dates converting the valued to dated
    const returnDate = new Date(document.querySelector("#booking_return_date").value);
    const startDate =  new Date(document.querySelector("#booking_rental_date").value);

    // getting differenec between the dates and converting into days
    const numberOfDays = parseInt((returnDate - startDate) / (1000 * 60 * 60 * 24), 10);

    // getting pricec per day and converting to integer
    const pricePerDay = parseInt(document.querySelector(".price span").innerText)
    const bookingSubtotalTotal = numberOfDays * pricePerDay
    const serviceFee = (bookingSubtotalTotal * 0.02)
    const bookingTotal = bookingSubtotalTotal + serviceFee

    // showing the booking total in HTML
    const showBookingPrice = document.querySelector("#booking-price")
    showBookingPrice.innerHTML = `Numbers of days : ${numberOfDays} <br>
                                  Price per day : $${pricePerDay} <br>
                                  Service fee (2%) : $${serviceFee} <br>
                                  Your total is $${bookingTotal} `
    showBookingPrice.style.display = "show"
  })
}
}

export { calculatePrice }
