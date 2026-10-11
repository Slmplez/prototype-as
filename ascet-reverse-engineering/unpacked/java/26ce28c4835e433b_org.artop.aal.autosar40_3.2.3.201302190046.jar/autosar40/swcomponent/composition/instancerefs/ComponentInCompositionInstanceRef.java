/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.composition.instancerefs;

import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.swcomponent.composition.CompositionSwComponentType;
import autosar40.swcomponent.composition.SwComponentPrototype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ComponentInCompositionInstanceRef
extends AtpInstanceRef {
    public CompositionSwComponentType getBase();

    public EList<SwComponentPrototype> getContextComponents();

    public SwComponentPrototype getTargetComponent();

    public void setTargetComponent(SwComponentPrototype var1);
}

