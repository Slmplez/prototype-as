/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.swcomponent.components.instanceref;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.components.PortGroup;
import autosar3x.swcomponent.composition.ComponentPrototype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PortGroupInnerGroup
extends ARObject {
    public EList<ComponentPrototype> getComponentPrototypes();

    public PortGroup getPortGroup();

    public void setPortGroup(PortGroup var1);
}

