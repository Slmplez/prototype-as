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
import autosar21.swcomponent.portinterface.DataElementPrototype;
import autosar21.system.SoftwareComposition;
import autosar21.system.datamapping.SenderRecArrayElementMapping;
import autosar21.system.datamapping.instanceref.IndexedArrayElement;
import autosar21.system.datamapping.instanceref.IndexedDataPrototype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SenderRecArrayElementMappingArrayElement
extends ARObject {
    public SenderRecArrayElementMapping getSenderRecArrayElementMapping();

    public void setSenderRecArrayElementMapping(SenderRecArrayElementMapping var1);

    public SoftwareComposition getSoftwareComposition();

    public void setSoftwareComposition(SoftwareComposition var1);

    public EList<ComponentPrototype> getComponentPrototypes();

    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);

    public DataElementPrototype getDataElementPrototype();

    public void setDataElementPrototype(DataElementPrototype var1);

    public EList<IndexedDataPrototype> getNestingDataPrototypes();

    public IndexedArrayElement getArrayElement();

    public void setArrayElement(IndexedArrayElement var1);
}

