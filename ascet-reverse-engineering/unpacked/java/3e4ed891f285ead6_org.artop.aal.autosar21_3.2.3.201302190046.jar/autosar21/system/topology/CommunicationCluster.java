/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.topology;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.topology.PhysicalChannel;
import autosar21.system.topology.SystemTopologyType;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CommunicationCluster
extends Identifiable {
    public SystemTopologyType getSystemTopologyType();

    public void setSystemTopologyType(SystemTopologyType var1);

    public Integer getCommunicationSpeedBus();

    public void setCommunicationSpeedBus(Integer var1);

    public void unsetCommunicationSpeedBus();

    public boolean isSetCommunicationSpeedBus();

    public EList<PhysicalChannel> getPhysicalChannels();

    public String getProtocolName();

    public void setProtocolName(String var1);

    public void unsetProtocolName();

    public boolean isSetProtocolName();

    public String getProtocolVersion();

    public void setProtocolVersion(String var1);

    public void unsetProtocolVersion();

    public boolean isSetProtocolVersion();
}

