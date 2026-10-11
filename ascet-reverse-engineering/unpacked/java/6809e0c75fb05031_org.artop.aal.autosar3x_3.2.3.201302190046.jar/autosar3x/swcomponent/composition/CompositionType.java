/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomposition.GCompositionSwComponentType
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.swcomponent.composition;

import autosar3x.swcomponent.components.ComponentType;
import autosar3x.swcomponent.composition.ComponentPrototype;
import autosar3x.swcomponent.composition.ConnectorPrototype;
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

