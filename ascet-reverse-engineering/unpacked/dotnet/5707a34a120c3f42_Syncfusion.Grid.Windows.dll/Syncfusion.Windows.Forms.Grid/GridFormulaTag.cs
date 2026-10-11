using System;
using System.Diagnostics;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridFormulaTag : ISerializable, ICloneable
{
	private string _formula;

	private string _text;

	private int _parsedRow;

	private int _parsedCol;

	public string Formula
	{
		get
		{
			return _formula;
		}
		set
		{
			_formula = value;
		}
	}

	public int ParsedRow
	{
		get
		{
			return _parsedRow;
		}
		set
		{
			_parsedRow = value;
		}
	}

	public int ParsedCol
	{
		get
		{
			return _parsedCol;
		}
		set
		{
			_parsedCol = value;
		}
	}

	public string Text
	{
		get
		{
			return _text;
		}
		set
		{
			_text = value;
		}
	}

	public GridFormulaTag()
	{
		_formula = string.Empty;
		_text = string.Empty;
		_parsedRow = -1;
		_parsedCol = -1;
	}

	public GridFormulaTag(string formula, string text)
	{
		_formula = formula;
		_text = text;
		_parsedRow = -1;
		_parsedCol = -1;
	}

	public GridFormulaTag(string formula, string text, int row, int col)
	{
		_formula = formula;
		_text = text;
		_parsedRow = row;
		_parsedCol = col;
	}

	protected GridFormulaTag(SerializationInfo info, StreamingContext context)
	{
		_parsedRow = (int)info.GetValue("_parsedRow", typeof(int));
		_parsedCol = (int)info.GetValue("_parsedCol", typeof(int));
		_formula = (string)info.GetValue("_formula", typeof(string));
		_text = (string)info.GetValue("_text", typeof(string));
	}

	public override string ToString()
	{
		return string.Format("GridFormulaTag({2},{3}) [ {0}-> {1}]", _formula, _text, _parsedRow, _parsedCol);
	}

	[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("_parsedRow", _parsedRow);
		info.AddValue("_parsedCol", _parsedCol);
		info.AddValue("_formula", _formula);
		info.AddValue("_text", _text);
	}

	[DebuggerStepThrough]
	public object Clone()
	{
		return new GridFormulaTag(Formula, Text, ParsedRow, ParsedCol);
	}
}
