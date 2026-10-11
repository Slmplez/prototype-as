/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.measurementandcalibration.datadefproperties;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.datatype.valuemodel.Vf;
import autosar21.swcomponent.measurementandcalibration.axis.SwGenericAxisParam;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwGenericAxisParamValue
extends ARObject {
    public SwGenericAxisParam getSwGenericAxisParam();

    public void setSwGenericAxisParam(SwGenericAxisParam var1);

    public EList<Vf> getVfs();

    public EList<String> getVs();

    public void unsetVs();

    public boolean isSetVs();
}

