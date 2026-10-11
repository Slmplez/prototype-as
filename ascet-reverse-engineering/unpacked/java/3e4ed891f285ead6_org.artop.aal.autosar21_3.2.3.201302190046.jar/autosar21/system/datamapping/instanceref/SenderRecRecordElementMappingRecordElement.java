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
import autosar21.swcomponent.datatype.datatypes.RecordElement;
import autosar21.swcomponent.portinterface.DataElementPrototype;
import autosar21.system.SoftwareComposition;
import autosar21.system.datamapping.SenderRecRecordElementMapping;
import autosar21.system.datamapping.instanceref.IndexedDataPrototype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SenderRecRecordElementMappingRecordElement
extends ARObject {
    public SenderRecRecordElementMapping getSenderRecRecordElementMapping();

    public void setSenderRecRecordElementMapping(SenderRecRecordElementMapping var1);

    public SoftwareComposition getSoftwareComposition();

    public void setSoftwareComposition(SoftwareComposition var1);

    public EList<ComponentPrototype> getComponentPrototypes();

    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);

    public DataElementPrototype getDataElementPrototype();

    public void setDataElementPrototype(DataElementPrototype var1);

    public EList<IndexedDataPrototype> getNestingDataPrototypes();

    public RecordElement getRecordElement();

    public void setRecordElement(RecordElement var1);
}

