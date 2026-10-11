using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[ProgId("Ascet.ParameterElement")]
[ClassInterface(ClassInterfaceType.None)]
[Guid("A3DF3EAB-B490-11D3-8A29-00A0247767D8")]
public class ParameterElement : PrimitiveCTModelElement, IParameterElement, IPrimitiveCTModelElement, IPrimitiveModelElement, IAscetModelElement, IModelElement, ParameterElement_Dispatch
{
	public ParameterElement(CodeComponent item, Identifiable h)
		: base(item, h)
	{
	}

	public override bool IsParameter()
	{
		return true;
	}

	object ParameterElement_Dispatch.GetImplementation()
	{
		return GetImplementation();
	}

	object ParameterElement_Dispatch.GetValue()
	{
		return GetValue();
	}

	object ParameterElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object ParameterElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object ParameterElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
