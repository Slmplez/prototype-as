/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.commonstructure.modedeclaration;

import autosar40.commonstructure.modedeclaration.ModeDeclarationGroup;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface ModeDeclaration
extends AtpStructureElement,
GModeDeclaration {
    public ModeDeclarationGroup getModeDeclarationGroup();

    public void setModeDeclarationGroup(ModeDeclarationGroup var1);

    public Long getValue();

    public void setValue(Long var1);

    public void unsetValue();

    public boolean isSetValue();

    public PositiveIntegerDatatype getValueData();

    public void setValueData(PositiveIntegerDatatype var1);
}

