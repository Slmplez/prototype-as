/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.auxillaryobjects;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRecordLayoutGroupContent;

public interface SwRecordLayoutGroup
extends ARObject {
    public String getSwRecordLayoutGroupAxis();

    public void setSwRecordLayoutGroupAxis(String var1);

    public void unsetSwRecordLayoutGroupAxis();

    public boolean isSetSwRecordLayoutGroupAxis();

    public String getSwRecordLayoutGroupIndex();

    public void setSwRecordLayoutGroupIndex(String var1);

    public void unsetSwRecordLayoutGroupIndex();

    public boolean isSetSwRecordLayoutGroupIndex();

    public String getSwRecordLayoutGroupFrom();

    public void setSwRecordLayoutGroupFrom(String var1);

    public void unsetSwRecordLayoutGroupFrom();

    public boolean isSetSwRecordLayoutGroupFrom();

    public String getSwRecordLayoutGroupTo();

    public void setSwRecordLayoutGroupTo(String var1);

    public void unsetSwRecordLayoutGroupTo();

    public boolean isSetSwRecordLayoutGroupTo();

    public String getSwRecordLayoutGroupStep();

    public void setSwRecordLayoutGroupStep(String var1);

    public void unsetSwRecordLayoutGroupStep();

    public boolean isSetSwRecordLayoutGroupStep();

    public String getSwRecordLayoutComponent();

    public void setSwRecordLayoutComponent(String var1);

    public void unsetSwRecordLayoutComponent();

    public boolean isSetSwRecordLayoutComponent();

    public SwRecordLayoutGroupContent getSwRecordLayoutGroupContentType();

    public void setSwRecordLayoutGroupContentType(SwRecordLayoutGroupContent var1);
}

