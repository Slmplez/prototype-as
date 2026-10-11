using System.ComponentModel;
using System.ComponentModel.Design;

namespace Syncfusion.Windows.Forms.Grid;

[ComplexBindingProperties("DataSource", "DataMember")]
internal class GridDataBoundGridChooseDataSourceActionList : DesignerActionList
{
	private GridDataBoundGridControlDesigner owner;

	[AttributeProvider(typeof(IListSource))]
	public object DataSource
	{
		get
		{
			return owner.DataSource;
		}
		set
		{
			GridDataBoundGrid gridDataBoundGrid = (GridDataBoundGrid)owner.Component;
			IDesignerHost designerHost = owner.Component.Site.GetService(typeof(IDesignerHost)) as IDesignerHost;
			PropertyDescriptor member = TypeDescriptor.GetProperties(gridDataBoundGrid)["DataSource"];
			IComponentChangeService componentChangeService = owner.Component.Site.GetService(typeof(IComponentChangeService)) as IComponentChangeService;
			object[] array = new object[1] { gridDataBoundGrid.Name };
			DesignerTransaction designerTransaction = designerHost.CreateTransaction("GridDataBoundGridChooseDataSourceTransactionString " + array.ToString());
			try
			{
				componentChangeService.OnComponentChanging(owner.Component, member);
				owner.DataSource = value;
				componentChangeService.OnComponentChanged(owner.Component, member, null, null);
				designerTransaction.Commit();
				designerTransaction = null;
			}
			finally
			{
				designerTransaction?.Cancel();
			}
		}
	}

	[DefaultValue("")]
	[Editor("System.Windows.Forms.Design.DataMemberListEditor, System.Design", "System.Drawing.Design.UITypeEditor, System.Drawing")]
	public string DataMember
	{
		get
		{
			return owner.DataMember;
		}
		set
		{
			GridDataBoundGrid gridDataBoundGrid = (GridDataBoundGrid)owner.Component;
			IDesignerHost designerHost = owner.Component.Site.GetService(typeof(IDesignerHost)) as IDesignerHost;
			PropertyDescriptor member = TypeDescriptor.GetProperties(gridDataBoundGrid)["DataMember"];
			IComponentChangeService componentChangeService = owner.Component.Site.GetService(typeof(IComponentChangeService)) as IComponentChangeService;
			object[] array = new object[1] { gridDataBoundGrid.Name };
			DesignerTransaction designerTransaction = designerHost.CreateTransaction("GridDataBoundGridChooseDataMemberTransactionString " + array.ToString());
			try
			{
				componentChangeService.OnComponentChanging(owner.Component, member);
				owner.DataMember = value;
				componentChangeService.OnComponentChanged(owner.Component, member, null, null);
				designerTransaction.Commit();
				designerTransaction = null;
			}
			finally
			{
				designerTransaction?.Cancel();
			}
		}
	}

	public GridDataBoundGridChooseDataSourceActionList(GridDataBoundGridControlDesigner owner)
		: base(owner.Component)
	{
		this.owner = owner;
	}

	public override DesignerActionItemCollection GetSortedActionItems()
	{
		DesignerActionItemCollection designerActionItemCollection = new DesignerActionItemCollection();
		designerActionItemCollection.Add(new DesignerActionHeaderItem("Data", "Data"));
		DesignerActionPropertyItem designerActionPropertyItem = new DesignerActionPropertyItem("DataSource", "Choose DataSource", "Data");
		designerActionPropertyItem.RelatedComponent = owner.Component;
		designerActionItemCollection.Add(designerActionPropertyItem);
		designerActionPropertyItem = new DesignerActionPropertyItem("DataMember", "Choose DataMember", "Data");
		designerActionPropertyItem.RelatedComponent = owner.Component;
		designerActionItemCollection.Add(designerActionPropertyItem);
		return designerActionItemCollection;
	}
}
