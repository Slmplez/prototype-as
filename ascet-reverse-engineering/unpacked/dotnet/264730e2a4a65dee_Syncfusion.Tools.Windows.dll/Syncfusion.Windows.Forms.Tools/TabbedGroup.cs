using System.Collections;
using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

public class TabbedGroup : DisposableWithDisposedProp, IChangeNotifyingItem
{
	internal const string FormAddedPropertyName = "FormAdded";

	internal const string FormRemovedPropertyName = "FormRemoved";

	private string groupName = string.Empty;

	internal TabHost tabHost;

	private Hashtable htForms = new Hashtable();

	public string GroupName => groupName;

	public Form[] MdiChildren
	{
		get
		{
			if (htForms.Count == 0)
			{
				return new Form[0];
			}
			Form[] array = new Form[htForms.Count];
			int num = -1;
			foreach (Form key in htForms.Keys)
			{
				num++;
				array[num] = key;
			}
			return array;
		}
	}

	public event SyncfusionPropertyChangedEventHandler PropertyChanged;

	public TabbedGroup(string groupName)
	{
		this.groupName = groupName;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && htForms != null)
		{
			htForms.Clear();
			htForms = null;
		}
		base.Dispose(disposing);
	}

	internal void AddForm(Form form, bool fireEvent)
	{
		if (!htForms.Contains(form))
		{
			htForms[form] = 1;
			if (fireEvent)
			{
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.None, "FormAdded", null, form));
			}
		}
	}

	public void AddForm(Form form)
	{
		AddForm(form, fireEvent: true);
	}

	public void RemoveForm(Form form)
	{
		RemoveForm(form, fireEvent: true);
	}

	internal void RemoveForm(Form form, bool fireEvent)
	{
		if (htForms.Contains(form))
		{
			htForms.Remove(form);
			if (fireEvent)
			{
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.None, "FormRemoved", null, form));
			}
		}
	}

	protected virtual void OnPropertyChanged(SyncfusionPropertyChangedEventArgs args)
	{
		if (this.PropertyChanged != null)
		{
			this.PropertyChanged(this, args);
		}
	}
}
