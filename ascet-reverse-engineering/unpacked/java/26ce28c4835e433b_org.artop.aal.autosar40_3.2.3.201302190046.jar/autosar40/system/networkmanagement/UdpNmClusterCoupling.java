/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.networkmanagement;

import autosar40.system.networkmanagement.NmClusterCoupling;
import autosar40.system.networkmanagement.UdpNmCluster;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface UdpNmClusterCoupling
extends NmClusterCoupling {
    public EList<UdpNmCluster> getCoupledClusters();

    public Boolean getNmBusLoadReductionEnabled();

    public void setNmBusLoadReductionEnabled(Boolean var1);

    public void unsetNmBusLoadReductionEnabled();

    public boolean isSetNmBusLoadReductionEnabled();

    public Boolean getNmImmediateRestartEnabled();

    public void setNmImmediateRestartEnabled(Boolean var1);

    public void unsetNmImmediateRestartEnabled();

    public boolean isSetNmImmediateRestartEnabled();
}

