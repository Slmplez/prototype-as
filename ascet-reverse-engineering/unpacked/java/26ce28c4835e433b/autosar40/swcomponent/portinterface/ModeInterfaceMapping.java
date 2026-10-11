/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.portinterface;

import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototypeMapping;
import autosar40.swcomponent.portinterface.PortInterfaceMapping;

public interface ModeInterfaceMapping
extends PortInterfaceMapping {
    public ModeDeclarationGroupPrototypeMapping getModeMapping();

    public void setModeMapping(ModeDeclarationGroupPrototypeMapping var1);
}

