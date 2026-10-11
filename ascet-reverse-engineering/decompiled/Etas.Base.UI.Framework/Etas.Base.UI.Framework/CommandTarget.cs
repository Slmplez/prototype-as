using System;

namespace Etas.Base.UI.Framework;

internal class CommandTarget
{
	private object target;

	private Guid guidTargetId;

	public object Target => target;

	public Guid TargetId => guidTargetId;

	public CommandTarget(object clientTarget)
	{
		target = clientTarget;
		guidTargetId = Guid.NewGuid();
	}
}
