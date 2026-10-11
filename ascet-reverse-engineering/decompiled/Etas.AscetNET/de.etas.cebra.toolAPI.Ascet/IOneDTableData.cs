using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IOneDTableData : IDataItem, IConfigurationItem
{
	int GetSize();

	bool IsExtrapolationConstant();

	bool IsInterpolationLinear();

	bool IsInterpolationRounded();

	bool SetExtrapolationConstant();

	bool SetInterpolationLinear();

	bool SetInterpolationRounded();

	bool SetSize(int size);
}
