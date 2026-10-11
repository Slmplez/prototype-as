/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gunits.GUnit
 */
package autosar3x.swcomponent.datatype.units;

import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SlData3;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.swcomponent.datatype.units.PhysicalDimension;
import autosar3x.swcomponent.datatype.units.UnitSpec;
import gautosar.gswcomponents.gdatatype.gunits.GUnit;

public interface Unit
extends ARElement,
GUnit {
    public UnitSpec getUnitSpec();

    public void setUnitSpec(UnitSpec var1);

    public SlData3 getDisplayName();

    public void setDisplayName(SlData3 var1);

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

