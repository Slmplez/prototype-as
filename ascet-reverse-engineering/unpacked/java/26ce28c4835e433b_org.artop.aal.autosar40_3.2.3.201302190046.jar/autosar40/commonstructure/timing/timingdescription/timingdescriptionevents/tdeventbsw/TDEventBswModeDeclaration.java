/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw;

import autosar40.commonstructure.modedeclaration.ModeDeclaration;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TDEventBsw;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TDEventBswModeDeclarationTypeEnum;

public interface TDEventBswModeDeclaration
extends TDEventBsw {
    public ModeDeclaration getEntryModeDeclaration();

    public void setEntryModeDeclaration(ModeDeclaration var1);

    public ModeDeclaration getExitModeDeclaration();

    public void setExitModeDeclaration(ModeDeclaration var1);

    public ModeDeclarationGroupPrototype getModeDeclaration();

    public void setModeDeclaration(ModeDeclarationGroupPrototype var1);

    public TDEventBswModeDeclarationTypeEnum getTdEventBswModeDeclarationType();

    public void setTdEventBswModeDeclarationType(TDEventBswModeDeclarationTypeEnum var1);

    public void unsetTdEventBswModeDeclarationType();

    public boolean isSetTdEventBswModeDeclarationType();
}

