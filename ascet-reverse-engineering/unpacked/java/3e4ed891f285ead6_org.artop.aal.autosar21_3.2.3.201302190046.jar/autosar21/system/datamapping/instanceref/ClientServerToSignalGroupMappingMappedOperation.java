/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.datamapping.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.components.PortPrototype;
import autosar21.swcomponent.composition.ComponentPrototype;
import autosar21.swcomponent.portinterface.OperationPrototype;
import autosar21.system.SoftwareComposition;
import autosar21.system.datamapping.ClientServerToSignalGroupMapping;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ClientServerToSignalGroupMappingMappedOperation
extends ARObject {
    public ClientServerToSignalGroupMapping getClientServerToSignalGroupMapping();

    public void setClientServerToSignalGroupMapping(ClientServerToSignalGroupMapping var1);

    public SoftwareComposition getCompositionPrototype();

    public void setCompositionPrototype(SoftwareComposition var1);

    public EList<ComponentPrototype> getComponentPrototypes();

    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);

    public OperationPrototype getOperation();

    public void setOperation(OperationPrototype var1);
}

