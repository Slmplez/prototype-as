/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.swcomponent.datatype.recordlayout;

import autosar40.commonstructure.axis.SwGenericAxisParamType;
import autosar40.commonstructure.basetypes.SwBaseType;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageOverviewParagraph;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayoutGroupContent;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface SwRecordLayoutV
extends ARObject {
    public SwRecordLayoutGroupContent getSwRecordLayoutGroupContent();

    public void setSwRecordLayoutGroupContent(SwRecordLayoutGroupContent var1);

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

    public SwBaseType getBaseType();

    public void setBaseType(SwBaseType var1);

    public String getSwRecordLayoutVAxis();

    public void setSwRecordLayoutVAxis(String var1);

    public void unsetSwRecordLayoutVAxis();

    public boolean isSetSwRecordLayoutVAxis();

    public String getSwRecordLayoutVProp();

    public void setSwRecordLayoutVProp(String var1);

    public void unsetSwRecordLayoutVProp();

    public boolean isSetSwRecordLayoutVProp();

    public String getSwRecordLayoutVIndex();

    public void setSwRecordLayoutVIndex(String var1);

    public void unsetSwRecordLayoutVIndex();

    public boolean isSetSwRecordLayoutVIndex();

    public SwGenericAxisParamType getSwGenericAxisParamType();

    public void setSwGenericAxisParamType(SwGenericAxisParamType var1);

    public Integer getSwRecordLayoutVFixValue();

    public void setSwRecordLayoutVFixValue(Integer var1);

    public void unsetSwRecordLayoutVFixValue();

    public boolean isSetSwRecordLayoutVFixValue();

    public IntegerDatatype getSwRecordLayoutVFixValueData();

    public void setSwRecordLayoutVFixValueData(IntegerDatatype var1);
}

