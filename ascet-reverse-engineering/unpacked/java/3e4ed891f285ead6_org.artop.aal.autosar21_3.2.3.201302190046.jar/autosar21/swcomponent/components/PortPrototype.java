/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GPortPrototype
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.components;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.applicationattributes.PortAnnotation;
import autosar21.swcomponent.components.ComponentType;
import gautosar.gswcomponents.gcomponents.GPortPrototype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PortPrototype
extends Identifiable,
GPortPrototype {
    public ComponentType getComponentType();

    public void setComponentType(ComponentType var1);

    public EList<PortAnnotation> getAnnotations();
}

