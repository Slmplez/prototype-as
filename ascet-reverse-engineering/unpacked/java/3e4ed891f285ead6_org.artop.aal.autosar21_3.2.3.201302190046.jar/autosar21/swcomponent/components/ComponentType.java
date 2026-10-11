/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GSwComponentType
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.components;

import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.swcomponent.components.PortPrototype;
import gautosar.gswcomponents.gcomponents.GSwComponentType;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ComponentType
extends ARElement,
GSwComponentType {
    public EList<PortPrototype> getPorts();
}

