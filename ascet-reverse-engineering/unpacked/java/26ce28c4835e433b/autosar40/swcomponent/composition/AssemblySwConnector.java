/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomposition.GAssemblySwConnector
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar40.swcomponent.composition;

import autosar40.swcomponent.composition.SwConnector;
import autosar40.swcomponent.composition.instancerefs.PPortInCompositionInstanceRef;
import autosar40.swcomponent.composition.instancerefs.RPortInCompositionInstanceRef;
import gautosar.gswcomponents.gcomposition.GAssemblySwConnector;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface AssemblySwConnector
extends SwConnector,
GAssemblySwConnector {
    public PPortInCompositionInstanceRef getProvider();

    public void setProvider(PPortInCompositionInstanceRef var1);

    public RPortInCompositionInstanceRef getRequester();

    public void setRequester(RPortInCompositionInstanceRef var1);

    public boolean _clientservern1(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean _senderreceiver1norn1(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean _provideroclIsTypeOfServerPortPrototypeandrequesteroclIsTypeOfClientPortPrototypeorprovideroclIsTypeOfSenderPortPrototypeandrequesteroclIsTypeOfReceiverPortPrototype(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean compositionports_includesproviderandcompositionports_includesrequester(DiagnosticChain var1, Map<Object, Object> var2);
}

