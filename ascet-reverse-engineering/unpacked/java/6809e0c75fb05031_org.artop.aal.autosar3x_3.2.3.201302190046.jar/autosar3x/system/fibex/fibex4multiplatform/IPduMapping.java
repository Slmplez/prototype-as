/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4multiplatform;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibex4multiplatform.Gateway;
import autosar3x.system.fibex.fibex4multiplatform.SourceIPduRef;
import autosar3x.system.fibex.fibex4multiplatform.TargetIPduRef;

public interface IPduMapping
extends ARObject {
    public Gateway getGateway();

    public void setGateway(Gateway var1);

    public Integer getPdurTpChunkSize();

    public void setPdurTpChunkSize(Integer var1);

    public void unsetPdurTpChunkSize();

    public boolean isSetPdurTpChunkSize();

    public SourceIPduRef getSourceIPdu();

    public void setSourceIPdu(SourceIPduRef var1);

    public TargetIPduRef getTargetIPdu();

    public void setTargetIPdu(TargetIPduRef var1);
}

