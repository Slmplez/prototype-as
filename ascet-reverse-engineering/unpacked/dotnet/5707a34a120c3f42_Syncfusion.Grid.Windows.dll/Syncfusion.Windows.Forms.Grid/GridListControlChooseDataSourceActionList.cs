using System.ComponentModel;
using System.ComponentModel.Design;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridListControlChooseDataSourceActionList : DesignerActionList
{
	[AttributeProvider(typeof(IListSource))]
	public object DataSource
	{
		get
		{
			return Grid.DataSource;
		}
		set
		{
			IDesignerHost designerHost = base.Component.Site.GetService(typeof(IDesignerHost)) as IDesignerHost;
			PropertyDescriptor member = TypeDescriptor.GetProperties(Grid)["DataSource"];
			IComponentChangeService componentChangeService = base.Component.Site.GetService(typeof(IComponentChangeService)) as IComponentChangeService;
			object[] array = new object[1] { Grid.Name };
			DesignerTransaction designerTransaction = designerHost.CreateTransaction("GridListControlChooseDataSourceTransactionString " + array.ToString());
			try
			{
				componentChangeService.OnComponentChanging(base.Component, member);
				Grid.DataSource = value;
				componentChangeService.OnComponentChanged(base.Component, member, null, null);
				designerTransaction.Commit();
				designerTransaction = null;
			}
			finally
			{
				designerTransaction?.Cancel();
			}
		}
	}

	private GridListControl Grid => base.Component as GridListControl;

	public GridListControlChooseDataSourceActionList(IComponent component)
		: base(component)
	{
	}

	public override DesignerActionItemCollection GetSortedActionItems()
	{
		DesignerActionItemCollection designerActionItemCollection = new DesignerActionItemCollection();
		designerActionItemCollection.Add(new DesignerActionHeaderItem("Data", "Data"));
		DesignerActionPropertyItem designerActionPropertyItem = new DesignerActionPropertyItem("DataSource", "Choose DataSource", "Data");
		designerActionPropertyItem.RelatedComponent = base.Component;
		designerActionItemCollection.Add(designerActionPropertyItem);
		return designerActionItemCollection;
	}
}
