/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing;

import autosar40.commonstructure.timing.TimingExtension;
import autosar40.ecucdescription.EcucValueCollection;

public interface EcuTiming
extends TimingExtension {
    public EcucValueCollection getEcuConfiguration();

    public void setEcuConfiguration(EcucValueCollection var1);
}

