using System;

namespace Etas.Base.UI.Framework;

[Serializable]
internal class CommandStackInitializationException : ApplicationException
{
	public CommandStackInitializationException(string sMessage)
		: base(sMessage)
	{
	}
}
