using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface Formula_Dispatch
{
	[return: MarshalAs(UnmanagedType.Struct)]
	object AvailableFormulaTypes();

	string GetComment();

	string GetContents();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetFormulaParameters();

	string GetFormulaType();

	string GetName();

	string GetUnit();

	bool Is5Parameters();

	bool IsFormula();

	bool IsIdentity();

	bool IsLinear();

	bool IsMoebius();

	bool Set5ParameterParameters(double p1, double p2, double p3, double p4, double p56);

	bool SetComment(string comment);

	bool SetLinearParameters(double c0, double c1);

	bool SetMoebiusParameters(double c0, double c1, double d0, double d1);

	bool SetName(string name);

	bool SetUnit(string unit);

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
