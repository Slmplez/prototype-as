/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar40.swcomponent.composition;

import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.composition.SwConnector;
import autosar40.swcomponent.composition.instancerefs.PortInCompositionTypeInstanceRef;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface DelegationSwConnector
extends SwConnector {
    public PortInCompositionTypeInstanceRef getInnerPort();

    public void setInnerPort(PortInCompositionTypeInstanceRef var1);

    public PortPrototype getOuterPort();

    public void setOuterPort(PortPrototype var1);

    public boolean _allinnerportsareofsametype(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean _allinnerportshavesameinterface(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean _innerportserverjust1innerport(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean _just1outerport(DiagnosticChain var1, Map<Object, Object> var2);
}

