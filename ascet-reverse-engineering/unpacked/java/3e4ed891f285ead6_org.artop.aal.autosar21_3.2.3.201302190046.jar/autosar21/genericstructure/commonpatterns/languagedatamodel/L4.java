/*
 * Decompiled with CFR 0.152.
 */
package autosar21.genericstructure.commonpatterns.languagedatamodel;

import autosar21.genericstructure.commonpatterns.inlinetextmodel.MixedContent4;
import autosar21.genericstructure.commonpatterns.languagedatamodel.LEnum;
import autosar21.genericstructure.commonpatterns.languagedatamodel.MlDataModel4;

public interface L4
extends MixedContent4 {
    public MlDataModel4 getMlDataModel4();

    public void setMlDataModel4(MlDataModel4 var1);

    public LEnum getL();

    public void setL(LEnum var1);

    public void unsetL();

    public boolean isSetL();
}

