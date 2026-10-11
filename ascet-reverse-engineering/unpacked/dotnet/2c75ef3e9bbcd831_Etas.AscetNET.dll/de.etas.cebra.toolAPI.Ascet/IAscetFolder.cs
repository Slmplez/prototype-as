using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.cebra.toolAPI.Inca;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IAscetFolder : IIncaFolder, IFolder, IDataBaseItem
{
	DataBaseItem[] ImportXMLFilesFromDirectory(string filePath, bool discardImpl, bool remapOID, bool keepHierarchy, bool refItems);

	DataBaseItem ImportXMLFromFile(string filePath, string componentName, bool discardImpl, bool remapOID, bool keepHierarchy, bool refItems);

	DataBaseItem[] ImportXMLFromZipFile(string filePathAndName, bool discardImpl, bool remapOID, bool keepHierarchy, bool refItems);
}
