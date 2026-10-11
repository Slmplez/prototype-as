using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430079-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(GlossaryTermClass))]
public interface GlossaryTerm : IGlossaryTerm
{
}
