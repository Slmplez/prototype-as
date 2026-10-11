/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.networkmanagement;

import autosar40.system.networkmanagement.CanNmCluster;
import autosar40.system.networkmanagement.NmClusterCoupling;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CanNmClusterCoupling
extends NmClusterCoupling {
    public EList<CanNmCluster> getCoupledClusters();

    public Boolean getNmBusloadReductionEnabled();

    public void setNmBusloadReductionEnabled(Boolean var1);

    public void unsetNmBusloadReductionEnabled();

    public boolean isSetNmBusloadReductionEnabled();

    public Boolean getNmImmediateRestartEnabled();

    public void setNmImmediateRestartEnabled(Boolean var1);

    public void unsetNmImmediateRestartEnabled();

    public boolean isSetNmImmediateRestartEnabled();
}

