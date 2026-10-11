using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(GlossaryStaticsClass))]
[Guid("10430073-72AE-11D5-B316-0800309CC2CE")]
public interface GlossaryStatics : IGlossaryStatics
{
}
