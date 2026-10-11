/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GAnnotation
 */
package autosar3x.genericstructure.commonpatterns.annotation;

import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.genericstructure.commonpatterns.annotation.GeneralAnnotation;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GAnnotation;

public interface Annotation
extends GeneralAnnotation,
GAnnotation {
    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);
}

