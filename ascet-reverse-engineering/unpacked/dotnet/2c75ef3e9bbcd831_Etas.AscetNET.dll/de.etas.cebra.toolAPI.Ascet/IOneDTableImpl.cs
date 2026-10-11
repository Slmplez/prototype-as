using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IOneDTableImpl : IImplItem, IConfigurationItem
{
	string GetRecordLayout();

	bool SetRecordLayout(string recordLayout);
}
