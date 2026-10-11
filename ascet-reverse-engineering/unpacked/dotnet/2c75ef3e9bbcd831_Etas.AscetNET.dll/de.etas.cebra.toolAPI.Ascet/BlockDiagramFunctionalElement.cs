using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[ClassInterface(ClassInterfaceType.None)]
[Guid("A3DF3E96-B490-11D3-8A29-00A0247767D8")]
[ProgId("Ascet.BlockDiagramFunctionalElement")]
public class BlockDiagramFunctionalElement : BlockDiagramElement, BlockDiagramFunctionalElement_Dispatch, IBlockDiagramFunctionalElement, IBlockDiagramElement, IAbstractBlockDiagramElement
{
	object BlockDiagramFunctionalElement_Dispatch.GetModelElement()
	{
		return GetModelElement();
	}

	object BlockDiagramFunctionalElement_Dispatch.GetAllPins()
	{
		BlockDiagramElementPin[] allPins = GetAllPins();
		return Adapter.ToObject(allPins);
	}

	int BlockDiagramFunctionalElement_Dispatch.GetGraphicalObjectIdentifier()
	{
		long graphicalObjectIdentifier = GetGraphicalObjectIdentifier();
		return (int)graphicalObjectIdentifier;
	}

	object BlockDiagramFunctionalElement_Dispatch.GetPosition()
	{
		long[] position = GetPosition();
		return Adapter.ToObject(position);
	}

	object BlockDiagramFunctionalElement_Dispatch.GetSize()
	{
		long[] size = GetSize();
		return Adapter.ToObject(size);
	}

	object BlockDiagramFunctionalElement_Dispatch.GetAllAvailableViews()
	{
		string[] allAvailableViews = GetAllAvailableViews();
		return Adapter.ToObject(allAvailableViews);
	}

	object BlockDiagramFunctionalElement_Dispatch.GetAllAvailableViewTypes()
	{
		string[] allAvailableViewTypes = GetAllAvailableViewTypes();
		return Adapter.ToObject(allAvailableViewTypes);
	}

	object BlockDiagramFunctionalElement_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object BlockDiagramFunctionalElement_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object BlockDiagramFunctionalElement_Dispatch.GetHierarchy()
	{
		return GetHierarchy();
	}

	object BlockDiagramFunctionalElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public BlockDiagramFunctionalElement(AscetDiagram diag, Identifiable h)
		: base(diag, h)
	{
	}

	public virtual AscetModelElement GetModelElement()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getModelElement");
			call(instanceMethodCall);
			return identifyAscetModelElement(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetModelElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	protected internal virtual AscetModelElement identifyAscetModelElement(Identifiable obj)
	{
		try
		{
			return GetCodeComponent().identifyAscetModelElement(obj);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".identifyAscetModelElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	protected internal virtual PrimitiveCTModelElement identifyPrimitiveCTModelElement(Identifiable obj)
	{
		try
		{
			if (isXXX(obj, "Constant"))
			{
				return new ConstantElement(GetCodeComponent(), obj);
			}
			if (isXXX(obj, "ContinuousState"))
			{
				return new ContinuousStateElement(GetCodeComponent(), obj);
			}
			if (isXXX(obj, "DependentParameter"))
			{
				return new DependentParameterElement(GetCodeComponent(), obj);
			}
			if (isXXX(obj, "DiscreteState"))
			{
				return new DiscreteStateElement(GetCodeComponent(), obj);
			}
			if (isXXX(obj, "Parameter"))
			{
				return new ParameterElement(GetCodeComponent(), obj);
			}
			if (isXXX(obj, "StepLocal"))
			{
				return new StepLocalElement(GetCodeComponent(), obj);
			}
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".identifyPrimitiveCTModelElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	protected internal virtual PrimitiveDiscreteModelElement identifyPrimitiveDiscreteModelElement(Identifiable obj)
	{
		try
		{
			if (isXXX(obj, "Scalar"))
			{
				return new ScalarElement(GetCodeComponent(), obj);
			}
			if (isXXX(obj, "Array"))
			{
				return new ArrayElement(GetCodeComponent(), obj);
			}
			if (isXXX(obj, "SendMessage"))
			{
				return new SendMessageElement(GetCodeComponent(), obj);
			}
			if (isXXX(obj, "ReceiveMessage"))
			{
				return new ReceiveMessageElement(GetCodeComponent(), obj);
			}
			if (isXXX(obj, "SendReceiveMessage"))
			{
				return new SendReceiveMessageElement(GetCodeComponent(), obj);
			}
			if (isXXX(obj, "Matrix"))
			{
				return new MatrixElement(GetCodeComponent(), obj);
			}
			if (isXXX(obj, "Distribution"))
			{
				return new DistributionElement(GetCodeComponent(), obj);
			}
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".identifyAscetModelElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsBlockDiagramFunctionalElement()
	{
		return true;
	}
}
