/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GRemark
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.genericstructure.commonpatterns.annotation;

import autosar3x.genericstructure.commonpatterns.annotation.GeneralAnnotation;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData1;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData5;
import autosar3x.genericstructure.infrastructure.ARObject;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GRemark;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Remark
extends ARObject,
GRemark {
    public GeneralAnnotation getGeneralAnnotation();

    public void setGeneralAnnotation(GeneralAnnotation var1);

    public EList<MlData1> getPs();

    public EList<MlData5> getVerbatims();
}

