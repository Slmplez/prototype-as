using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(GlossaryTermManagerClass))]
[Guid("10430087-72AE-11D5-B316-0800309CC2CE")]
public interface GlossaryTermManager : IGlossaryTermManager
{
}
