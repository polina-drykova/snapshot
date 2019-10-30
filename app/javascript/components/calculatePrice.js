const calculatePrice = () => {
  const returnDateInput = document.querySelector("#booking_return_date")

  returnDateInput.addEventListener("change", () => {
    // have our two dates cconverting the valued to dated
    const returnDate = new Date(document.querySelector("#booking_return_date").value);
    const startDate =  new Date(document.querySelector("#booking_rental_date").value);

    // getting differenec between the dates and converting into days
    const numberOfDays = parseInt((returnDate - startDate) / (1000 * 60 * 60 * 24), 10);

    // getting pricec per day and converting to integer
    const pricePerDay = parseInt(document.querySelector(".price span").innerText)
    const bookingTotal = numberOfDays * pricePerDay
    const serviceFee = (bookingTotal * 0.02)

    // showing the booking total in HTML
    const showBookingPrice = document.querySelector("#booking-price")
    showBookingPrice.innerHTML = `numbers of days : ${numberOfDays} <br>
                                  price per day : ${pricePerDay} $ <br>
                                  service fee (2%) : ${serviceFee} $ <br>
                                  your total is ${bookingTotal} $`
    // showBookingPrice.style.display = "show"
  })
}

export { calculatePrice }
