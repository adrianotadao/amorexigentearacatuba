/* DO NOT MODIFY. This file was compiled Sat, 11 Feb 2012 12:05:51 GMT from
 * /Volumes/data/voraz/amorexigente/app/assets/javascripts/admin/data_tables.coffee
 */


window.DataTables = (function() {

  function DataTables() {
    var oTable;
    oTable = $('table').dataTable({
      sPaginationType: "full_numbers",
      iDisplayLength: 10,
      aLengthMenu: [[10, 25, 50, 100, -1], [10, 25, 50, 100, "Todos"]],
      oLanguage: {
        sUrl: "/javascripts/dataTables/data_tables_lang.json"
      }
    });
  }

  return DataTables;

})();
