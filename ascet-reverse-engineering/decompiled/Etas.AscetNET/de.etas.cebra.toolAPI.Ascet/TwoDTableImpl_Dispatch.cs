using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
public interface TwoDTableImpl_Dispatch
{
	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetImplInfoForValue();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetImplInfoForXDistribution();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetImplInfoForYDistribution();

	string GetRecordLayout();

	bool IsTwoDTableImpl();

	bool SetImplInfoForValue(object dispatch_implInfo);

	bool SetImplInfoForXDistribution(object dispatch_implInfo);

	bool SetImplInfoForYDistribution(object dispatch_implInfo);

	bool SetRecordLayout(string recordLayout);

	string GetMemoryLocation();

	bool IsBoolImpl();

	bool IsImplItem();

	bool IsOneDTableImpl();

	bool IsScalarImpl();

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
