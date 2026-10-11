using System.ComponentModel;
using System.ComponentModel.Design;
using System.Diagnostics;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

internal class DesignerActionSupportList : DesignerActionList
{
	private DesignerVerb[] _verbs;

	private string keyword = string.Empty;

	private SearchOptions search = SearchOptions.KnowledgeBase;

	public string KeyWord
	{
		get
		{
			return keyword;
		}
		set
		{
			keyword = value;
		}
	}

	public GridVisualStyles GridVisualStyles
	{
		get
		{
			return Grid.Model.Options.GridVisualStyles;
		}
		set
		{
			IDesignerHost designerHost = base.Component.Site.GetService(typeof(IDesignerHost)) as IDesignerHost;
			PropertyDescriptor member = TypeDescriptor.GetProperties(Grid.Model.Options)["GridVisualStyles"];
			IComponentChangeService componentChangeService = base.Component.Site.GetService(typeof(IComponentChangeService)) as IComponentChangeService;
			object[] array = new object[1] { Grid.Name };
			DesignerTransaction designerTransaction = designerHost.CreateTransaction("GridVisualStylesTransactionString " + array.ToString());
			try
			{
				componentChangeService.OnComponentChanging(Grid.Model.Options, member);
				Grid.Model.Options.GridVisualStyles = value;
				componentChangeService.OnComponentChanged(Grid.Model.Options, member, null, null);
				designerTransaction.Commit();
				designerTransaction = null;
			}
			finally
			{
				designerTransaction?.Cancel();
			}
		}
	}

	public SearchOptions Search
	{
		get
		{
			return search;
		}
		set
		{
			search = value;
		}
	}

	private GridControlBase Grid
	{
		get
		{
			if (base.Component is GridControlBase)
			{
				return (GridControlBase)base.Component;
			}
			if (base.Component is GridListControl)
			{
				return (base.Component as GridListControl).Grid;
			}
			return null;
		}
	}

	public DesignerActionSupportList(IComponent component, DesignerVerb[] verbs)
		: base(component)
	{
		_verbs = verbs;
	}

	public override DesignerActionItemCollection GetSortedActionItems()
	{
		DesignerActionItemCollection designerActionItemCollection = new DesignerActionItemCollection();
		designerActionItemCollection.Add(new DesignerActionHeaderItem("Look and feel", "Grid"));
		if (_verbs != null)
		{
			for (int i = 0; i < _verbs.Length; i++)
			{
				if (_verbs[i].Visible && _verbs[i].Enabled && _verbs[i].Supported)
				{
					designerActionItemCollection.Add(new DesignerActionVerbItem(_verbs[i]));
				}
			}
		}
		designerActionItemCollection.Add(new DesignerActionPropertyItem("GridVisualStyles", "Skins", "Grid"));
		designerActionItemCollection.Add(new DesignerActionHeaderItem("Documentation and Support Resource", "Assistance"));
		designerActionItemCollection.Add(new DesignerActionMethodItem(this, "OnViewOnLineDocumentation", "Online Documentation", "Assistance"));
		designerActionItemCollection.Add(new DesignerActionMethodItem(this, "OnGoToForums", "Forums Support", "Assistance"));
		designerActionItemCollection.Add(new DesignerActionMethodItem(this, "OnGoToDirectTrac", "Direct-Trac Support", "Assistance"));
		designerActionItemCollection.Add(new DesignerActionPropertyItem("Search", "Search: ", "Assistance"));
		designerActionItemCollection.Add(new DesignerActionPropertyItem("KeyWord", string.Empty, "Assistance"));
		designerActionItemCollection.Add(new DesignerActionMethodItem(this, "OnSearch", "Search...", "Assistance"));
		return designerActionItemCollection;
	}

	protected void OnSearch()
	{
		switch (search)
		{
		case SearchOptions.Forums:
			OnView($"http://www.syncfusion.com/support/forums/grid-windows/search/{keyword}");
			break;
		case SearchOptions.KnowledgeBase:
			OnView($"http://www.syncfusion.com/support/kb/tag/{keyword}");
			break;
		case SearchOptions.Syncfusion:
			OnView($"http://www.syncfusion.com/search/{keyword}");
			break;
		}
	}

	private void OnViewOnLineDocumentation()
	{
		OnView("http://help.syncfusion.com/ug_84/User Interface/Windows Forms/Grid/index.htm");
	}

	private void OnGoToForums()
	{
		OnView("http://www.syncfusion.com/support/forums");
	}

	private void OnGoToDirectTrac()
	{
		OnView("http://www.syncfusion.com/Account/Logon?ReturnUrl=%2fsupport%2fdirecttrac");
	}

	private void OnView(string link)
	{
		Cursor current = Cursor.Current;
		try
		{
			Cursor.Current = Cursors.WaitCursor;
			Process.Start(link);
		}
		finally
		{
			Cursor.Current = current;
		}
	}
}
