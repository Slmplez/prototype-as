/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.system.fibex.fibexcore.corecommunication.IPdu;
import autosar40.system.transportprotocols.FlexrayArTpChannel;

public interface NPdu
extends IPdu {
    public FlexrayArTpChannel getFlexrayArTpChannel();

    public void setFlexrayArTpChannel(FlexrayArTpChannel var1);
}

