using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using Syncfusion.Collections;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DesignerSerializer(typeof(BarsSerializer), typeof(CodeDomSerializer))]
public class Bars : ArrayListExt, IDisposable
{
	private bool validating;

	internal BarManager manager;

	public new Bar this[int index]
	{
		get
		{
			return (Bar)base[index];
		}
		set
		{
			base[index] = value;
		}
	}

	public override int Add(object value)
	{
		if (manager != null && manager.Designer != null && manager.Designer.DesignerHost.GetDesigner(value as IComponent) == null)
		{
			Bar bar = (Bar)value;
			Bar bar2 = (Bar)manager.Designer.DesignerHost.CreateComponent(typeof(Bar));
			bar2.Manager = bar.Manager;
			bar2.BarName = bar.BarName;
			bar2.BarStyle = bar.BarStyle;
			foreach (BarItem item in bar.Items)
			{
				bar2.Items.Add(item);
			}
			foreach (int separatorIndex in bar.SeparatorIndices)
			{
				bar2.SeparatorIndices.Add(separatorIndex);
			}
			value = bar2;
		}
		return base.Add(value);
	}

	public override void Remove(object obj)
	{
		if (base.Contains(obj))
		{
			base.Remove(obj);
		}
		else
		{
			RemoveMergedBar(obj as Bar);
		}
	}

	public override bool Contains(object item)
	{
		if (item is Bar barToFind && IsBarUsedForMerge(barToFind))
		{
			return true;
		}
		return base.Contains(item);
	}

	protected override void AddHandlers(object item)
	{
		if (!(item is Bar))
		{
			throw new ArrayTypeMismatchException();
		}
		Bar bar = item as Bar;
		ValidateBarStyles(bar);
		if (manager != null && bar.Manager != manager)
		{
			bar.Manager = manager;
		}
		base.AddHandlers(item);
	}

	protected override void OnItemPropertyChanged(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		ValidateBarStyles((Bar)sender);
		base.OnItemPropertyChanged(sender, e);
	}

	public virtual void Dispose()
	{
		Dispose(disposing: true);
		GC.SuppressFinalize(this);
	}

	protected virtual void Dispose(bool disposing)
	{
		Clear();
		manager = null;
	}

	private void ValidateBarStyles(Bar newBar)
	{
		if (validating)
		{
			return;
		}
		if (manager != null && manager is MainFrameBarManager && ((MainFrameBarManager)manager).ThemesEnabled && (newBar.BarStyle & BarStyle.RotateWhenVertical) <= BarStyle.None)
		{
			newBar.BarStyle |= BarStyle.RotateWhenVertical;
		}
		validating = true;
		bool flag = (newBar.BarStyle & BarStyle.IsMainMenu) > BarStyle.None;
		bool flag2 = (newBar.BarStyle & BarStyle.IsStatusBar) > BarStyle.None;
		if (flag2 && flag)
		{
			newBar.BarStyle &= ~BarStyle.IsStatusBar;
			flag2 = false;
		}
		for (int i = 0; i < Count; i++)
		{
			Bar bar = this[i];
			if (bar == newBar)
			{
				continue;
			}
			if (bar.BarName == newBar.BarName && (!(newBar.BarName == string.Empty) || !newBar.DesignMode))
			{
				validating = false;
				if (IsBarUsedForMerge(newBar))
				{
					Remove(newBar);
					return;
				}
				throw new Exception("Bar name " + newBar.BarName + " is not unique.");
			}
			if (flag && (bar.BarStyle & BarStyle.IsMainMenu) > BarStyle.None)
			{
				newBar.BarStyle &= ~BarStyle.IsMainMenu;
			}
			if (flag2 && (bar.BarStyle & BarStyle.IsStatusBar) > BarStyle.None)
			{
				newBar.BarStyle &= ~BarStyle.IsStatusBar;
			}
		}
		validating = false;
	}

	private bool IsBarUsedForMerge(Bar barToFind)
	{
		bool flag = false;
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				Bar bar = (Bar)enumerator.Current;
				if (!(bar is MergedBar { mergedBars: not null } mergedBar) || mergedBar.mergedBars.Length <= 0)
				{
					continue;
				}
				for (int i = 0; i < mergedBar.mergedBars.Length; i++)
				{
					if (mergedBar.mergedBars[i] == barToFind)
					{
						flag = true;
						break;
					}
				}
				if (flag)
				{
					break;
				}
			}
		}
		finally
		{
			IDisposable disposable = enumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
		return flag;
	}

	private void RemoveMergedBar(Bar bar)
	{
		if (bar == null)
		{
			return;
		}
		for (int i = 0; i < Count; i++)
		{
			if (!(this[i] is MergedBar { mergedBars: { } mergedBars } mergedBar))
			{
				continue;
			}
			ArrayList arrayList = new ArrayList(mergedBars);
			if (!arrayList.Contains(bar))
			{
				continue;
			}
			if (arrayList.Count > 1)
			{
				ArrayList arrayList2 = new ArrayList(bar.Items);
				foreach (BarItem item in arrayList2)
				{
					mergedBar.RemoveItem(item);
				}
				arrayList.Remove(bar);
				mergedBar.mergedBars = (Bar[])arrayList.ToArray(typeof(Bar));
			}
			else
			{
				base.Remove(mergedBar);
			}
		}
	}
}
