
#include "cfe.h"
#include "cfe_tbl_filedef.h"  /* Required to obtain the CFE_TBL_FILEDEF macro definition */
#include "interface_table.h"


InterfaceTable_t TblStruct = {
	0,           // apPortType
	14551,       // apPortin
	0,           // apPortout
	"127.0.0.1", // ap address
	0,	         // gsPortType
	14552,       // gsPortin
	14553,       // gsPortout
	"127.0.0.1"  // gs address
};


/*
** The macro below identifies:
**    1) the data structure type to use as the table image format
**    2) the name of the table to be placed into the cFE Table File Header
**    3) a brief description of the contents of the file image
**    4) the desired name of the table image binary file that is cFE compatible
*/
CFE_TBL_FILEDEF(TblStruct, INTERFACE.InterfaceTable, Interface parameters, intf_tbl.tbl )
