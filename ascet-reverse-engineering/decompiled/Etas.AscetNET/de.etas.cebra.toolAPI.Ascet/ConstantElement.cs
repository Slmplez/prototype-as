using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
[Guid("A3DF3E9D-B490-11D3-8A29-00A0247767D8")]
[ProgId("Ascet.ConstantElement")]
[ComVisible(true)]
public class ConstantElement : PrimitiveCTModelElement, IConstantElement, IPrimitiveCTModelElement, IPrimitiveModelElement, IAscetModelElement, IModelElement, ConstantElement_Dispatch
{
	public ConstantElement(CodeComponent item, Identifiable h)
		: base(item, h)
	{
	}

	public override bool IsConstant()
	{
		return true;
	}

	object ConstantElement_Dispatch.GetImplementation()
	{
		return GetImplementation();
	}

	object ConstantElement_Dispatch.GetValue()
	{
		return GetValue();
	}

	object ConstantElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object ConstantElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object ConstantElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
