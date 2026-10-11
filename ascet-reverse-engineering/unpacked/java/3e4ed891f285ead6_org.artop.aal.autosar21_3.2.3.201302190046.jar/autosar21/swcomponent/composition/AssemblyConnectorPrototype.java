/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomposition.GAssemblySwConnector
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.composition;

import autosar21.swcomponent.communication.ConnectorComSpec;
import autosar21.swcomponent.composition.ConnectorPrototype;
import autosar21.swcomponent.composition.instanceref.AssemblyConnectorPrototypeProvider;
import autosar21.swcomponent.composition.instanceref.AssemblyConnectorPrototypeRequester;
import gautosar.gswcomponents.gcomposition.GAssemblySwConnector;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface AssemblyConnectorPrototype
extends ConnectorPrototype,
GAssemblySwConnector {
    public EList<ConnectorComSpec> getConnectorComSpecs();

    public AssemblyConnectorPrototypeProvider getProvider();

    public void setProvider(AssemblyConnectorPrototypeProvider var1);

    public AssemblyConnectorPrototypeRequester getRequester();

    public void setRequester(AssemblyConnectorPrototypeRequester var1);

    public boolean _clientservern1(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean _senderreceiver1norn1(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean _provideroclIsTypeOfServerPortPrototypeandrequesteroclIsTypeOfClientPortPrototypeorprovideroclIsTypeOfSenderPortPrototypeandrequesteroclIsTypeOfReceiverPortPrototype(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean compositionports_includesproviderandcompositionports_includesrequester(DiagnosticChain var1, Map<Object, Object> var2);
}

