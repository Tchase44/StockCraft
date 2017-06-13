// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .

// $(document).ready(function() {
// 	let tickers = $('.tickers')
// 	let price = $('.price')

// 	$.each( tickers, function( key, value ) {
// 		let symbol = value.innerText
//     	$.getJSON( `https://www.enclout.com/api/v1/yahoo_finance/show.json?auth_token=8EtCTsrqZekzZvefp33a&text=${symbol}`, function( data ) {
// 			price[key].text(data[0].open)
// 		});
// 	})

// })
// https://api.intrinio.com

// username = "58c5da5c21c5403ddd1f4ba2cb9113b2"
// password = "a15a16683a83effb187349e3a2c406fd"
// request_url = "https://api.intrinio.com/companies?ticker=AAPL"