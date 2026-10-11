using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface TwoDTableData_Dispatch
{
	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetValue();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetXDistribution();

	int GetXSize();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetYDistribution();

	int GetYSize();

	bool IsExtrapolationConstant();

	bool IsInterpolationLinear();

	bool IsInterpolationRounded();

	bool IsTwoDTable();

	bool SetExtrapolationConstant();

	bool SetInterpolationLinear();

	bool SetInterpolationRounded();

	bool SetValue(object dispatch_matrix);

	bool SetXDistribution(object dispatch_dis);

	bool SetXSize(int size);

	bool SetYDistribution(object dispatch_dis);

	bool SetYSize(int size);

	bool IsArray();

	bool IsDataItem();

	bool IsDistribution();

	bool IsMatrix();

	bool IsOneDTable();

	bool IsScalar();

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
