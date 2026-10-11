using System;
using System.ComponentModel;
using System.Runtime.Serialization;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms;

[Serializable]
[ToolboxItem(false)]
public class WorkbookModel : Component, ISerializable, IDeserializationCallback
{
	private string name;

	private WorksheetModelCollection worksheets;

	private object activeView;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public WorksheetModelCollection Worksheets
	{
		get
		{
			if (worksheets == null)
			{
				worksheets = new WorksheetModelCollection();
			}
			return worksheets;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public object ActiveView
	{
		get
		{
			return activeView;
		}
		set
		{
			if (value != activeView)
			{
				activeView = value;
				OnActiveViewChanged(EventArgs.Empty);
			}
		}
	}

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

	public event EventHandler NameChanged;

	public event EventHandler ActiveViewChanged;

	public WorkbookModel(string name)
	{
		this.name = name;
	}

	protected WorkbookModel(SerializationInfo info, StreamingContext context)
	{
		name = info.GetString("Name");
		worksheets = (WorksheetModelCollection)info.GetValue("Worksheets", typeof(WorksheetModelCollection));
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("Name", name);
		info.AddValue("Worksheets", worksheets);
	}

	void IDeserializationCallback.OnDeserialization(object sender)
	{
		foreach (WorksheetModel worksheet in worksheets)
		{
			worksheet.workbook = this;
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			worksheets.Dispose();
		}
		base.Dispose(disposing);
	}

	protected virtual void OnActiveViewChanged(EventArgs e)
	{
		if (this.ActiveViewChanged != null)
		{
			this.ActiveViewChanged(this, e);
		}
	}

	protected virtual void OnNameChanged(EventArgs e)
	{
		try
		{
			if (this.NameChanged != null)
			{
				this.NameChanged(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	public override string ToString()
	{
		return "Workbook(" + name + "): " + base.ToString();
	}
}
