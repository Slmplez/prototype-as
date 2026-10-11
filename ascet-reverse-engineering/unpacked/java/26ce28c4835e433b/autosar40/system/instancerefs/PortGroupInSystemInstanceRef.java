/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.instancerefs;

import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.swcomponent.components.PortGroup;
import autosar40.swcomponent.composition.SwComponentPrototype;
import autosar40.system.RootSwCompositionPrototype;
import autosar40.system.System;
import autosar40.system.pncmapping.PncMapping;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PortGroupInSystemInstanceRef
extends AtpInstanceRef {
    public PncMapping getPncMapping();

    public void setPncMapping(PncMapping var1);

    public System getBase();

    public RootSwCompositionPrototype getContextComposition();

    public void setContextComposition(RootSwCompositionPrototype var1);

    public EList<SwComponentPrototype> getContextComponents();

    public PortGroup getTarget();

    public void setTarget(PortGroup var1);
}

