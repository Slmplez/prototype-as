/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GAtomicSwComponentType
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.components;

import autosar40.swcomponent.components.SwComponentType;
import autosar40.swcomponent.components.SymbolProps;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import gautosar.gswcomponents.gcomponents.GAtomicSwComponentType;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface AtomicSwComponentType
extends SwComponentType,
GAtomicSwComponentType {
    public EList<SwcInternalBehavior> getInternalBehaviors();

    public SymbolProps getSymbolProps();

    public void setSymbolProps(SymbolProps var1);
}

