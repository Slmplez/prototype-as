using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IPrimitiveModelElement : IAscetModelElement, IModelElement
{
	bool ClearCalibration();

	bool ClearVariant();

	bool ClearVolatile();

	ImplItem GetImplementation();

	DataItem GetValue();

	bool SetCalibration();

	bool SetVariant();

	bool SetVolatile();
}
