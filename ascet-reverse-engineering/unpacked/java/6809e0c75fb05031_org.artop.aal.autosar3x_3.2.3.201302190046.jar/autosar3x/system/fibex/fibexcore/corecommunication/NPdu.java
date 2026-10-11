/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibexcore.corecommunication;

import autosar3x.system.fibex.fibexcore.corecommunication.IPdu;
import autosar3x.system.transportprotocols.FlexrayTpChannel;

public interface NPdu
extends IPdu {
    public FlexrayTpChannel getFlexrayTpChannel();

    public void setFlexrayTpChannel(FlexrayTpChannel var1);
}

