/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gunits.GPhysicalDimension
 */
package autosar3x.swcomponent.datatype.units;

import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.swcomponent.datatype.units.UnitSpec;
import gautosar.gswcomponents.gdatatype.gunits.GPhysicalDimension;

public interface PhysicalDimension
extends ARElement,
GPhysicalDimension {
    public UnitSpec getUnitSpec();

    public void setUnitSpec(UnitSpec var1);

    public Integer getLengthExp();

    public void setLengthExp(Integer var1);

    public void unsetLengthExp();

    public boolean isSetLengthExp();

    public Integer getMassExp();

    public void setMassExp(Integer var1);

    public void unsetMassExp();

    public boolean isSetMassExp();

    public Integer getTimeExp();

    public void setTimeExp(Integer var1);

    public void unsetTimeExp();

    public boolean isSetTimeExp();

    public Integer getCurrentExp();

    public void setCurrentExp(Integer var1);

    public void unsetCurrentExp();

    public boolean isSetCurrentExp();

    public Integer getTemperatureExp();

    public void setTemperatureExp(Integer var1);

    public void unsetTemperatureExp();

    public boolean isSetTemperatureExp();

    public Integer getMolarAmountExp();

    public void setMolarAmountExp(Integer var1);

    public void unsetMolarAmountExp();

    public boolean isSetMolarAmountExp();

    public Integer getLuminousIntensityExp();

    public void setLuminousIntensityExp(Integer var1);

    public void unsetLuminousIntensityExp();

    public boolean isSetLuminousIntensityExp();
}

