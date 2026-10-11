/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gunits.GPhysicalDimension
 */
package autosar40.swcomponent.datatype.units;

import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import gautosar.gswcomponents.gdatatype.gunits.GPhysicalDimension;

public interface PhysicalDimension
extends ARElement,
GPhysicalDimension {
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

    public float getLengthExpAsFloat();

    public int getLengthExpAsInteger();

    public int getRadixForLengthExp();

    public void setLengthExp(int var1, String var2);

    public float getMassExpAsFloat();

    public int getMassExpAsInteger();

    public int getRadixForMassExp();

    public void setMassExp(int var1, String var2);

    public float getTimeExpAsFloat();

    public int getTimeExpAsInteger();

    public int getRadixForTimeExp();

    public void setTimeExp(int var1, String var2);

    public float getCurrentExpAsFloat();

    public int getCurrentExpAsInteger();

    public int getRadixForCurrentExp();

    public void setCurrentExp(int var1, String var2);

    public float getTemperatureExpAsFloat();

    public int getTemperatureExpAsInteger();

    public int getRadixForTemperatureExp();

    public void setTemperatureExp(int var1, String var2);

    public float getMolarAmountExpAsFloat();

    public int getMolarAmountExpAsInteger();

    public int getRadixForMolarAmountExp();

    public void setMolarAmountExp(int var1, String var2);

    public float getLuminousIntensityExpAsFloat();

    public int getLuminousIntensityExpAsInteger();

    public int getRadixForLuminousIntensityExp();

    public void setLuminousIntensityExp(int var1, String var2);
}

