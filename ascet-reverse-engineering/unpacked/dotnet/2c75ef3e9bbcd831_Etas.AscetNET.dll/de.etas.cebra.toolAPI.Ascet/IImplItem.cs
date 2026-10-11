using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IImplItem : IConfigurationItem
{
	bool IsBoolImpl();

	bool IsOneDTableImpl();

	bool IsScalarImpl();

	bool IsTwoDTableImpl();
}
