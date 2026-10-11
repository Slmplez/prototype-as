/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.swcomponent.measurementandcalibration.measurementproperty.instanceref;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.composition.ComponentPrototype;
import autosar3x.swcomponent.datatype.datatypes.RecordElement;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.RecordElementRef;
import autosar3x.swcomponent.portinterface.DataElementPrototype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface RecordElementRefRecordElement
extends ARObject {
    public RecordElementRef getRecordElementRef();

    public void setRecordElementRef(RecordElementRef var1);

    public EList<ComponentPrototype> getCompositionComponentPrototypes();

    public ComponentPrototype getComponentPrototype();

    public void setComponentPrototype(ComponentPrototype var1);

    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);

    public EList<DataElementPrototype> getDataElementPrototypes();

    public RecordElement getRecordElement();

    public void setRecordElement(RecordElement var1);
}

