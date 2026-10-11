using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[Guid("A3DF3EA7-B490-11D3-8A29-00A0247767D8")]
[ProgId("Ascet.InputElement")]
[ClassInterface(ClassInterfaceType.None)]
public class InputElement : PrimitiveModelElement, InputElement_Dispatch, IInputElement, IPrimitiveModelElement, IAscetModelElement, IModelElement
{
	object InputElement_Dispatch.GetImplementation()
	{
		return GetImplementation();
	}

	object InputElement_Dispatch.GetValue()
	{
		return GetValue();
	}

	object InputElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object InputElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object InputElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public InputElement(CodeComponent item, Identifiable h)
		: base(item, h)
	{
	}

	public override bool IsInput()
	{
		return true;
	}
}
