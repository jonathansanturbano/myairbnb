import "bootstrap";
import flatpickr from "flatpickr";

const datepickers = flatpickr(".datepicker", {
  altInput: true,
  altFormat: "F j, Y",
  dateFormat: "Y-m-d",
  minDate: "today"
});
