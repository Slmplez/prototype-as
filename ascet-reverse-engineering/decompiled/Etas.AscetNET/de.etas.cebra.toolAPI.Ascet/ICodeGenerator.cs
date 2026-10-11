using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface ICodeGenerator
{
	string[] GetAllCodeExpanders();

	string[] GetAllCodeGeneratorSettings();

	string GetCodeGeneratorSettingFor(string settingName);

	string GetCurrentCodeExpander();

	string GetName();

	string[] GetValuesForCodeGeneratorSetting(string settingName);

	bool IsCodeGenerator();

	bool IsControllerCodeGenerator();

	bool IsImplementationCodeGenerator();

	bool IsPhysicalCodeGenerator();

	bool IsQuantizedCodeGenerator();

	bool SetCodeGeneratorSetting(string settingName, string value_Renamed);

	bool SetCurrentCodeExpander(string expander);
}
