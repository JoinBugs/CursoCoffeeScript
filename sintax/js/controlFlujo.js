// Generated by CoffeeScript 1.8.0
(function() {
  var born, year;

  year = new Date().getFullYear();

  if (year === 1980) {
    born = true;
  } else {
    born = false;
  }

  if (year === 1980) {
    born = true;
  } else {
    born = false;
  }

  born = year === 1980 ? true : false;


  /*
  	por un codigo mas semantico:
  	is, isnt, unless
   */

  if (year === 1980) {
    born = true;
  }

  if (year !== 1980) {
    born = false;
  }

  if (year === !1980) {
    born = false;
  }

  if (year !== 1980) {
    born = false;
  }

}).call(this);
