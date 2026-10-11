/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4flexray;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.AbsolutelyScheduledTiming;

public interface CommunicationCycle
extends ARObject {
    public AbsolutelyScheduledTiming getAbsolutelyScheduledTiming();

    public void setAbsolutelyScheduledTiming(AbsolutelyScheduledTiming var1);
}

