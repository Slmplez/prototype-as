/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.swcomponent.datatype.recordlayout;

import autosar40.commonstructure.axis.SwGenericAxisParamType;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageOverviewParagraph;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayoutGroupContent;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface SwRecordLayoutGroup
extends ARObject {
    public String getShortLabel();

    public void setShortLabel(String var1);

    public void unsetShortLabel();

    public boolean isSetShortLabel();

    public String getCategory();

    public void setCategory(String var1);

    public void unsetCategory();

    public boolean isSetCategory();

    public MultiLanguageOverviewParagraph getDesc();

    public void setDesc(MultiLanguageOverviewParagraph var1);

    public String getSwRecordLayoutGroupAxis();

    public void setSwRecordLayoutGroupAxis(String var1);

    public void unsetSwRecordLayoutGroupAxis();

    public boolean isSetSwRecordLayoutGroupAxis();

    public String getSwRecordLayoutGroupIndex();

    public void setSwRecordLayoutGroupIndex(String var1);

    public void unsetSwRecordLayoutGroupIndex();

    public boolean isSetSwRecordLayoutGroupIndex();

    public SwGenericAxisParamType getSwGenericAxisParamType();

    public void setSwGenericAxisParamType(SwGenericAxisParamType var1);

    public String getSwRecordLayoutGroupFrom();

    public void setSwRecordLayoutGroupFrom(String var1);

    public void unsetSwRecordLayoutGroupFrom();

    public boolean isSetSwRecordLayoutGroupFrom();

    public String getSwRecordLayoutGroupTo();

    public void setSwRecordLayoutGroupTo(String var1);

    public void unsetSwRecordLayoutGroupTo();

    public boolean isSetSwRecordLayoutGroupTo();

    public Integer getSwRecordLayoutGroupStep();

    public void setSwRecordLayoutGroupStep(Integer var1);

    public void unsetSwRecordLayoutGroupStep();

    public boolean isSetSwRecordLayoutGroupStep();

    public String getSwRecordLayoutComponent();

    public void setSwRecordLayoutComponent(String var1);

    public void unsetSwRecordLayoutComponent();

    public boolean isSetSwRecordLayoutComponent();

    public SwRecordLayoutGroupContent getSwRecordLayoutGroupContentType();

    public void setSwRecordLayoutGroupContentType(SwRecordLayoutGroupContent var1);

    public IntegerDatatype getSwRecordLayoutGroupStepData();

    public void setSwRecordLayoutGroupStepData(IntegerDatatype var1);
}

