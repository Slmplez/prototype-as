/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration
 */
package autosar3x.swcomponent.modedeclaration;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.swcomponent.modedeclaration.ModeDeclarationGroup;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration;

public interface ModeDeclaration
extends Identifiable,
GModeDeclaration {
    public ModeDeclarationGroup getModeDeclarationGroup();

    public void setModeDeclarationGroup(ModeDeclarationGroup var1);
}

