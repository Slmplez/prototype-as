using System;
using System.ComponentModel;
using System.Diagnostics.CodeAnalysis;

namespace Autofac.Builder;

[EditorBrowsable(EditorBrowsableState.Never)]
public interface IHideObjectMembers
{
	[EditorBrowsable(EditorBrowsableState.Never)]
	[SuppressMessage("Microsoft.Design", "CA1024:UsePropertiesWhereAppropriate")]
	new Type GetType();

	[EditorBrowsable(EditorBrowsableState.Never)]
	new int GetHashCode();

	[EditorBrowsable(EditorBrowsableState.Never)]
	new string ToString();

	[EditorBrowsable(EditorBrowsableState.Never)]
	new bool Equals(object other);
}
