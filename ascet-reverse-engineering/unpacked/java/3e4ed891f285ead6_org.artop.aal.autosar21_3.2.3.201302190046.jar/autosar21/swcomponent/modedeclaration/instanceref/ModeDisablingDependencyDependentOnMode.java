/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.modedeclaration.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.components.RPortPrototype;
import autosar21.swcomponent.modedeclaration.ModeDeclaration;
import autosar21.swcomponent.modedeclaration.ModeDisablingDependency;
import autosar21.swcomponent.portinterface.ModeDeclarationGroupPrototype;

public interface ModeDisablingDependencyDependentOnMode
extends ARObject {
    public ModeDisablingDependency getModeDisablingDependency();

    public void setModeDisablingDependency(ModeDisablingDependency var1);

    public RPortPrototype getRPortPrototype();

    public void setRPortPrototype(RPortPrototype var1);

    public ModeDeclarationGroupPrototype getModeDeclarationGroupPrototype();

    public void setModeDeclarationGroupPrototype(ModeDeclarationGroupPrototype var1);

    public ModeDeclaration getModeDeclaration();

    public void setModeDeclaration(ModeDeclaration var1);
}

