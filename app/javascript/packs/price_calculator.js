const start_date_input = document.getElementById("booking_start_date");
const price = document.querySelector("#price h4");
const newDiv = document.getElementById("total-cost");

const getPeriod = () => {
  const value = start_date_input.value.split(" ");
  const start_date = value[0];
  const end_date = value[2];
  return [start_date, end_date];
}

const getPrice = () => {
  return parseInt(price.textContent.match(/(\d+)/)[0]);
}

const priceWithCommas = (price) => {
    return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
}

const priceCalculator = () => {
  start_date_input.addEventListener('change', (event) => {
    const period = getPeriod();
    const price = getPrice();
    const number_of_days = new Date(period[1]) - new Date(period[0])
    const total_price = priceWithCommas(number_of_days / (1000*60*60*24) * price)
    newDiv.innerHTML = `<p class="flash"><strong>Total price: </strong>${total_price} €</p>`;
  });
};

export { priceCalculator };
