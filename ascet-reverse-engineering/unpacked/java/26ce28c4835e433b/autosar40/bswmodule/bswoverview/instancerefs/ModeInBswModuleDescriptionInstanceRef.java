/*
 * Decompiled with CFR 0.152.
 */
package autosar40.bswmodule.bswoverview.instancerefs;

import autosar40.bswmodule.bswoverview.BswModuleDescription;
import autosar40.commonstructure.modedeclaration.ModeDeclaration;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.genericstructure.abstractstructure.AtpInstanceRef;

public interface ModeInBswModuleDescriptionInstanceRef
extends AtpInstanceRef {
    public BswModuleDescription getBase();

    public ModeDeclarationGroupPrototype getContextModeDeclarationGroup();

    public void setContextModeDeclarationGroup(ModeDeclarationGroupPrototype var1);

    public ModeDeclaration getTargetMode();

    public void setTargetMode(ModeDeclaration var1);
}

