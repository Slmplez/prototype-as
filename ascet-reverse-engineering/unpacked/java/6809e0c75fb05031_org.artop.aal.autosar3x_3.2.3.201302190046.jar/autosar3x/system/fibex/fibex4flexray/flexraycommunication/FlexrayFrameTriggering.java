/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.fibex.fibex4flexray.flexraycommunication;

import autosar3x.system.fibex.fibex4flexray.flexraycommunication.AbsolutelyScheduledTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.FrameTriggering;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FlexrayFrameTriggering
extends FrameTriggering {
    public EList<AbsolutelyScheduledTiming> getAbsolutelyScheduledTimings();

    public Boolean getPayloadPreambleIndicator();

    public void setPayloadPreambleIndicator(Boolean var1);

    public void unsetPayloadPreambleIndicator();

    public boolean isSetPayloadPreambleIndicator();
}

