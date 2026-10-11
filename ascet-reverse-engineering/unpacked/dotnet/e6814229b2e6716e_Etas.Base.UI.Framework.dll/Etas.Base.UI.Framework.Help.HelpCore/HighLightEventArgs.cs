using System;

namespace Etas.Base.UI.Framework.Help.HelpCore;

public class HighLightEventArgs : EventArgs
{
	private MappingDB.ControlsRow row;

	public MappingDB.ControlsRow CtlToHighlight => row;

	public HighLightEventArgs(MappingDB.ControlsRow row)
	{
		this.row = row;
	}
}
