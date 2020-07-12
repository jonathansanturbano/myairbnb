import flatpickr from 'flatpickr'
import 'flatpickr/dist/flatpickr.min.css'


const initFlatpickr = () => {
  flatpickr(".datepicker", {
    minDate: "today",
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
  });

  const string_start_date = document.querySelector("#start-date");
  console.log(string_start_date);
  const string_end_date = document.querySelector("#end-date");
  console.log(string_end_date);
  const price_per_day = document.querySelector("#price-per-day");
  console.log(price_per_day);
  const total = document.querySelector("#total-price");

  string_start_date.addEventListener("change", range => {

    const start_date = new Date(string_start_date.value);
    string_end_date.addEventListener("change", range => {
      const end_date = new Date(string_end_date.value);
      const start_milliseconds = start_date.getTime();
      const end_milliseconds = end_date.getTime();
      const milliseconds = end_milliseconds - start_milliseconds;
      const period = milliseconds/86400000;
      const totalcalculation = period * price_per_day.innerText
      total.innerText = totalcalculation;
  });
  });
}

export { initFlatpickr };
