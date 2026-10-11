using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface ISignal : IComponent, IDataBaseItem
{
	string[] GetAllAvailableDataFormats();

	bool ReadFromFile(string fileName, string format);

	bool WriteToFile(string fileName, string format);
}
