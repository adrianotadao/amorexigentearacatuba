jQuery.fn.dataTableExt.oSort['numeric-html-comma-asc']  = function(a,b) {
	var x = a.replace( /<.*?>/g, "" );
	var y = b.replace( /<.*?>/g, "" );

    x = (x == "-") ? 0 : x.replace(/\./g,'').replace(/,/, ".");
	y = (y == "-") ? 0 : y.replace(/\./g,'').replace(/,/, ".");

	x = parseFloat( x );
	y = parseFloat( y );
	return ((x < y) ? -1 : ((x > y) ?  1 : 0));
};

jQuery.fn.dataTableExt.oSort['numeric-html-comma-desc'] = function(a,b) {
	var x = a.replace( /<.*?>/g, "" );
	var y = b.replace( /<.*?>/g, "" );

    x = (x == "-") ? 0 : x.replace(/\./g,'').replace( /,/, "." );
	y = (y == "-") ? 0 : y.replace(/\./g,'').replace( /,/, "." );

	x = parseFloat( x );
	y = parseFloat( y );
	return ((x < y) ?  1 : ((x > y) ? -1 : 0));
};

