using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Globalization;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
public class GridFormulaNamedRangesEditHelper
{
	[DocumentationExclude]
	protected class AlphaComparer : IComparer
	{
		[DocumentationExclude]
		public AlphaComparer()
		{
		}

		[DocumentationExclude]
		public int Compare(object x, object y)
		{
			return string.Compare(x.ToString(), y.ToString());
		}
	}

	[DocumentationExclude]
	public class NamedRangeList : ArrayList
	{
		[DocumentationExclude]
		public new NamedRange this[int i]
		{
			get
			{
				return (NamedRange)base[i];
			}
			set
			{
				base[i] = value;
			}
		}
	}

	[DocumentationExclude]
	public class NamedRange
	{
		private string key;

		private string val;

		[Description("The name used for this named range.")]
		[Category("NamedRange")]
		[DocumentationExclude]
		public string Key
		{
			get
			{
				return key;
			}
			set
			{
				key = value;
			}
		}

		[Description("The value for this named range.")]
		[Category("NamedRange")]
		[DocumentationExclude]
		public string Value
		{
			get
			{
				return val;
			}
			set
			{
				val = value;
			}
		}

		public NamedRange()
		{
			key = string.Empty;
			val = string.Empty;
		}

		public NamedRange(string key, string val)
		{
			this.key = key;
			this.val = val;
		}

		[DocumentationExclude]
		public override string ToString()
		{
			return key;
		}
	}

	private GridFormulaEngine engine;

	private Hashtable namedRanges;

	private NamedRangeList list;

	[DocumentationExclude]
	public NamedRangeList List
	{
		get
		{
			return list;
		}
		set
		{
			list = value;
		}
	}

	public static event ControlEventHandler ShowingNamedRangesDialog;

	public GridFormulaNamedRangesEditHelper()
	{
		namedRanges = new Hashtable();
		SetArrayList();
	}

	public GridFormulaNamedRangesEditHelper(GridFormulaEngine engine)
	{
		this.engine = engine;
		namedRanges = engine.NamedRanges;
		SetArrayList();
	}

	private void SetArrayList()
	{
		list = new NamedRangeList();
		foreach (string key in namedRanges.Keys)
		{
			list.Add(new NamedRange(engine.NamedRangesOriginalNames[key].ToString(), namedRanges[key].ToString()));
		}
		list.Sort(new AlphaComparer());
	}

	private static void ServiceContainerShowingDialog(object sender, ControlEventArgs e)
	{
		if (GridFormulaNamedRangesEditHelper.ShowingNamedRangesDialog != null)
		{
			GridFormulaNamedRangesEditHelper.ShowingNamedRangesDialog(sender, e);
		}
	}

	public static void ShowNamedRangesDialog(GridFormulaEngine engine)
	{
		GridFormulaNamedRangesEditHelper gridFormulaNamedRangesEditHelper = new GridFormulaNamedRangesEditHelper(engine);
		CollectionEditor collectionEditor = new CollectionEditor(typeof(NamedRangeList));
		WindowsFormsEditorServiceContainer windowsFormsEditorServiceContainer = new WindowsFormsEditorServiceContainer(null);
		windowsFormsEditorServiceContainer.ShowingDialog += ServiceContainerShowingDialog;
		PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(gridFormulaNamedRangesEditHelper)["List"];
		TypeDescriptorContext typeDescriptorContext = new TypeDescriptorContext(gridFormulaNamedRangesEditHelper, propertyDescriptor);
		typeDescriptorContext.ServiceProvider = windowsFormsEditorServiceContainer;
		NamedRangeList value = propertyDescriptor.GetValue(gridFormulaNamedRangesEditHelper) as NamedRangeList;
		NamedRangeList namedRangeList = collectionEditor.EditValue(typeDescriptorContext, windowsFormsEditorServiceContainer, value) as NamedRangeList;
		windowsFormsEditorServiceContainer.ShowingDialog -= ServiceContainerShowingDialog;
		if (namedRangeList == null || windowsFormsEditorServiceContainer.DialogResult != DialogResult.OK)
		{
			return;
		}
		ArrayList arrayList = new ArrayList();
		ArrayList arrayList2 = new ArrayList();
		Hashtable hashtable = (Hashtable)engine.NamedRanges.Clone();
		engine.NamedRanges.Clear();
		engine.NamedRangesOriginalNames.Clear();
		foreach (NamedRange item in namedRangeList)
		{
			string text = item.Key.ToUpper(CultureInfo.InvariantCulture);
			engine.AddNamedRange(item.Key, item.Value);
			if (hashtable.ContainsKey(text) && !hashtable[text].Equals(item.Value))
			{
				arrayList.Add(text);
			}
		}
		foreach (string key3 in hashtable.Keys)
		{
			if (!engine.NamedRanges.ContainsKey(key3))
			{
				arrayList2.Add(key3);
			}
		}
		if (arrayList2.Count > 0 || arrayList.Count > 0)
		{
			foreach (string item2 in arrayList)
			{
				engine.UpdateDependentNamedRangeCell(item2);
			}
			foreach (string item3 in arrayList2)
			{
				engine.UpdateDependentNamedRangeCell(item3);
				engine.RemoveNamedRangeDependency(item3);
			}
		}
		engine.AdjustNameRangesForSize();
	}
}
