/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.networkmanagement;

import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.networkmanagement.NmCluster;
import autosar40.system.networkmanagement.NmClusterCoupling;
import autosar40.system.networkmanagement.NmEcu;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface NmConfig
extends FibexElement {
    public EList<NmCluster> getNmClusters();

    public EList<NmClusterCoupling> getNmClusterCouplings();

    public EList<NmEcu> getNmIfEcus();
}

