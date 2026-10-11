/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.measurementandcalibration.axis;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisIndividual;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisType;
import autosar21.swcomponent.measurementandcalibration.axis.SwGenericAxisParam;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwAxisGeneric
extends ARObject {
    public SwAxisIndividual getSwAxisIndividual();

    public void setSwAxisIndividual(SwAxisIndividual var1);

    public SwAxisType getSwAxisType();

    public void setSwAxisType(SwAxisType var1);

    public EList<SwGenericAxisParam> getSwGenericAxisParams();
}

