using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ProgId("Ascet.SendReceiveMessageElement")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[Guid("A3DF3EB1-B490-11D3-8A29-00A0247767D8")]
public class SendReceiveMessageElement : MessageElement, ISendReceiveMessageElement, IMessageElement, IPrimitiveDiscreteModelElement, IPrimitiveModelElement, IAscetModelElement, IModelElement, SendReceiveMessageElement_Dispatch
{
	public SendReceiveMessageElement(CodeComponent component, Identifiable h)
		: base(component, h)
	{
	}

	public override bool IsSendReceiveMessage()
	{
		return true;
	}

	object SendReceiveMessageElement_Dispatch.GetEnumerator()
	{
		return GetEnumerator();
	}

	bool SendReceiveMessageElement_Dispatch.SetEnumerator(object dispatch_enumerator)
	{
		AscetEnumeration enumerator = (AscetEnumeration)dispatch_enumerator;
		return SetEnumerator(enumerator);
	}

	object SendReceiveMessageElement_Dispatch.GetImplementation()
	{
		return GetImplementation();
	}

	object SendReceiveMessageElement_Dispatch.GetValue()
	{
		return GetValue();
	}

	object SendReceiveMessageElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object SendReceiveMessageElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object SendReceiveMessageElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
