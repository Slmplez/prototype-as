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
import autosar21.swcomponent.measurementandcalibration.measurementproperty.DataPrototypeRef;
import autosar21.swcomponent.portinterface.DataElementPrototype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface DataPrototypeRefDataPrototype
extends ARObject {
    public DataPrototypeRef getDataPrototypeRef();

    public void setDataPrototypeRef(DataPrototypeRef var1);

    public EList<ComponentPrototype> getCompositeComponentPrototypes();

    public AssemblyConnectorPrototype getAssemblyConnectorPrototype();

    public void setAssemblyConnectorPrototype(AssemblyConnectorPrototype var1);

    public ComponentPrototype getComponentPrototype();

    public void setComponentPrototype(ComponentPrototype var1);

    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);

    public DataPrototypeRefDataPrototype getDataPrototypeRef_DataPrototype();

    public void setDataPrototypeRef_DataPrototype(DataPrototypeRefDataPrototype var1);

    public DataElementPrototype getDataPrototype();

    public void setDataPrototype(DataElementPrototype var1);
}

