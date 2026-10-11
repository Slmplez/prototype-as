using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(LockableCaliberObjectStaticsClass))]
[Guid("1043000B-72AE-11D5-B316-0800309CC2CE")]
public interface LockableCaliberObjectStatics : ILockableCaliberObjectStatics
{
}
