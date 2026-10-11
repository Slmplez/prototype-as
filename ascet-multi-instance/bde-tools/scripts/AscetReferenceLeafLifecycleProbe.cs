// Fixed research entrypoint. Shares connection/identity/WAL handshake with no-op.
class AscetReferenceLeafLifecycleProbe
{
    static int Main(string[] args) { return AscetReferenceLeafNoopProbe.Run(args, true); }
}
