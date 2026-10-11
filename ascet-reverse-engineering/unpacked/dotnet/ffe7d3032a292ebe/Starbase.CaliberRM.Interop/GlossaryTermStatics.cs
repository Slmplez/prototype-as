using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(GlossaryTermStaticsClass))]
[Guid("1043007D-72AE-11D5-B316-0800309CC2CE")]
public interface GlossaryTermStatics : IGlossaryTermStatics
{
}
