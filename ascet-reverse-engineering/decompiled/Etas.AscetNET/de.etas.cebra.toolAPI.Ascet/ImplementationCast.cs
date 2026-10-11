using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
[Guid("7FBE6975-50FB-443e-8170-C3357317A749")]
[ComVisible(true)]
[ProgId("Ascet.ImplementationCast")]
public class ImplementationCast : AscetModelElement, IImplementationCast, IAscetModelElement, IModelElement, ImplementationCast_Dispatch
{
	public ImplementationCast(CodeComponent item, Identifiable h)
		: base(item, h)
	{
	}

	public override bool IsImplementationCast()
	{
		return true;
	}

	[Obsolete("Since operator implementation is no longer supported this method is obsolete.")]
	public virtual bool SetImplementationFromOperatorAndElement(BlockDiagramOperator op, BlockDiagramElementPin pin, ImplConfiguration impl)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setImplementationFromOperator:andElementPin:forImplConfig:");
			instanceMethodCall.appendParameter(op);
			instanceMethodCall.appendParameter(pin);
			instanceMethodCall.appendParameter(impl);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetImplementationFromOperatorAndElement(): failed -> APIError: " + ex);
		}
		return false;
	}

	bool ImplementationCast_Dispatch.SetImplementationFromOperatorAndElement(object dispatch_op, object dispatch_pin, object dispatch_impl)
	{
		BlockDiagramOperator op = (BlockDiagramOperator)dispatch_op;
		BlockDiagramElementPin pin = (BlockDiagramElementPin)dispatch_pin;
		ImplConfiguration impl = (ImplConfiguration)dispatch_impl;
		return SetImplementationFromOperatorAndElement(op, pin, impl);
	}

	object ImplementationCast_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object ImplementationCast_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object ImplementationCast_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
