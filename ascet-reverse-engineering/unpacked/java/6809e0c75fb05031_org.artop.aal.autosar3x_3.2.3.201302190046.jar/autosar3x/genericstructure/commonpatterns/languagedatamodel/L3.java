/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.genericstructure.commonpatterns.languagedatamodel;

import autosar3x.genericstructure.commonpatterns.inlinetextmodel.MixedContent3;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.LEnum;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.MlDataModel3;

public interface L3
extends MixedContent3 {
    public MlDataModel3 getMlDataModel3();

    public void setMlDataModel3(MlDataModel3 var1);

    public LEnum getL();

    public void setL(LEnum var1);

    public void unsetL();

    public boolean isSetL();
}

