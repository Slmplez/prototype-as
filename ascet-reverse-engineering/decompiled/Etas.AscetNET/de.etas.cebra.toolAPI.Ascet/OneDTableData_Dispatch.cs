using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface OneDTableData_Dispatch
{
	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetDistribution();

	int GetSize();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetValue();

	bool IsExtrapolationConstant();

	bool IsInterpolationLinear();

	bool IsInterpolationRounded();

	bool IsOneDTable();

	bool SetDistribution(object dispatch_dis);

	bool SetExtrapolationConstant();

	bool SetInterpolationLinear();

	bool SetInterpolationRounded();

	bool SetSize(int size);

	bool SetValue(object dispatch_array);

	bool IsArray();

	bool IsDataItem();

	bool IsDistribution();

	bool IsMatrix();

	bool IsScalar();

	bool IsTwoDTable();

	bool IsConfigurationItem();

	bool IsImplItem();

	void CreateApplicationError();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetDataBase();

	int GetToolErrorCode();

	string GetToolErrorMessage();

	bool IsAbstractBlockDiagramElement();

	bool IsAbstractMethod();

	bool IsAscetDiagram();

	bool IsAscetProjectFile();

	bool IsCodeGenerator();

	bool IsConfiguration();

	bool IsDataBaseItem();

	bool IsDeviceDescription();

	bool IsFormula();

	bool IsHWDevice();

	bool IsHWSubDevice();

	bool IsHWSystem();

	bool IsImplInfo();

	bool IsModelElement();

	bool IsSubDeviceDescription();

	bool IsSystemDescription();

	bool IsTarget();

	bool IsTask();

	bool IsToolErrorAvailable();

	new bool Equals(object hndl);

	new int GetHashCode();
}
