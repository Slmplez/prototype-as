/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gunits.GUnit
 */
package autosar40.swcomponent.datatype.units;

import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SingleLanguageUnitNames;
import autosar40.swcomponent.datatype.units.PhysicalDimension;
import gautosar.gswcomponents.gdatatype.gunits.GUnit;

public interface Unit
extends ARElement,
GUnit {
    public SingleLanguageUnitNames getDisplayName();

    public void setDisplayName(SingleLanguageUnitNames var1);

    public Double getFactorSiToUnit();

    public void setFactorSiToUnit(Double var1);

    public void unsetFactorSiToUnit();

    public boolean isSetFactorSiToUnit();

    public Double getOffsetSiToUnit();

    public void setOffsetSiToUnit(Double var1);

    public void unsetOffsetSiToUnit();

    public boolean isSetOffsetSiToUnit();

    public PhysicalDimension getPhysicalDimension();

    public void setPhysicalDimension(PhysicalDimension var1);
}

