using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface ImplInfo_Dispatch
{
	string GetAdditionalInfo();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetDoubleImplRange();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetDoublePhysicalRange();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetFloatImplRange();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetFloatPhysicalRange();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetFormula();

	string GetFormulaName();

	string GetImplType();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetIntegerImplRange();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetIntegerPhysicalRange();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetLongImplRange();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetLongPhysicalRange();

	string GetModelType();

	bool GetOptionLimitAssignment();

	bool GetOptionLimitOverflow();

	double GetQuantization();

	bool IsChoiceAutomaticResolution();

	bool IsChoiceKeepResolution();

	bool IsChoiceReduceResolution();

	bool IsMasterModel();

	bool SetAdditionalInfo(string additionalInfo);

	bool SetChoiceAutomaticResolution();

	bool SetChoiceKeepResolution();

	bool SetChoiceReduceResolution();

	bool SetDoubleImplRange([MarshalAs(UnmanagedType.Struct)] object interval);

	bool SetDoublePhysicalRange([MarshalAs(UnmanagedType.Struct)] object interval);

	bool SetFloatImplRange([MarshalAs(UnmanagedType.Struct)] object interval);

	bool SetFloatPhysicalRange([MarshalAs(UnmanagedType.Struct)] object interval);

	bool SetFormula(object dispatch_formula);

	bool SetFormulaName(string name);

	bool SetImplType(string implType);

	bool SetIntegerImplRange([MarshalAs(UnmanagedType.Struct)] object interval);

	bool SetIntegerPhysicalRange([MarshalAs(UnmanagedType.Struct)] object interval);

	bool SetLongImplRange([MarshalAs(UnmanagedType.Struct)] object interval);

	bool SetLongPhysicalRange([MarshalAs(UnmanagedType.Struct)] object interval);

	bool SetMasterModel(bool masterModel);

	bool SetOptionLimitAssignment(bool state);

	bool SetOptionLimitOverflow(bool state);

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
