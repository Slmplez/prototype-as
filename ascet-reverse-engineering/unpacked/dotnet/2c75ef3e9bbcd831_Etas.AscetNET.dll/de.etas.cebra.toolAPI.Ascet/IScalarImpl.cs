using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IScalarImpl : IImplItem, IConfigurationItem
{
	ImplInfo GetImplInfoForValue();

	string GetRecordLayout();

	bool SetImplInfoForValue(ImplInfo implInfo);

	bool SetRecordLayout(string recordLayout);
}
