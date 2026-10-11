using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
[Guid("A3DF3EA3-B490-11D3-8A29-00A0247767D8")]
[ComVisible(true)]
[ProgId("Ascet.DiscreteStateElement")]
public class DiscreteStateElement : PrimitiveCTModelElement, IDiscreteStateElement, IPrimitiveCTModelElement, IPrimitiveModelElement, IAscetModelElement, IModelElement, DiscreteStateElement_Dispatch
{
	public DiscreteStateElement(CodeComponent item, Identifiable h)
		: base(item, h)
	{
	}

	public override bool IsDiscreteState()
	{
		return true;
	}

	object DiscreteStateElement_Dispatch.GetImplementation()
	{
		return GetImplementation();
	}

	object DiscreteStateElement_Dispatch.GetValue()
	{
		return GetValue();
	}

	object DiscreteStateElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object DiscreteStateElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object DiscreteStateElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
