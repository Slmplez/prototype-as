using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IReadOnlyScalarData : IDataItem, IConfigurationItem
{
	string GetStringValue();

	bool GetBooleanValue();

	double GetDoubleValue();

	float GetFloatValue();

	int GetIntegerValue();

	long GetLongValue();
}
