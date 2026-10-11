/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.networkmanagement;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar40.system.networkmanagement.BusspecificNmEcu;
import autosar40.system.networkmanagement.NmConfig;
import autosar40.system.networkmanagement.NmCoordinator;

public interface NmEcu
extends Identifiable {
    public NmConfig getNmConfig();

    public void setNmConfig(NmConfig var1);

    public BusspecificNmEcu getBusSpecificNmEcu();

    public void setBusSpecificNmEcu(BusspecificNmEcu var1);

    public EcuInstance getEcuInstance();

    public void setEcuInstance(EcuInstance var1);

    public Boolean getNmBusSynchronizationEnabled();

    public void setNmBusSynchronizationEnabled(Boolean var1);

    public void unsetNmBusSynchronizationEnabled();

    public boolean isSetNmBusSynchronizationEnabled();

    public Boolean getNmComControlEnabled();

    public void setNmComControlEnabled(Boolean var1);

    public void unsetNmComControlEnabled();

    public boolean isSetNmComControlEnabled();

    public NmCoordinator getNmCoordinator();

    public void setNmCoordinator(NmCoordinator var1);

    public Double getNmCycletimeMainFunction();

    public void setNmCycletimeMainFunction(Double var1);

    public void unsetNmCycletimeMainFunction();

    public boolean isSetNmCycletimeMainFunction();

    public Boolean getNmMultipleChannelsEnabled();

    public void setNmMultipleChannelsEnabled(Boolean var1);

    public void unsetNmMultipleChannelsEnabled();

    public boolean isSetNmMultipleChannelsEnabled();

    public Boolean getNmNodeDetectionEnabled();

    public void setNmNodeDetectionEnabled(Boolean var1);

    public void unsetNmNodeDetectionEnabled();

    public boolean isSetNmNodeDetectionEnabled();

    public Boolean getNmNodeIdEnabled();

    public void setNmNodeIdEnabled(Boolean var1);

    public void unsetNmNodeIdEnabled();

    public boolean isSetNmNodeIdEnabled();

    public Boolean getNmPassiveModeEnabled();

    public void setNmPassiveModeEnabled(Boolean var1);

    public void unsetNmPassiveModeEnabled();

    public boolean isSetNmPassiveModeEnabled();

    public Boolean getNmPduRxIndicationEnabled();

    public void setNmPduRxIndicationEnabled(Boolean var1);

    public void unsetNmPduRxIndicationEnabled();

    public boolean isSetNmPduRxIndicationEnabled();

    public Boolean getNmRemoteSleepIndEnabled();

    public void setNmRemoteSleepIndEnabled(Boolean var1);

    public void unsetNmRemoteSleepIndEnabled();

    public boolean isSetNmRemoteSleepIndEnabled();

    public Boolean getNmRepeatMsgIndEnabled();

    public void setNmRepeatMsgIndEnabled(Boolean var1);

    public void unsetNmRepeatMsgIndEnabled();

    public boolean isSetNmRepeatMsgIndEnabled();

    public Boolean getNmStateChangeIndEnabled();

    public void setNmStateChangeIndEnabled(Boolean var1);

    public void unsetNmStateChangeIndEnabled();

    public boolean isSetNmStateChangeIndEnabled();

    public Boolean getNmUserDataEnabled();

    public void setNmUserDataEnabled(Boolean var1);

    public void unsetNmUserDataEnabled();

    public boolean isSetNmUserDataEnabled();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

