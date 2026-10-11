/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.topology;

import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.system.topology.CommunicationCluster;
import autosar21.system.topology.TopologyElement;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SystemTopologyType
extends ARElement {
    public EList<CommunicationCluster> getCommunicationClusters();

    public EList<TopologyElement> getTopologyElements();
}

