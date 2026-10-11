/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype
 */
package autosar21.swcomponent.portinterface;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.modedeclaration.ModeDeclarationGroup;
import autosar21.swcomponent.portinterface.SenderReceiverInterface;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype;

public interface ModeDeclarationGroupPrototype
extends Identifiable,
GModeDeclarationGroupPrototype {
    public SenderReceiverInterface getSenderReceiverInterface();

    public void setSenderReceiverInterface(SenderReceiverInterface var1);

    public ModeDeclarationGroup getType();

    public void setType(ModeDeclarationGroup var1);
}

