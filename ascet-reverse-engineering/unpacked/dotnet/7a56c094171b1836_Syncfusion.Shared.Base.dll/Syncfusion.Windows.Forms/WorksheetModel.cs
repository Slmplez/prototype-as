using System;
using System.ComponentModel;
using System.Runtime.Serialization;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

[Serializable]
[ToolboxItem(false)]
public class WorksheetModel : Component, ISerializable
{
	internal WorkbookModel workbook;

	private string name = "Worksheet";

	private string toolTipText = "";

	private bool visible = true;

	private object content;

	public string Name
	{
		get
		{
			return name;
		}
		set
		{
			if (name != value)
			{
				name = value;
				OnNameChanged(EventArgs.Empty);
			}
		}
	}

	public object Content
	{
		get
		{
			return content;
		}
		set
		{
			if (content != value)
			{
				content = value;
				OnContentChanged(EventArgs.Empty);
			}
		}
	}

	[DefaultValue("")]
	public string ToolTipText
	{
		get
		{
			return toolTipText;
		}
		set
		{
			if (toolTipText != value)
			{
				toolTipText = value;
				OnToolTipTextChanged(EventArgs.Empty);
			}
		}
	}

	public bool Visible
	{
		get
		{
			return visible;
		}
		set
		{
			if (visible != value)
			{
				visible = value;
				OnVisibleChanged(EventArgs.Empty);
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public WorkbookModel Workbook => workbook;

	public event EventHandler NameChanged;

	public event EventHandler ToolTipTextChanged;

	public event EventHandler VisibleChanged;

	public event EventHandler ContentChanged;

	public WorksheetModel(WorkbookModel workbook, string name)
	{
		this.workbook = workbook;
		this.name = name;
	}

	public WorksheetModel(WorkbookModel workbook, string name, object content)
	{
		this.workbook = workbook;
		this.name = name;
		this.content = content;
	}

	protected WorksheetModel(SerializationInfo info, StreamingContext context)
	{
		name = info.GetString("Name");
		toolTipText = info.GetString("TooltipText");
		content = info.GetValue("Content", typeof(object));
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("Name", name);
		info.AddValue("TooltipText", toolTipText);
		info.AddValue("Content", content);
	}

	protected override void Dispose(bool disposing)
	{
		base.Dispose(disposing);
	}

	public Control CreateControl()
	{
		if (content is ICreateControl)
		{
			return ((ICreateControl)content).CreateControl();
		}
		return null;
	}

	protected virtual void OnNameChanged(EventArgs e)
	{
		if (this.NameChanged != null)
		{
			this.NameChanged(this, e);
		}
	}

	protected virtual void OnContentChanged(EventArgs e)
	{
		if (this.ContentChanged != null)
		{
			this.ContentChanged(this, e);
		}
	}

	protected virtual void OnToolTipTextChanged(EventArgs e)
	{
		if (this.ToolTipTextChanged != null)
		{
			this.ToolTipTextChanged(this, e);
		}
	}

	protected virtual void OnVisibleChanged(EventArgs e)
	{
		if (this.VisibleChanged != null)
		{
			this.VisibleChanged(this, e);
		}
	}
}
