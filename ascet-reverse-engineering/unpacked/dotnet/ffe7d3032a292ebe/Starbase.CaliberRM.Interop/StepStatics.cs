using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(StepStaticsClass))]
[Guid("10430195-72AE-11D5-B316-0800309CC2CE")]
public interface StepStatics : IStepStatics
{
}
