using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[Guid("A3DF3E9C-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.ComplexModelElement")]
public class ComplexModelElement : AscetModelElement, ComplexModelElement_Dispatch, IComplexModelElement, IAscetModelElement, IModelElement
{
	object ComplexModelElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object ComplexModelElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object ComplexModelElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public ComplexModelElement(CodeComponent item, Identifiable h)
		: base(item, h)
	{
	}

	public override bool IsComplex()
	{
		return true;
	}
}
