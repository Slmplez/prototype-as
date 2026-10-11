/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomposition.GCompositionSwComponentType
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.composition;

import autosar21.swcomponent.components.ComponentType;
import autosar21.swcomponent.composition.ComponentPrototype;
import autosar21.swcomponent.composition.ConnectorPrototype;
import gautosar.gswcomponents.gcomposition.GCompositionSwComponentType;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CompositionType
extends ComponentType,
GCompositionSwComponentType {
    public EList<ComponentPrototype> getComponents();

    public EList<ConnectorPrototype> getConnectors();
}

