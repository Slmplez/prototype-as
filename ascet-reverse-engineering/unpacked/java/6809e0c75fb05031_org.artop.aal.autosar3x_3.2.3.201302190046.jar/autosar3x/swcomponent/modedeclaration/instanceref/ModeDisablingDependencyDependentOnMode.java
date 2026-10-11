/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.modedeclaration.instanceref;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.components.RPortPrototype;
import autosar3x.swcomponent.modedeclaration.ModeDeclaration;
import autosar3x.swcomponent.modedeclaration.ModeDisablingDependency;
import autosar3x.swcomponent.portinterface.ModeDeclarationGroupPrototype;

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

