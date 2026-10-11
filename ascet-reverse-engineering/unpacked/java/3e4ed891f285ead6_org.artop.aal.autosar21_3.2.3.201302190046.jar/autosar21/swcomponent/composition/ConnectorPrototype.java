/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomposition.GSwConnector
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.composition;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.composition.CompositionType;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.Measurable;
import gautosar.gswcomponents.gcomposition.GSwConnector;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ConnectorPrototype
extends Identifiable,
GSwConnector {
    public CompositionType getCompositionType();

    public void setCompositionType(CompositionType var1);

    public EList<Measurable> getMeasurables();
}

