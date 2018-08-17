import swal from 'sweetalert';

function bindSweetAlertButtonDemo() {
  const swalButton = document.getElementById("testalert");
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      swal({
        title: "Confirm booking?",
        text: "",
        buttons: true,
        dangerMode: true,
      })
      .then((willDelete) => {
        if (willDelete) {
          swal("You have booked the pool", {
            icon: "success",
          });
        } else {
          swal("Your have canceled the pool!");
        }
      });

    });
  }
}


// function bindSweetAlertButtonDemo() {
//   const swalButton = document.getElementById('testalert');
//   if (swalButton) { // protect other pages
//     swalButton.addEventListener('click', () => {
//       swal({
//         title: "A nice alert",
//         text: "This is a great alert, isn't it?",
//         icon: "success"
//       });
//     });
//   }
// }


export { bindSweetAlertButtonDemo };


