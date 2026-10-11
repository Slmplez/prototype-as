using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface Target_Dispatch
{
	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllCompilers();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllMemoryLocations();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllMemoryLocationsFor(object dispatch_element);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllMemoryLocationsForParameter();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllMemoryLocationsForVariable();

	string GetCurrentCompiler();

	string GetName();

	bool IsTarget();

	bool SetCurrentCompiler(string aCompiler);

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

	bool IsConfigurationItem();

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

	bool IsTask();

	bool IsToolErrorAvailable();

	new bool Equals(object hndl);

	new int GetHashCode();
}
