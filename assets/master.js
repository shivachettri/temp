/**
 * Asynchronous Server Request
 * Parse all forms data into POST request along with extra parameters and send it to server for
 * processing and getting response.
 *
 * @param {string} formID Form ID of the form to be submitted
 * @param {string} extraParameters Extra parameters Ex. "TYPE=GET&EVENT=READ_FILE"
 * @param {string} filePath Server file that handles the request
 * @param {string} returnFunction Callback function to be called after success
 * @param {string} loadingImageID Loading Image ID for loading effect
 * @param {string} serverResponseID Server Response ID for displaying server response
 */
window.ajax_request = function ajaxRequest(
  formID,
  extraParameters,
  filePath,
  returnFunction,
  loadingImageID,
  serverResponseID,
  formReset = true,
  specialVariable = "",
  specialValue = ""
) {
  // debugger;
  if (filePath == "" || filePath === undefined) {
    alert("#Error: Server controller is undefined.");
  }
  if (loadingImageID == "" || loadingImageID === undefined) {
    loadingImageID = "loading-image";
  }
  if (serverResponseID == "" || serverResponseID === undefined) {
    serverResponseID = "server-response";
  }

  if (formID != "") {
    formData = new FormData($("#" + formID)[0]);
  } else {
    formData = new FormData();
  }

  if (specialVariable == "" && specialValue == "") {
    if (extraParameters != "") {
      if (extraParameters.indexOf("&") !== -1) {
        var splitAmp = extraParameters.split("&");
        if (splitAmp.length <= 1) {
          var splitEqual = extraParameters.split("=");
          formData.append("" + splitEqual[0] + "", splitEqual[1]);
        } else {
          for (var j = 0; j < splitAmp.length; j++) {
            var splitEqual = splitAmp[j].split("=");
            formData.append("" + splitEqual[0] + "", splitEqual[1]);
          }
        }
      } else {
        var splitEqual = extraParameters.split("=");
        formData.append("" + splitEqual[0] + "", splitEqual[1]);
      }
    }
  } else {
    formData.append("" + specialVariable + "", specialValue);
  }

  if ($("#" + loadingImageID).length != 0) $("#" + loadingImageID).show();

  $.ajax({
    type: "POST",
    url: filePath,
    data: formData,
    cache: false,
    contentType: false,
    processData: false,
    dataType: "json",
    success: function (R) {
      // debugger;
      if (R["ERR"] == false) {
        if (returnFunction != "") returnFunction(R);

        if (formID != "" && formReset == true) {
          $("#" + formID)[0].reset();
        }

        if ($("#" + serverResponseID).length != 0)
          $("#" + serverResponseID).html(
            '<span class="">' + R["MSG"] + "</span>"
          );
      } else {
        if (returnFunction != "") returnFunction(R);

        if ($("#" + serverResponseID).length != 0)
          $("#" + serverResponseID).html(
            '<span class="">' + R["MSG"] + "</span>"
          );

        if (R["ID"] === undefined) {
          if ($("#" + serverResponseID).length != 0)
            $("#" + serverResponseID).html(
              '<span class="">' + R["MSG"] + "</span>"
            );
        } else {
          if ($("#" + serverResponseID).length != 0)
            $("#" + serverResponseID).html("");

          $(".err").remove();
          $("#e-" + R["ID"]).remove();
          if ($("input[name=" + R["ID"] + "]") !== undefined)
            $("input[name=" + R["ID"] + "]").after(
              "<div class='err' id='e-" + R["ID"] + "'></div>"
            );
          if ($("select[name=" + R["ID"] + "]") !== undefined)
            $("select[name=" + R["ID"] + "]").after(
              "<div class='err' id='e-" + R["ID"] + "'></div>"
            );
          if ($("textarea[name=" + R["ID"] + "]") !== undefined)
            $("textarea[name=" + R["ID"] + "]").after(
              "<div class='err' id='e-" + R["ID"] + "'></div>"
            );
          $("#e-" + R["ID"]).html('<span class="red">' + R["MSG"] + "</span>");
        }
      }

      if ($("#" + loadingImageID).length != 0) $("#" + loadingImageID).hide();
    },

    error: function (x, e) {
      // debugger;
      console.log(x.responseText);
      if ($("#" + loadingImageID).length != 0) $("#" + loadingImageID).hide();

      if ($("#" + serverResponseID).length != 0)
        $("#" + serverResponseID).html("#Error: " + x.responseText);
    },
  });
};

/**
 * @func: loadScript
 * @desc: load javascript
 */
window.loadScript = function (url, callback) {
  jQuery.ajax({
    url: url,
    dataType: "script",
    success: callback,
    async: true,
  });
};

/**
 * @func: Load JS
 */
window.load_js = function loadJS(url) {
  var head = document.getElementsByTagName("head")[0];
  var script = document.createElement("script");
  script.src = url;
  head.appendChild(script);
};

/**
 * @func: Validates that the input string is a valid date formatted as "YYYY-MM-DD"
 */
function validate_yyyy_mm_dd(dateString) {
  // First check for the pattern
  if (!/^\d{4}\-\d{1,2}\-\d{1,2}$/.test(dateString)) return false;
  // Parse the date parts to integers
  var parts = dateString.split("-");
  var day = parseInt(parts[2], 10);
  var month = parseInt(parts[1], 10);
  var year = parseInt(parts[0], 10);
  // Check the ranges of month and year
  if (year < 1000 || year > 3000 || month == 0 || month > 12) return false;
  var monthLength = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
  // Adjust for leap years
  if (year % 400 == 0 || (year % 100 != 0 && year % 4 == 0))
    monthLength[1] = 29;
  // Check the range of the day
  return day > 0 && day <= monthLength[month - 1];
}

/**
 * @function Convert Date from YYYY-MM-DD to MM/DD/YYYY
 */
function convert_yyyy_mm_dd_to_mm_dd_yyyy(dateString) {
  var parts = dateString.split("-");
  return parts[1] + "/" + parts[2] + "/" + parts[0];
}

/**
 * @func: Redirect with POST data
 * @param: location - URL
 * @args: arguments in format {x:b, y:c}
 */
$.extend({
  post_redirect: function (location, args) {
    var form = "";
    $.each(args, function (key, value) {
      form += '<input type="hidden" name="' + key + '" value="' + value + '">';
    });
    $('<form action="' + location + '" method="POST">' + form + "</form>")
      .appendTo("body")
      .submit();
  },
});

/**
 * Format Date Time
 */
function format_datetime(datetime) {
  // Split timestamp into [ Y, M, D, h, m, s ]
  var t = datetime.split(/[- :]/);

  // Apply each element to the Date function
  var d = new Date(Date.UTC(t[0], t[1] - 1, t[2], t[3], t[4], t[5]));
  d = d.toString();

  return d.substring(0, d.indexOf("GMT") - 4);
}

/**
 * Format Date
 */
function format_date(inputDate) {
  var options = {
    weekday: "short",
    year: "numeric",
    month: "short",
    day: "numeric",
  };
  var inputDate = new Date(inputDate);
  return inputDate.toLocaleDateString("en-US", options);
}

/**
 * Calculate No. of Days between Date
 */
function days_between(date1, date2) {
  var date1 = new Date(date1);
  var date2 = new Date(date2);  
  var Difference_In_Time = date2.getTime() - date1.getTime();
  return Difference_In_Time / (1000 * 3600 * 24);
}

/**
 * Calculate Price of Discount
 */
 function get_price(price, discount)
 {
     if (discount <= 0)
         return price;
     return price - ((price / 100) * discount);
 }