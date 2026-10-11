using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[Guid("A3DF3EA1-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.DependentParameterElement")]
public class DependentParameterElement : PrimitiveCTModelElement, IDependentParameterElement, IPrimitiveCTModelElement, IPrimitiveModelElement, IAscetModelElement, IModelElement, DependentParameterElement_Dispatch
{
	public DependentParameterElement(CodeComponent item, Identifiable h)
		: base(item, h)
	{
	}

	public override bool IsDependentParameter()
	{
		return true;
	}

	object DependentParameterElement_Dispatch.GetImplementation()
	{
		return GetImplementation();
	}

	object DependentParameterElement_Dispatch.GetValue()
	{
		return GetValue();
	}

	object DependentParameterElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object DependentParameterElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object DependentParameterElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
