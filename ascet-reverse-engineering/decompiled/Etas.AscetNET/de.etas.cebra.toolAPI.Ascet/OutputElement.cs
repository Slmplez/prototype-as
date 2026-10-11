using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ProgId("Ascet.OutputElement")]
[Guid("A3DF3EAA-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
public class OutputElement : PrimitiveModelElement, OutputElement_Dispatch, IOutputElement, IPrimitiveModelElement, IAscetModelElement, IModelElement
{
	object OutputElement_Dispatch.GetImplementation()
	{
		return GetImplementation();
	}

	object OutputElement_Dispatch.GetValue()
	{
		return GetValue();
	}

	object OutputElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object OutputElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object OutputElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public OutputElement(CodeComponent item, Identifiable h)
		: base(item, h)
	{
	}

	public override bool IsOutput()
	{
		return true;
	}
}
