using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("A3DF3EB0-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[ProgId("Ascet.SendMessageElement")]
public class SendMessageElement : MessageElement, ISendMessageElement, IMessageElement, IPrimitiveDiscreteModelElement, IPrimitiveModelElement, IAscetModelElement, IModelElement, SendMessageElement_Dispatch
{
	public SendMessageElement(CodeComponent component, Identifiable h)
		: base(component, h)
	{
	}

	public override bool IsSendMessage()
	{
		return true;
	}

	object SendMessageElement_Dispatch.GetEnumerator()
	{
		return GetEnumerator();
	}

	bool SendMessageElement_Dispatch.SetEnumerator(object dispatch_enumerator)
	{
		AscetEnumeration enumerator = (AscetEnumeration)dispatch_enumerator;
		return SetEnumerator(enumerator);
	}

	object SendMessageElement_Dispatch.GetImplementation()
	{
		return GetImplementation();
	}

	object SendMessageElement_Dispatch.GetValue()
	{
		return GetValue();
	}

	object SendMessageElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object SendMessageElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object SendMessageElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
