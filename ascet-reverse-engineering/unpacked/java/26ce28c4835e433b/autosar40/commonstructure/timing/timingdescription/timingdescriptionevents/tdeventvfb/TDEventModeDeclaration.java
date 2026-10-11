/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb;

import autosar40.commonstructure.modedeclaration.ModeDeclaration;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventModeDeclarationTypeEnum;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventVfb;

public interface TDEventModeDeclaration
extends TDEventVfb {
    public ModeDeclaration getEntryModeDeclaration();

    public void setEntryModeDeclaration(ModeDeclaration var1);

    public ModeDeclaration getExitModeDeclaration();

    public void setExitModeDeclaration(ModeDeclaration var1);

    public ModeDeclarationGroupPrototype getModeDeclaration();

    public void setModeDeclaration(ModeDeclarationGroupPrototype var1);

    public TDEventModeDeclarationTypeEnum getTdEventModeDeclarationType();

    public void setTdEventModeDeclarationType(TDEventModeDeclarationTypeEnum var1);

    public void unsetTdEventModeDeclarationType();

    public boolean isSetTdEventModeDeclarationType();
}

