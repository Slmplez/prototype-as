using System;
using System.Diagnostics;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridRadioButtonInfo : ISerializable, ICloneable
{
	private string _description;

	private bool _enabled;

	public string Description
	{
		get
		{
			return _description;
		}
		set
		{
			_description = value;
		}
	}

	public bool Enabled
	{
		get
		{
			return _enabled;
		}
		set
		{
			_enabled = value;
		}
	}

	public GridRadioButtonInfo()
	{
		_enabled = true;
		_description = string.Empty;
	}

	public GridRadioButtonInfo(string desc, bool enabled)
	{
		_enabled = enabled;
		_description = desc;
	}

	protected GridRadioButtonInfo(SerializationInfo info, StreamingContext context)
	{
		_description = (string)info.GetValue("Description", typeof(string));
		_enabled = (bool)info.GetValue("Enabled", typeof(bool));
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
	public void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("Description", _description);
		info.AddValue("Enabled", _enabled);
	}

	[DebuggerStepThrough]
	public object Clone()
	{
		return new GridRadioButtonInfo(Description, Enabled);
	}
}
