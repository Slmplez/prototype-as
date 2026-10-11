/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GAtomicSwComponentType
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.components;

import autosar21.swcomponent.components.ComponentType;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.Measurable;
import gautosar.gswcomponents.gcomponents.GAtomicSwComponentType;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface AtomicSoftwareComponentType
extends ComponentType,
GAtomicSwComponentType {
    public EList<Measurable> getMeasurables();
}

