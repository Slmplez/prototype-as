using System;
using System.ComponentModel.Design;

namespace Syncfusion.Windows.Forms.Grid;

internal class DesignerActionVerbItem : DesignerActionMethodItem
{
	private DesignerVerb _targetVerb;

	public override string Category => "Grid";

	public override string Description => _targetVerb.Description;

	public override string DisplayName => _targetVerb.Text;

	public override bool IncludeAsDesignerVerb => false;

	public override string MemberName => null;

	public DesignerActionVerbItem(DesignerVerb verb)
		: base(null, string.Empty, string.Empty)
	{
		if (verb == null)
		{
			throw new ArgumentNullException();
		}
		_targetVerb = verb;
	}

	public override void Invoke()
	{
		_targetVerb.Invoke();
	}
}
