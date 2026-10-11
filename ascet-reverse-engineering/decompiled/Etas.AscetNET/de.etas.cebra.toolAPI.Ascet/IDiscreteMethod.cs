using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IDiscreteMethod : IAbstractMethod
{
	ComplexModelElement AddComplexArgumentElement(string aName, AscetClass asdClass);

	ComplexModelElement AddComplexLocalElement(string aName, AscetClass asdClass);

	ComplexModelElement AddComplexReturnElement(AscetClass asdClass);

	PrimitiveModelElement AddPrimitiveArgumentElement(string aName, string aType);

	PrimitiveModelElement AddPrimitiveLocalElement(string aName, string aType);

	PrimitiveModelElement AddPrimitiveReturnElement(string aType);

	AscetModelElement[] GetAllArgumentElements();

	AscetModelElement[] GetAllLocalElements();

	AscetModelElement GetArgumentElement(string aName);

	DiscreteMethodDiagram GetDiagram();

	AscetModelElement GetLocalElement(string aName);

	AscetModelElement GetReturnElement();

	bool RemoveArgumentElement(AscetModelElement element);

	bool RemoveLocalElement(AscetModelElement element);

	bool RemoveReturnElement();

	bool SetName(string aName);
}
