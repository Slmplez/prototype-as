using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[ClassInterface(ClassInterfaceType.None)]
[Guid("970DBF01-8254-42f3-9E17-6C38CA92FC9F")]
[ProgId("Ascet.SystemConstantElement")]
public class SystemConstantElement : PrimitiveCTModelElement, SystemConstantElement_Dispatch, IConstantElement, IPrimitiveCTModelElement, IPrimitiveModelElement, IAscetModelElement, IModelElement
{
	object SystemConstantElement_Dispatch.GetImplementation()
	{
		return GetImplementation();
	}

	object SystemConstantElement_Dispatch.GetValue()
	{
		return GetValue();
	}

	object SystemConstantElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object SystemConstantElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object SystemConstantElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public SystemConstantElement(CodeComponent item, Identifiable h)
		: base(item, h)
	{
	}

	public override bool IsSystemConstant()
	{
		return true;
	}
}
