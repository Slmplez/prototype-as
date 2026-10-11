using System;
using System.Collections;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public sealed class IEnumWrapper : IEnumerator
{
	private enum Position
	{
		Begin,
		Current,
		End
	}

	private object eObject;

	private Position pos;

	public object Current
	{
		get
		{
			if (pos == Position.Current)
			{
				return eObject;
			}
			throw new InvalidOperationException();
		}
	}

	public IEnumWrapper(object obj)
	{
		eObject = obj;
		pos = Position.Begin;
	}

	public bool MoveNext()
	{
		if (eObject != null && ++pos != Position.End)
		{
			return true;
		}
		return false;
	}

	public void Reset()
	{
		pos = Position.Begin;
	}
}
