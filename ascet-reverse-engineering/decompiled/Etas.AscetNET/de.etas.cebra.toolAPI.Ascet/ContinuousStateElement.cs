using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[Guid("A3DF3E9F-B490-11D3-8A29-00A0247767D8")]
[ProgId("Ascet.ContinuousStateElement")]
[ClassInterface(ClassInterfaceType.None)]
public class ContinuousStateElement : PrimitiveCTModelElement, ContinuousStateElement_Dispatch, IContinuousStateElement, IPrimitiveCTModelElement, IPrimitiveModelElement, IAscetModelElement, IModelElement
{
	object ContinuousStateElement_Dispatch.GetImplementation()
	{
		return GetImplementation();
	}

	object ContinuousStateElement_Dispatch.GetValue()
	{
		return GetValue();
	}

	object ContinuousStateElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object ContinuousStateElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object ContinuousStateElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public ContinuousStateElement(CodeComponent item, Identifiable h)
		: base(item, h)
	{
	}

	public override bool IsContinuousState()
	{
		return true;
	}
}
