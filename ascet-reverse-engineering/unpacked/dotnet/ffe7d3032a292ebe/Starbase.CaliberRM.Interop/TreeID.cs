using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430025-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(TreeIDClass))]
public interface TreeID : ITreeID
{
}
