using System;

namespace Etas.Base.UI.Framework;

[Serializable]
internal class CommandExecutorStackException : ApplicationException
{
	public CommandExecutorStackException(string sMessage)
		: base(sMessage)
	{
	}
}
