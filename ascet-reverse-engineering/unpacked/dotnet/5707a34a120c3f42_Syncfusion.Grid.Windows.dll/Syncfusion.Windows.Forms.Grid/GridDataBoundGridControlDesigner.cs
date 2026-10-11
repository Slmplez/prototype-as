using System.Collections;
using System.ComponentModel.Design;
using System.Windows.Forms.Design;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
internal class GridDataBoundGridControlDesigner : ControlDesigner
{
	private DesignerActionListCollection actionLists;

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			if (actionLists == null)
			{
				BuildActionLists();
			}
			return actionLists;
		}
	}

	internal object DataSource
	{
		get
		{
			if (Control is GridDataBoundGrid gridDataBoundGrid)
			{
				return gridDataBoundGrid.DataSource;
			}
			return null;
		}
		set
		{
			if (Control is GridDataBoundGrid gridDataBoundGrid)
			{
				gridDataBoundGrid.DataSource = value;
			}
		}
	}

	internal string DataMember
	{
		get
		{
			if (Control is GridDataBoundGrid gridDataBoundGrid)
			{
				return gridDataBoundGrid.DataMember;
			}
			return null;
		}
		set
		{
			if (Control is GridDataBoundGrid gridDataBoundGrid)
			{
				gridDataBoundGrid.DataMember = value;
			}
		}
	}

	public override void InitializeNewComponent(IDictionary defaultValues)
	{
		if (Control is GridDataBoundGrid gridDataBoundGrid)
		{
			gridDataBoundGrid.UseListChangedEvent = true;
			gridDataBoundGrid.OptimizeInsertRemoveCells = true;
			gridDataBoundGrid.UseRightToLeftCompatibleTextBox = true;
		}
		base.InitializeNewComponent(defaultValues);
	}

	private void BuildActionLists()
	{
		actionLists = new DesignerActionListCollection();
		actionLists.Add(new GridDataBoundGridChooseDataSourceActionList(this));
		DesignerVerb[] array = new DesignerVerb[Verbs.Count];
		Verbs.CopyTo(array, 0);
		actionLists.Add(new DesignerActionSupportList(base.Component, array));
		actionLists[0].AutoShow = true;
	}
}
