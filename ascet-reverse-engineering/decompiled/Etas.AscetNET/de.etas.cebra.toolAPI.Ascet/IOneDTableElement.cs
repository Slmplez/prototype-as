using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IOneDTableElement : IPrimitiveModelElement, IAscetModelElement, IModelElement
{
	DistributionElement GetXDistribution();

	bool IsFixedCharTable();

	bool IsGroupCharTable();

	bool IsVariable();

	bool SetToParameter();

	bool SetToVariable();

	bool SetXDistribution(DistributionElement xDistribution);
}
