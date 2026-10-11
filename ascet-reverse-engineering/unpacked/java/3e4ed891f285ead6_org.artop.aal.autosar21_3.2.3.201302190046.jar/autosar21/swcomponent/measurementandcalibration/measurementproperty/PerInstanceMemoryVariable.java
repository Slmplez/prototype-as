/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.measurementandcalibration.measurementproperty;

import autosar21.swcomponent.datatype.datatypes.DataPrototype;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.Measurable;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PerInstanceMemoryVariable
extends DataPrototype {
    public EList<Measurable> getMeasurables();
}

