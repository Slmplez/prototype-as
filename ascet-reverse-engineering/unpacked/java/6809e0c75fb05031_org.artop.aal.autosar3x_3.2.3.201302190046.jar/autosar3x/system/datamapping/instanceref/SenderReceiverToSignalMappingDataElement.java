/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.datamapping.instanceref;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.composition.ComponentPrototype;
import autosar3x.swcomponent.portinterface.DataElementPrototype;
import autosar3x.system.SoftwareComposition;
import autosar3x.system.datamapping.SenderReceiverToSignalMapping;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SenderReceiverToSignalMappingDataElement
extends ARObject {
    public SenderReceiverToSignalMapping getSenderReceiverToSignalMapping();

    public void setSenderReceiverToSignalMapping(SenderReceiverToSignalMapping var1);

    public SoftwareComposition getSoftwareComposition();

    public void setSoftwareComposition(SoftwareComposition var1);

    public EList<ComponentPrototype> getComponentPrototypes();

    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);

    public DataElementPrototype getDataElement();

    public void setDataElement(DataElementPrototype var1);
}

