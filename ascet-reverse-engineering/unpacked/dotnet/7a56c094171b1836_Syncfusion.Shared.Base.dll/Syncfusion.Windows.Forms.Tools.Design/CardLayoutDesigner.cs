using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.ComponentModel.Design.Serialization;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.Design;

[DocumentationExclude]
public class CardLayoutDesigner : LMDesigner
{
	private DesignerVerbCollection verbs;

	public override DesignerVerbCollection Verbs
	{
		get
		{
			if (verbs == null)
			{
				verbs = new DesignerVerbCollection();
				verbs.Add(new DesignerVerb("First Card", OnFirstPage));
				verbs.Add(new DesignerVerb("Last Card", OnLastPage));
				verbs.Add(new DesignerVerb("Next Card", OnNextPage));
				verbs.Add(new DesignerVerb("Previous Card", OnPreviousPage));
			}
			return verbs;
		}
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		if (component is ISupportInitialize)
		{
			((ISupportInitialize)component).BeginInit();
			Designer_SerializationComplete(null, EventArgs.Empty);
		}
	}

	private void Designer_SerializationComplete(object sender, EventArgs e)
	{
		if (base.Component is ISupportInitialize)
		{
			((ISupportInitialize)base.Component).EndInit();
		}
		IDesignerSerializationManager designerSerializationManager = (IDesignerSerializationManager)GetService(typeof(IDesignerSerializationManager));
		if (designerSerializationManager != null)
		{
			designerSerializationManager.SerializationComplete -= Designer_SerializationComplete;
		}
	}

	private void OnFirstPage(object sender, EventArgs e)
	{
		if (base.Component is CardLayout cardLayout)
		{
			cardLayout.First();
		}
	}

	private void OnLastPage(object sender, EventArgs e)
	{
		if (base.Component is CardLayout cardLayout)
		{
			cardLayout.Last();
		}
	}

	private void OnPreviousPage(object sender, EventArgs e)
	{
		if (base.Component is CardLayout cardLayout)
		{
			cardLayout.Previous();
		}
	}

	private void OnNextPage(object sender, EventArgs e)
	{
		if (base.Component is CardLayout cardLayout)
		{
			cardLayout.Next();
		}
	}
}
