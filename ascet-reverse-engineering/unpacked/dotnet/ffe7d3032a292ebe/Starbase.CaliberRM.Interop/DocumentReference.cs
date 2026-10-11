using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(DocumentReferenceClass))]
[Guid("10430067-72AE-11D5-B316-0800309CC2CE")]
public interface DocumentReference : IDocumentReference
{
}
