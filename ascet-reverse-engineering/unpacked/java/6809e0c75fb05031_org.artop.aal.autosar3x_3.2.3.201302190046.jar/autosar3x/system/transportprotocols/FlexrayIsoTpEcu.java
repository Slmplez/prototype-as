/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.transportprotocols;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayPhysicalChannel;
import autosar3x.system.fibex.fibexcore.coretopology.EcuInstance;

public interface FlexrayIsoTpEcu
extends ARObject {
    public FlexrayPhysicalChannel getFlexrayPhysicalChannel();

    public void setFlexrayPhysicalChannel(FlexrayPhysicalChannel var1);

    public Double getCycleTimeMainFunction();

    public void setCycleTimeMainFunction(Double var1);

    public void unsetCycleTimeMainFunction();

    public boolean isSetCycleTimeMainFunction();

    public EcuInstance getEcuInstance();

    public void setEcuInstance(EcuInstance var1);

    public Boolean getFullDuplexEnabled();

    public void setFullDuplexEnabled(Boolean var1);

    public void unsetFullDuplexEnabled();

    public boolean isSetFullDuplexEnabled();
}

