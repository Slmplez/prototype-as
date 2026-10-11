/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.auxillaryobjects;

import autosar3x.commonstructure.auxillaryobjects.SwRecordLayoutGroupContent;
import autosar3x.genericstructure.infrastructure.ARObject;

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

    public Integer getSwRecordLayoutGroupFrom();

    public void setSwRecordLayoutGroupFrom(Integer var1);

    public void unsetSwRecordLayoutGroupFrom();

    public boolean isSetSwRecordLayoutGroupFrom();

    public Integer getSwRecordLayoutGroupTo();

    public void setSwRecordLayoutGroupTo(Integer var1);

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
}

