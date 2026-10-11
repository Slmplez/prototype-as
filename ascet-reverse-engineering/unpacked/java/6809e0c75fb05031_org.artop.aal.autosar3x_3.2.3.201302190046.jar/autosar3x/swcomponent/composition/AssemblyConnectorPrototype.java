/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomposition.GAssemblySwConnector
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar3x.swcomponent.composition;

import autosar3x.swcomponent.composition.ConnectorPrototype;
import autosar3x.swcomponent.composition.instanceref.AssemblyConnectorPrototypeProvider;
import autosar3x.swcomponent.composition.instanceref.AssemblyConnectorPrototypeRequester;
import gautosar.gswcomponents.gcomposition.GAssemblySwConnector;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface AssemblyConnectorPrototype
extends ConnectorPrototype,
GAssemblySwConnector {
    public AssemblyConnectorPrototypeProvider getProvider();

    public void setProvider(AssemblyConnectorPrototypeProvider var1);

    public AssemblyConnectorPrototypeRequester getRequester();

    public void setRequester(AssemblyConnectorPrototypeRequester var1);

    public boolean _clientservern1(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean _senderreceiver1norn1(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean _provideroclIsTypeOfServerPortPrototypeandrequesteroclIsTypeOfClientPortPrototypeorprovideroclIsTypeOfSenderPortPrototypeandrequesteroclIsTypeOfReceiverPortPrototype(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean compositionports_includesproviderandcompositionports_includesrequester(DiagnosticChain var1, Map<Object, Object> var2);
}

