/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gunits.GUnit
 */
package autosar21.swcomponent.datatype.units;

import autosar21.genericstructure.commonpatterns.singlelanguagedata.SlData3;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.swcomponent.datatype.units.PhysicalDimension;
import autosar21.swcomponent.datatype.units.UnitSpec;
import gautosar.gswcomponents.gdatatype.gunits.GUnit;

public interface Unit
extends ARElement,
GUnit {
    public UnitSpec getUnitSpec();

    public void setUnitSpec(UnitSpec var1);

    public SlData3 getDisplayName();

    public void setDisplayName(SlData3 var1);

    public String getFactorSiToUnit();

    public void setFactorSiToUnit(String var1);

    public void unsetFactorSiToUnit();

    public boolean isSetFactorSiToUnit();

    public String getOffsetSiToUnit();

    public void setOffsetSiToUnit(String var1);

    public void unsetOffsetSiToUnit();

    public boolean isSetOffsetSiToUnit();

    public PhysicalDimension getPhysicalDimension();

    public void setPhysicalDimension(PhysicalDimension var1);
}

