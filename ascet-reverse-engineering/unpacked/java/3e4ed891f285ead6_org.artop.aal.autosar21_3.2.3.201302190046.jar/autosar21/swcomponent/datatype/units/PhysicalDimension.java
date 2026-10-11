/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gunits.GPhysicalDimension
 */
package autosar21.swcomponent.datatype.units;

import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.swcomponent.datatype.units.UnitSpec;
import gautosar.gswcomponents.gdatatype.gunits.GPhysicalDimension;

public interface PhysicalDimension
extends ARElement,
GPhysicalDimension {
    public UnitSpec getUnitSpec();

    public void setUnitSpec(UnitSpec var1);

    public String getLengthExp();

    public void setLengthExp(String var1);

    public void unsetLengthExp();

    public boolean isSetLengthExp();

    public String getMassExp();

    public void setMassExp(String var1);

    public void unsetMassExp();

    public boolean isSetMassExp();

    public String getTimeExp();

    public void setTimeExp(String var1);

    public void unsetTimeExp();

    public boolean isSetTimeExp();

    public String getCurrentExp();

    public void setCurrentExp(String var1);

    public void unsetCurrentExp();

    public boolean isSetCurrentExp();

    public String getTemperatureExp();

    public void setTemperatureExp(String var1);

    public void unsetTemperatureExp();

    public boolean isSetTemperatureExp();

    public String getMolarAmountExp();

    public void setMolarAmountExp(String var1);

    public void unsetMolarAmountExp();

    public boolean isSetMolarAmountExp();

    public String getLuminousIntensityExp();

    public void setLuminousIntensityExp(String var1);

    public void unsetLuminousIntensityExp();

    public boolean isSetLuminousIntensityExp();
}

