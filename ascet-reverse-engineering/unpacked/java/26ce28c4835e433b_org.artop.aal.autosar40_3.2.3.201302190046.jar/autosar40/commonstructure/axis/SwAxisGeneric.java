/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.axis;

import autosar40.commonstructure.axis.SwAxisIndividual;
import autosar40.commonstructure.axis.SwAxisType;
import autosar40.commonstructure.axis.SwGenericAxisParam;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.IntegerValueVariationPoint;
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

    public IntegerValueVariationPoint getSwNumberOfAxisPoints();

    public void setSwNumberOfAxisPoints(IntegerValueVariationPoint var1);

    public EList<SwGenericAxisParam> getSwGenericAxisParams();
}

