/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar3x.swcomponent.composition;

import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.composition.ConnectorPrototype;
import autosar3x.swcomponent.composition.instanceref.DelegationConnectorPrototypeInnerPort;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface DelegationConnectorPrototype
extends ConnectorPrototype {
    public DelegationConnectorPrototypeInnerPort getInnerPort();

    public void setInnerPort(DelegationConnectorPrototypeInnerPort var1);

    public PortPrototype getOuterPort();

    public void setOuterPort(PortPrototype var1);

    public boolean _allinnerportsareofsametype(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean _allinnerportshavesameinterface(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean _innerportserverjust1innerport(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean _just1outerport(DiagnosticChain var1, Map<Object, Object> var2);
}

