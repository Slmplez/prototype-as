/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.networkmanagement;

import autosar40.system.networkmanagement.FlexrayNmCluster;
import autosar40.system.networkmanagement.FlexrayNmScheduleVariant;
import autosar40.system.networkmanagement.NmClusterCoupling;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FlexrayNmClusterCoupling
extends NmClusterCoupling {
    public EList<FlexrayNmCluster> getCoupledClusters();

    public Boolean getNmControlBitVectorEnabled();

    public void setNmControlBitVectorEnabled(Boolean var1);

    public void unsetNmControlBitVectorEnabled();

    public boolean isSetNmControlBitVectorEnabled();

    public Boolean getNmDataDisabled();

    public void setNmDataDisabled(Boolean var1);

    public void unsetNmDataDisabled();

    public boolean isSetNmDataDisabled();

    public FlexrayNmScheduleVariant getNmScheduleVariant();

    public void setNmScheduleVariant(FlexrayNmScheduleVariant var1);

    public void unsetNmScheduleVariant();

    public boolean isSetNmScheduleVariant();
}

