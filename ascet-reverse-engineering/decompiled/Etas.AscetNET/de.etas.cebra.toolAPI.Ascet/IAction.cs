using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IAction : IAbstractMethod
{
	ComplexModelElement AddComplexLocalElement(string aName, AscetClass asdClass);

	PrimitiveModelElement AddPrimitiveLocalElement(string aName, string aType);

	AscetModelElement[] GetAllLocalElements();

	ActionConditionDiagram GetDiagram();

	AscetModelElement GetLocalElement(string aName);

	bool RemoveLocalElement(AscetModelElement element);

	bool SetName(string aName);
}
