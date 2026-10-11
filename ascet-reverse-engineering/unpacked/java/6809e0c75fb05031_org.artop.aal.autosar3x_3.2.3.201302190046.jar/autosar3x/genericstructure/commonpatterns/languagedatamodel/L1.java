/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLParagraph
 */
package autosar3x.genericstructure.commonpatterns.languagedatamodel;

import autosar3x.genericstructure.commonpatterns.inlinetextmodel.MixedContent1;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.LEnum;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.MlDataModel1;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLParagraph;

public interface L1
extends MixedContent1,
GLParagraph {
    public MlDataModel1 getMlDataModel1();

    public void setMlDataModel1(MlDataModel1 var1);

    public LEnum getL();

    public void setL(LEnum var1);

    public void unsetL();

    public boolean isSetL();
}

