using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface ITwoDTableElement : IOneDTableElement, IPrimitiveModelElement, IAscetModelElement, IModelElement
{
	DistributionElement GetYDistribution();

	bool SetYDistribution(DistributionElement yDistribution);
}
