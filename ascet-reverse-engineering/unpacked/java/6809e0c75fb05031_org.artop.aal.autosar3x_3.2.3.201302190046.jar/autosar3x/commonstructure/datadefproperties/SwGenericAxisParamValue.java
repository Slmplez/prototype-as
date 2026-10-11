/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.commonstructure.datadefproperties;

import autosar3x.commonstructure.axis.SwGenericAxisParam;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.datatype.valuemodel.Vf;
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

