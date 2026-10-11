/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.fibex.fibexcore.coretopology;

import autosar3x.system.fibex.fibexcore.FibexElement;
import autosar3x.system.fibex.fibexcore.coretopology.PhysicalChannel;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CommunicationCluster
extends FibexElement {
    public Integer getMaxFrameLength();

    public void setMaxFrameLength(Integer var1);

    public void unsetMaxFrameLength();

    public boolean isSetMaxFrameLength();

    public Boolean getNmNodeDetectionEnabled();

    public void setNmNodeDetectionEnabled(Boolean var1);

    public void unsetNmNodeDetectionEnabled();

    public boolean isSetNmNodeDetectionEnabled();

    public Boolean getNmNodeIdEnabled();

    public void setNmNodeIdEnabled(Boolean var1);

    public void unsetNmNodeIdEnabled();

    public boolean isSetNmNodeIdEnabled();

    public Boolean getNmRepeatMessageSupport();

    public void setNmRepeatMessageSupport(Boolean var1);

    public void unsetNmRepeatMessageSupport();

    public boolean isSetNmRepeatMessageSupport();

    public EList<PhysicalChannel> getPhysicalChannels();

    public String getProtocolName();

    public void setProtocolName(String var1);

    public void unsetProtocolName();

    public boolean isSetProtocolName();

    public String getProtocolVersion();

    public void setProtocolVersion(String var1);

    public void unsetProtocolVersion();

    public boolean isSetProtocolVersion();

    public Integer getSpeed();

    public void setSpeed(Integer var1);

    public void unsetSpeed();

    public boolean isSetSpeed();
}

