/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.transportprotocols;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar40.system.transportprotocols.FlexrayTpConfig;

public interface FlexrayTpEcu
extends ARObject {
    public FlexrayTpConfig getFlexrayTpConfig();

    public void setFlexrayTpConfig(FlexrayTpConfig var1);

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

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

