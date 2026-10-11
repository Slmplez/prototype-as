using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(StepClass))]
[Guid("10430193-72AE-11D5-B316-0800309CC2CE")]
public interface Step : IStep
{
}
