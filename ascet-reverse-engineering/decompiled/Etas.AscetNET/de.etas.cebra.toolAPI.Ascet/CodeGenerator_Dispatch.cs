using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface CodeGenerator_Dispatch
{
	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllCodeExpanders();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllCodeGeneratorSettings();

	string GetCodeGeneratorSettingFor(string settingName);

	string GetCurrentCodeExpander();

	string GetName();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetValuesForCodeGeneratorSetting(string settingName);

	bool IsCodeGenerator();

	bool IsControllerCodeGenerator();

	bool IsImplementationCodeGenerator();

	bool IsPhysicalCodeGenerator();

	bool IsQuantizedCodeGenerator();

	bool SetCodeGeneratorSetting(string settingName, string value_Renamed);

	bool SetCurrentCodeExpander(string expander);

	void CreateApplicationError();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetDataBase();

	int GetToolErrorCode();

	string GetToolErrorMessage();

	bool IsAbstractBlockDiagramElement();

	bool IsAbstractMethod();

	bool IsAscetDiagram();

	bool IsAscetProjectFile();

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
