using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IScalarElement : IPrimitiveDiscreteModelElement, IPrimitiveModelElement, IAscetModelElement, IModelElement
{
	AscetEnumeration GetEnumerator();

	bool IsVariable();

	bool SetEnumerator(AscetEnumeration enumerator);

	bool SetToConstant();

	bool SetToParameter();

	bool SetToSystemConstant();

	bool SetToVariable();
}
