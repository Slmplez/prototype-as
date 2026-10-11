using System;

namespace Syncfusion.Windows.Forms.Tools;

public class CalculatorValueCalculatedEventArgs : EventArgs
{
	private CalculatorValue internalValue;

	private bool errorCondition;

	private string message;

	private double memoryValue;

	private CalcActions lastAction;

	public CalculatorValue Value
	{
		get
		{
			return internalValue;
		}
		set
		{
			internalValue = value;
		}
	}

	public CalcActions LastAction
	{
		get
		{
			return lastAction;
		}
		set
		{
			lastAction = value;
		}
	}

	public double MemoryValue
	{
		get
		{
			return memoryValue;
		}
		set
		{
			memoryValue = value;
		}
	}

	public string Message
	{
		get
		{
			return message;
		}
		set
		{
			message = value;
		}
	}

	public bool ErrorCondition
	{
		get
		{
			return errorCondition;
		}
		set
		{
			errorCondition = value;
		}
	}

	public CalculatorValueCalculatedEventArgs(CalculatorValue val, bool errorCondition, string message, CalcActions lastAction)
	{
		internalValue = val;
		this.errorCondition = errorCondition;
		this.message = message;
		this.lastAction = lastAction;
	}
}
