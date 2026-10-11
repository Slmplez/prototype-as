/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.swcomponent.components;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.swcomponent.components.ComponentType;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.components.instanceref.PortGroupInnerGroup;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PortGroup
extends Identifiable {
    public ComponentType getComponentType();

    public void setComponentType(ComponentType var1);

    public EList<PortGroupInnerGroup> getInnerGroups();

    public EList<PortPrototype> getOuterPorts();
}

