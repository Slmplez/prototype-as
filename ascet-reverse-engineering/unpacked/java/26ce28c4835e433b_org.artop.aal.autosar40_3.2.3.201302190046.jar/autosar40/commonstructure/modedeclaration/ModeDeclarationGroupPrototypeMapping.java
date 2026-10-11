/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.modedeclaration;

import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.portinterface.ModeInterfaceMapping;

public interface ModeDeclarationGroupPrototypeMapping
extends ARObject {
    public ModeInterfaceMapping getModeInterfaceMapping();

    public void setModeInterfaceMapping(ModeInterfaceMapping var1);

    public ModeDeclarationGroupPrototype getFirstModeGroup();

    public void setFirstModeGroup(ModeDeclarationGroupPrototype var1);

    public ModeDeclarationGroupPrototype getSecondModeGroup();

    public void setSecondModeGroup(ModeDeclarationGroupPrototype var1);
}

