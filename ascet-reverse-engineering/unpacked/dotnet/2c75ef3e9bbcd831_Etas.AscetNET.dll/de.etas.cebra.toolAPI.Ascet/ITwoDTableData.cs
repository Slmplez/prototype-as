using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface ITwoDTableData : IDataItem, IConfigurationItem
{
	int GetXSize();

	int GetYSize();

	bool IsExtrapolationConstant();

	bool IsInterpolationLinear();

	bool IsInterpolationRounded();

	bool SetExtrapolationConstant();

	bool SetInterpolationLinear();

	bool SetInterpolationRounded();

	bool SetXSize(int size);

	bool SetYSize(int size);
}
