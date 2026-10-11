using System;

namespace Etas.Base.UI.Framework;

[Serializable]
public class CommandExecutedEventArgs : EventArgs
{
	private Guid _stackId;

	public Guid CommandStackId => _stackId;

	public CommandExecutedEventArgs(Guid stackId)
	{
		_stackId = stackId;
	}
}
