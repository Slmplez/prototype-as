using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IProcess : IAbstractMethod
{
	ComplexModelElement AddComplexLocalElement(string aName, AscetClass asdClass);

	PrimitiveModelElement AddPrimitiveLocalElement(string aName, string aType);

	AscetModelElement[] GetAllLocalElements();

	ProcessDiagram GetDiagram();

	AscetModelElement GetLocalElement(string aName);

	bool RemoveLocalElement(AscetModelElement element);

	bool SetName(string aName);
}
