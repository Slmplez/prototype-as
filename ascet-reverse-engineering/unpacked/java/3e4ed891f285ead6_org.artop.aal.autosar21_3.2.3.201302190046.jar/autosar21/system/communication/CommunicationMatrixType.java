/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.communication;

import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.system.communication.Frame;
import autosar21.system.communication.LinSchedulingTable;
import autosar21.system.communication.instanceref.CommunicationMatrixTypeCommunicationCluster;
import autosar21.system.topology.SystemTopologyType;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CommunicationMatrixType
extends ARElement {
    public CommunicationMatrixTypeCommunicationCluster getCommunicationCluster();

    public void setCommunicationCluster(CommunicationMatrixTypeCommunicationCluster var1);

    public EList<Frame> getFrames();

    public EList<LinSchedulingTable> getLinSchedulingTables();

    public SystemTopologyType getSystemTopologyType();

    public void setSystemTopologyType(SystemTopologyType var1);
}

