using System.Runtime.InteropServices;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[ClassInterface(ClassInterfaceType.None)]
[Guid("EEC35C5D-4A06-43d2-82A4-3DAC36FB8260")]
[ProgId("Ascet.ResourceModelElement")]
public class ResourceModelElement : PrimitiveModelElement, ResourceModelElement_Dispatch
{
	object ResourceModelElement_Dispatch.GetImplementation()
	{
		return GetImplementation();
	}

	object ResourceModelElement_Dispatch.GetValue()
	{
		return GetValue();
	}

	object ResourceModelElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object ResourceModelElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object ResourceModelElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public ResourceModelElement(CodeComponent item, Identifiable h)
		: base(item, h)
	{
	}

	public override bool IsModelResource()
	{
		return true;
	}
}
