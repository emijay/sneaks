
let shoeStyle = document.querySelector("#hiddenstyle").textContent;
let shoeSize = document.querySelector("#hiddensize").textContent;

let shoeStyleString = shoeStyle.trim();
let shoeSizeString = shoeSize.trim();

    let endpointURL = "https://api.suplexed.com/v2/pricer_web.php?p_type=snkrs&p_var1=";
    let query = shoeStyleString;
    let searchString = endpointURL.concat(query);

    $.ajax({
        url: searchString,
        method: 'GET',
        dataType: 'jsonp'
    }).then(function(data) {
        console.log('It worked!: ', data);
    });







// $( document ).ready(function() {

//     fetchPrice(searchString);
// });

// const fetchPrice = (searchString) => {

//     let request = new XMLHttpRequest();

//     // listen for the request response
//     request.addEventListener("load", handleData);

//     // ready the system by calling open, and specifying the url
//     request.open("GET", searchString);

//     // send the request
//     request.send();

// }

// Function to handle data received from API
// const handleData = function() {

//     let dataObject = JSON.parse(this.responseText);
//     let array = dataObject.sizes;

//     let resultArray = array.filter(item => {
//         return item.size === shoeSizeString
//     });

//     let stockX = resultArray[0].stockx;
//     let goat = resultArray[0].goat;
//     let flightclub = resultArray[0].flightclub;

//     if (resultArray === []) {
//         document.querySelector("#stockx").innerHTML = "No results found";
//         document.querySelector("#goat").innerHTML = "No results found";
//         document.querySelector("#flightclub").innerHTML = "No results found";

//     } else {
//         document.querySelector("#stockx").innerHTML = `$${stockX}`;
//         document.querySelector("#goat").innerHTML = `$${goat}`;
//         document.querySelector("#flightclub").innerHTML = `$${flightclub}`;
//     }
// };

// $( window ).on( "load", function() {
//     console.log( "window loaded!" );
//     console.log( shoeStyleString );
//     console.log( shoeSizeString );
// });