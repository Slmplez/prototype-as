/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.auxillaryobjects;

import autosar3x.commonstructure.auxillaryobjects.SwRecordLayout;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayoutGroupContent;
import autosar3x.commonstructure.basetypes.SwBaseType;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface SwRecordLayoutV
extends ARObject {
    public SwRecordLayoutGroupContent getSwRecordLayoutGroupContent();

    public void setSwRecordLayoutGroupContent(SwRecordLayoutGroupContent var1);

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

    public Integer getSwRecordLayoutVFixValue();

    public void setSwRecordLayoutVFixValue(Integer var1);

    public void unsetSwRecordLayoutVFixValue();

    public boolean isSetSwRecordLayoutVFixValue();

    public SwRecordLayout getSwRecordLayout();

    public void setSwRecordLayout(SwRecordLayout var1);
}

