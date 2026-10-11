/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.communication;

import autosar40.swcomponent.communication.RPortComSpec;

public interface ModeSwitchReceiverComSpec
extends RPortComSpec {
    public Boolean getEnhancedModeApi();

    public void setEnhancedModeApi(Boolean var1);

    public void unsetEnhancedModeApi();

    public boolean isSetEnhancedModeApi();

    public Boolean getSupportsAsynchronousModeSwitch();

    public void setSupportsAsynchronousModeSwitch(Boolean var1);

    public void unsetSupportsAsynchronousModeSwitch();

    public boolean isSetSupportsAsynchronousModeSwitch();
}

