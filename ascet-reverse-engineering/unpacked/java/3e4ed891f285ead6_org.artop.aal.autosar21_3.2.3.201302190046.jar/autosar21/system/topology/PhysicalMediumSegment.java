/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.topology;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.topology.Connector;
import autosar21.system.topology.Hub;
import autosar21.system.topology.PhysicalChannel;
import autosar21.system.topology.PhysicalMediumSegmentPhysicalMediumTypeEnum;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PhysicalMediumSegment
extends ARObject {
    public PhysicalChannel getPhysicalChannel();

    public void setPhysicalChannel(PhysicalChannel var1);

    public EList<Connector> getConnectedEcus();

    public EList<Hub> getConnectedHubs();

    public Integer getPhysicalMediumDataLines();

    public void setPhysicalMediumDataLines(Integer var1);

    public void unsetPhysicalMediumDataLines();

    public boolean isSetPhysicalMediumDataLines();

    public PhysicalMediumSegmentPhysicalMediumTypeEnum getPhysicalMediumType();

    public void setPhysicalMediumType(PhysicalMediumSegmentPhysicalMediumTypeEnum var1);

    public void unsetPhysicalMediumType();

    public boolean isSetPhysicalMediumType();
}

