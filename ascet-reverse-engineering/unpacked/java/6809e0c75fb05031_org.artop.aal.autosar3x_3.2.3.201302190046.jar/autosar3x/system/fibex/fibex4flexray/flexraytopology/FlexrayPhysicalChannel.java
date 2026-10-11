/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.fibex.fibex4flexray.flexraytopology;

import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayChannelName;
import autosar3x.system.fibex.fibexcore.coretopology.PhysicalChannel;
import autosar3x.system.transportprotocols.FlexrayIsoTpConnectionControl;
import autosar3x.system.transportprotocols.FlexrayIsoTpEcu;
import autosar3x.system.transportprotocols.FlexrayIsoTpPduPool;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FlexrayPhysicalChannel
extends PhysicalChannel {
    public FlexrayChannelName getChannelName();

    public void setChannelName(FlexrayChannelName var1);

    public void unsetChannelName();

    public boolean isSetChannelName();

    public EList<FlexrayIsoTpPduPool> getPduPools();

    public EList<FlexrayIsoTpConnectionControl> getTpConnectionControls();

    public EList<FlexrayIsoTpEcu> getTpEcus();
}

