using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IAscetModelElement : IModelElement
{
	bool CouldEnableGetAccess();

	bool CouldEnableSetAccess();

	bool DisableGetAccess();

	bool DisableSetAccess();

	bool EnableGetAccess();

	bool EnableSetAccess();

	CodeComponent GetOwnerForElement();

	bool HasGetAccess();

	bool HasSetAccess();

	bool IsArray();

	bool IsComplex();

	bool IsConstant();

	bool IsContinuousState();

	bool IsDeltaTElement();

	bool IsDependentParameter();

	bool IsDiscreteState();

	bool IsDistribution();

	bool IsEnumeration();

	bool IsImplementationCast();

	bool IsInput();

	bool IsMatrix();

	bool IsMessage();

	bool IsModelResource();

	bool IsOneDTable();

	bool IsOutput();

	bool IsParameter();

	bool IsPrimitive();

	bool IsPrimitiveCTModelElement();

	bool IsPrimitiveDiscreteModelElement();

	bool IsReceiveMessage();

	bool IsScalar();

	bool IsSendMessage();

	bool IsSendReceiveMessage();

	bool IsStepLocal();

	bool IsSystemConstant();

	bool IsTwoDTable();
}
