using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IFunctionalComponent : ICodeComponent, IComponent, IDataBaseItem
{
	bool IsBDEType();

	bool IsCType();

	bool IsESDLType();
}
