using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IScalarData : IReadOnlyScalarData, IDataItem, IConfigurationItem
{
	bool SetStringValue(string value_Renamed);

	bool SetBooleanValue(bool value_Renamed);

	bool SetDoubleValue(double value_Renamed);

	bool SetFloatValue(float value_Renamed);

	bool SetIntegerValue(int value_Renamed);

	bool SetLongValue(long value_Renamed);
}
