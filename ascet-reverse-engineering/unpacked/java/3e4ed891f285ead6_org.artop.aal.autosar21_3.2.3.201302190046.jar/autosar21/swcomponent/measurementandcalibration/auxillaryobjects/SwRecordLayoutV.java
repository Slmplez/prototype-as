/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.auxillaryobjects;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRecordLayout;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRecordLayoutGroupContent;
import autosar21.swcomponent.measurementandcalibration.basetypes.SwBaseType;

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

    public String getSwRecordLayoutVFixValue();

    public void setSwRecordLayoutVFixValue(String var1);

    public void unsetSwRecordLayoutVFixValue();

    public boolean isSetSwRecordLayoutVFixValue();

    public SwRecordLayout getSwRecordLayout();

    public void setSwRecordLayout(SwRecordLayout var1);
}

