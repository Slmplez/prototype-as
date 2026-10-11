using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
public interface ImplementationType_Dispatch
{
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

	bool IsTarget();

	bool IsTask();

	bool IsToolErrorAvailable();

	new bool Equals(object hndl);

	new int GetHashCode();
}
