using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("A3DF3EB5-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[ProgId("Ascet.StepLocalElement")]
public class StepLocalElement : PrimitiveCTModelElement, IStepLocalElement, IPrimitiveCTModelElement, IPrimitiveModelElement, IAscetModelElement, IModelElement, StepLocalElement_Dispatch
{
	public StepLocalElement(CodeComponent item, Identifiable h)
		: base(item, h)
	{
	}

	public override bool IsStepLocal()
	{
		return true;
	}

	object StepLocalElement_Dispatch.GetImplementation()
	{
		return GetImplementation();
	}

	object StepLocalElement_Dispatch.GetValue()
	{
		return GetValue();
	}

	object StepLocalElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object StepLocalElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object StepLocalElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
