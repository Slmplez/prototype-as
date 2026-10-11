using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("FD5B6C28-16E1-42C8-B866-986B98DC9B14")]
[ProgId("Ascet.DeltaTElement")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
public class DeltaTElement : ScalarElement, DeltaTElement_Dispatch, IDeltaTElement, IScalarElement, IPrimitiveDiscreteModelElement, IPrimitiveModelElement, IAscetModelElement, IModelElement
{
	object DeltaTElement_Dispatch.GetEnumerator()
	{
		return GetEnumerator();
	}

	bool DeltaTElement_Dispatch.SetEnumerator(object dispatch_enumerator)
	{
		AscetEnumeration enumerator = (AscetEnumeration)dispatch_enumerator;
		return SetEnumerator(enumerator);
	}

	object DeltaTElement_Dispatch.GetImplementation()
	{
		return GetImplementation();
	}

	object DeltaTElement_Dispatch.GetValue()
	{
		return GetValue();
	}

	object DeltaTElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object DeltaTElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object DeltaTElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public DeltaTElement(CodeComponent item, Identifiable h)
		: base(item, h)
	{
	}

	public override bool IsDeltaTElement()
	{
		return true;
	}
}
