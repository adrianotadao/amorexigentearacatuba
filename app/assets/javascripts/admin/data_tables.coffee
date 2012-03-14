class window.DataTables
	constructor: ->
		oTable = $('table').dataTable( {
			sPaginationType: "full_numbers",
			iDisplayLength: 10,
			aLengthMenu: [[10, 25, 50, 100, -1], [10, 25, 50, 100, "Todos"]],
			oLanguage: {
			sUrl: "/javascripts/dataTables/data_tables_lang.json"
			}
		} )