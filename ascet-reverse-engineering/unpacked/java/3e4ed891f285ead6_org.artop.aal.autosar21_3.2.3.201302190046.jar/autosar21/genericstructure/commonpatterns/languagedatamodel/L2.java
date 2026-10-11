/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLOverviewParagraph
 */
package autosar21.genericstructure.commonpatterns.languagedatamodel;

import autosar21.genericstructure.commonpatterns.inlinetextmodel.MixedContent2;
import autosar21.genericstructure.commonpatterns.languagedatamodel.LEnum;
import autosar21.genericstructure.commonpatterns.languagedatamodel.MlDataModel2;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLOverviewParagraph;

public interface L2
extends MixedContent2,
GLOverviewParagraph {
    public MlDataModel2 getMlDataModel2();

    public void setMlDataModel2(MlDataModel2 var1);

    public LEnum getL();

    public void setL(LEnum var1);

    public void unsetL();

    public boolean isSetL();
}

