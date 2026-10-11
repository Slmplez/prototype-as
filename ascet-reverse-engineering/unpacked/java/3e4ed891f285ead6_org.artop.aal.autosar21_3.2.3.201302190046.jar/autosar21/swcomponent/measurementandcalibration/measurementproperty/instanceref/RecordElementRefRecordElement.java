/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.components.PortPrototype;
import autosar21.swcomponent.composition.AssemblyConnectorPrototype;
import autosar21.swcomponent.composition.ComponentPrototype;
import autosar21.swcomponent.datatype.datatypes.RecordElement;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.RecordElementRef;
import autosar21.swcomponent.portinterface.DataElementPrototype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface RecordElementRefRecordElement
extends ARObject {
    public RecordElementRef getRecordElementRef();

    public void setRecordElementRef(RecordElementRef var1);

    public AssemblyConnectorPrototype getAssemblyConnectorPrototype();

    public void setAssemblyConnectorPrototype(AssemblyConnectorPrototype var1);

    public ComponentPrototype getComponentPrototype();

    public void setComponentPrototype(ComponentPrototype var1);

    public EList<ComponentPrototype> getCompositionComponentPrototypes();

    public EList<DataElementPrototype> getDataElementPrototypes();

    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);

    public RecordElement getRecordElement();

    public void setRecordElement(RecordElement var1);
}

