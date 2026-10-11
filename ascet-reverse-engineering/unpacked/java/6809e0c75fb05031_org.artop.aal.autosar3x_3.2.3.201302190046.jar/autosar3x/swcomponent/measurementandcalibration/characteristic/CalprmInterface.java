/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gportinterface.GParameterInterface
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.swcomponent.measurementandcalibration.characteristic;

import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import autosar3x.swcomponent.portinterface.PortInterface;
import gautosar.gswcomponents.gportinterface.GParameterInterface;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CalprmInterface
extends PortInterface,
GParameterInterface {
    public EList<CalprmElementPrototype> getCalprmElements();
}

