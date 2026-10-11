/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GGeneralAnnotation
 */
package autosar3x.genericstructure.commonpatterns.annotation;

import autosar3x.genericstructure.commonpatterns.annotation.Remark;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData4;
import autosar3x.genericstructure.infrastructure.ARObject;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GGeneralAnnotation;

public interface GeneralAnnotation
extends ARObject,
GGeneralAnnotation {
    public MlData4 getLabel();

    public void setLabel(MlData4 var1);

    public String getAnnotationOrigin();

    public void setAnnotationOrigin(String var1);

    public void unsetAnnotationOrigin();

    public boolean isSetAnnotationOrigin();

    public Remark getAnnotationText();

    public void setAnnotationText(Remark var1);
}

