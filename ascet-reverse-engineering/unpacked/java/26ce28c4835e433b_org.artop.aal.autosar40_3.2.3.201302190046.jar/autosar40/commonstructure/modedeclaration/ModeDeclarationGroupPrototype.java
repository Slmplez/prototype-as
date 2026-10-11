/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype
 */
package autosar40.commonstructure.modedeclaration;

import autosar40.commonstructure.datadefproperties.SwCalibrationAccessEnum;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroup;
import autosar40.genericstructure.abstractstructure.AtpPrototype;
import autosar40.genericstructure.varianthandling.VariationPoint;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype;

public interface ModeDeclarationGroupPrototype
extends AtpPrototype,
GModeDeclarationGroupPrototype {
    public SwCalibrationAccessEnum getSwCalibrationAccess();

    public void setSwCalibrationAccess(SwCalibrationAccessEnum var1);

    public void unsetSwCalibrationAccess();

    public boolean isSetSwCalibrationAccess();

    public ModeDeclarationGroup getType();

    public void setType(ModeDeclarationGroup var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

