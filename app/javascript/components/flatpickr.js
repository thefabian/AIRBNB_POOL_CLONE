import flatpickr from 'flatpickr'
import 'flatpickr/dist/themes/airbnb.css'
import  rangePlugin from  "flatpickr/dist/plugins/rangePlugin"

function enableDatepicker() {
  if (document.getElementById("start_date")) {
        flatpickr("#start_date", {
        altInput: true,
        "plugins": [new rangePlugin({ input: "#end_date"})]
    });
  }
}

export { enableDatepicker }

