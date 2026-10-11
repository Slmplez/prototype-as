using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Reflection;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Navigation.Design;

internal class SelectedBarEditor : ObjectSelectorEditor
{
	public class SelectorExt : Selector
	{
		public SelectorExt(ObjectSelectorEditor osEditor)
			: base(osEditor)
		{
		}

		protected override void OnNodeMouseClick(TreeNodeMouseClickEventArgs e)
		{
		}
	}

	public override bool IsDropDownResizable => true;

	public SelectedBarEditor()
		: base(subObjectSelector: true)
	{
	}

	protected override void FillTreeWithData(Selector selector, ITypeDescriptorContext context, IServiceProvider provider)
	{
		base.FillTreeWithData(selector, context, provider);
		if (context.Instance is NavigationView navigationView)
		{
			selector.BeginUpdate();
			SetupSelector(selector, navigationView);
			FillTreeNodes(navigationView.Bars, selector.Nodes);
			selector.EndUpdate();
		}
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		FieldInfo field = typeof(ObjectSelectorEditor).GetField("selector", BindingFlags.Instance | BindingFlags.NonPublic | BindingFlags.GetField);
		if (field != null)
		{
			field.SetValue(this, new SelectorExt(this));
		}
		return base.EditValue(context, provider, value);
	}

	private static void SetupSelector(Selector selector, NavigationView nv)
	{
	}

	private static void FillTreeNodes(BarCollection bars, TreeNodeCollection nodes)
	{
		foreach (Bar bar in bars)
		{
			SelectorNode selectorNode = new SelectorNode(bar.Text, bar);
			FillTreeNodes(bar.Bars, selectorNode.Nodes);
			nodes.Add(selectorNode);
		}
	}
}
