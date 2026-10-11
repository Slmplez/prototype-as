using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Collections;

[Serializable]
[Editor(typeof(ControlsCollectionEditor), typeof(UITypeEditor))]
public class ControlsCollection : CollectionBase
{
	private Control m_parent;

	protected Control Parent => m_parent;

	public Control this[int index]
	{
		get
		{
			return base.List[index] as Control;
		}
		set
		{
			base.List[index] = value;
		}
	}

	public event CollectionChangeEventHandler CollectionChanged;

	public event ConfigureControlEventHandler ConfigureControl;

	public ControlsCollection(Control parent)
	{
		if (parent == null)
		{
			throw new ArgumentNullException("parent");
		}
		m_parent = parent;
	}

	public ControlsCollection(Control parent, ConfigureControlEventHandler eventHandler)
		: this(parent)
	{
		if (eventHandler == null)
		{
			throw new ArgumentNullException("handler");
		}
		ConfigureControl += eventHandler;
	}

	protected virtual void OnCollectionChanged(CollectionChangeEventArgs e)
	{
		if (this.CollectionChanged != null)
		{
			this.CollectionChanged(this, e);
		}
	}

	protected virtual void ConfigureItem(Control control)
	{
		if (this.ConfigureControl != null)
		{
			this.ConfigureControl(this, new ConfigureControlEventArgs(control));
		}
	}

	public int Add(Control control)
	{
		int result = -1;
		if (!base.List.Contains(control))
		{
			result = base.List.Add(control);
		}
		return result;
	}

	public void AddRange(Control[] controls)
	{
		Parent.SuspendLayout();
		int i = 0;
		for (int num = controls.Length; i < num; i++)
		{
			if (!base.List.Contains(controls[i]))
			{
				base.List.Add(controls[i]);
			}
		}
		Parent.ResumeLayout(performLayout: true);
	}

	public void Remove(Control control)
	{
		if (base.List.Contains(control))
		{
			base.List.Remove(control);
		}
	}

	public void Insert(int index, Control control)
	{
		if (!base.List.Contains(control))
		{
			base.List.Insert(index, control);
		}
	}

	public bool Contains(Control control)
	{
		return base.List.Contains(control);
	}

	internal void HideControls(bool hide)
	{
		if (hide)
		{
			int count = base.List.Count;
			for (int i = 0; i < count; i++)
			{
				Control control = base.List[i] as Control;
				if (Parent.Contains(control))
				{
					Parent.Controls.Remove(control);
				}
			}
		}
		else
		{
			for (int j = 0; j < base.List.Count; j++)
			{
				Parent.Controls.Add(base.List[j] as Control);
			}
		}
	}

	protected override void OnClear()
	{
		Parent.SuspendLayout();
		int count = base.InnerList.Count;
		for (int i = 0; i < count; i++)
		{
			Parent.Controls.Remove(base.InnerList[0] as Control);
		}
		Parent.ResumeLayout(performLayout: true);
		base.OnClear();
		CollectionChangeEventArgs e = new CollectionChangeEventArgs(CollectionChangeAction.Refresh, null);
		OnCollectionChanged(e);
	}

	protected override void OnInsertComplete(int index, object value)
	{
		Control control = (Control)value;
		if (!Parent.Controls.Contains(control))
		{
			Parent.Controls.Add(control);
			ConfigureItem(control);
		}
		base.OnInsertComplete(index, value);
		CollectionChangeEventArgs e = new CollectionChangeEventArgs(CollectionChangeAction.Add, control);
		OnCollectionChanged(e);
	}

	protected override void OnRemoveComplete(int index, object value)
	{
		Control control = (Control)value;
		if (Parent.Controls.Contains(control))
		{
			Parent.Controls.Remove(control);
		}
		if (Parent is ScrollBarCustomDraw)
		{
			(Parent as ScrollBarCustomDraw).Layout();
		}
		base.OnRemoveComplete(index, value);
		CollectionChangeEventArgs e = new CollectionChangeEventArgs(CollectionChangeAction.Remove, control);
		OnCollectionChanged(e);
	}

	protected override void OnSetComplete(int index, object oldValue, object newValue)
	{
		Control control = (Control)newValue;
		Control value = (Control)oldValue;
		Parent.SuspendLayout();
		Parent.Controls.Remove(value);
		if (!Parent.Controls.Contains(control))
		{
			Parent.Controls.Add(control);
			ConfigureItem(control);
		}
		Parent.ResumeLayout();
		base.OnSetComplete(index, oldValue, newValue);
		CollectionChangeEventArgs e = new CollectionChangeEventArgs(CollectionChangeAction.Refresh, control);
		OnCollectionChanged(e);
	}
}
