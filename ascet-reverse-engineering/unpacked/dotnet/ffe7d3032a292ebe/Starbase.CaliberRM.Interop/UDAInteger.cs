using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(UDAIntegerClass))]
[Guid("10430127-72AE-11D5-B316-0800309CC2CE")]
public interface UDAInteger : IUDAInteger
{
}
