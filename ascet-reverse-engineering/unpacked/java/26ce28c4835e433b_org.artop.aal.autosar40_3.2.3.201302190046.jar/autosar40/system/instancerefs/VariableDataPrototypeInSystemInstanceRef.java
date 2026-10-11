/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.instancerefs;

import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.composition.SwComponentPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.system.RootSwCompositionPrototype;
import autosar40.system.System;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface VariableDataPrototypeInSystemInstanceRef
extends AtpInstanceRef {
    public System getBase();

    public EList<SwComponentPrototype> getContextComponents();

    public RootSwCompositionPrototype getContextComposition();

    public void setContextComposition(RootSwCompositionPrototype var1);

    public PortPrototype getContextPort();

    public void setContextPort(PortPrototype var1);

    public VariableDataPrototype getTargetDataPrototype();

    public void setTargetDataPrototype(VariableDataPrototype var1);
}

