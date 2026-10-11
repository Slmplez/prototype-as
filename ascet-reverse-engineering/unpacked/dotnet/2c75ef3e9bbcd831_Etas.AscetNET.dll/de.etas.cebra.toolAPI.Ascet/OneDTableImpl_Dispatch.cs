using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface OneDTableImpl_Dispatch
{
	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetImplInfoForDistribution();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetImplInfoForValue();

	string GetRecordLayout();

	bool IsOneDTableImpl();

	bool SetImplInfoForDistribution(object dispatch_implInfo);

	bool SetImplInfoForValue(object dispatch_implInfo);

	bool SetRecordLayout(string recordLayout);

	string GetMemoryLocation();

	bool IsBoolImpl();

	bool IsImplItem();

	bool IsScalarImpl();

	bool IsTwoDTableImpl();

	bool SetMemoryLocation(string memLoc);

	bool IsConfigurationItem();

	bool IsDataItem();

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
