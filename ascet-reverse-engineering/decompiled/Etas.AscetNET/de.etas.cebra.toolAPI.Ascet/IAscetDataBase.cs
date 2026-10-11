using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.cebra.toolAPI.Inca;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IAscetDataBase : IIncaDataBase, IDataBase
{
	bool ExportXMLToFile(DataBaseItem[] items, string filePath, bool references);

	bool ExportXMLToZipFile(DataBaseItem[] items, string filePathAndName, bool references);

	DataBaseItem[] GetAllComponentsOfType(string typeString);

	DataBaseItem[] ImportXMLFromDirectory(string filePath, bool discardImpl, bool refItems);

	DataBaseItem ImportXMLFromFile(string filePath, string componentName, bool discardImpl, bool refItems);

	DataBaseItem[] ImportXMLFromZipFile(string filePathAndName, bool discardImpl, bool refItems);
}
