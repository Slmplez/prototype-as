using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ProgId("Ascet.ReceiveMessageElement")]
[ComVisible(true)]
[Guid("A3DF3EAE-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
public class ReceiveMessageElement : MessageElement, IReceiveMessageElement, IMessageElement, IPrimitiveDiscreteModelElement, IPrimitiveModelElement, IAscetModelElement, IModelElement, ReceiveMessageElement_Dispatch
{
	public ReceiveMessageElement(CodeComponent component, Identifiable h)
		: base(component, h)
	{
	}

	public override bool IsReceiveMessage()
	{
		return true;
	}

	object ReceiveMessageElement_Dispatch.GetEnumerator()
	{
		return GetEnumerator();
	}

	bool ReceiveMessageElement_Dispatch.SetEnumerator(object dispatch_enumerator)
	{
		AscetEnumeration enumerator = (AscetEnumeration)dispatch_enumerator;
		return SetEnumerator(enumerator);
	}

	object ReceiveMessageElement_Dispatch.GetImplementation()
	{
		return GetImplementation();
	}

	object ReceiveMessageElement_Dispatch.GetValue()
	{
		return GetValue();
	}

	object ReceiveMessageElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object ReceiveMessageElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object ReceiveMessageElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
