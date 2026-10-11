/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharNumericalValue;

public interface PrmCharMinTypMax
extends PrmCharNumericalValue {
    public String getMin();

    public void setMin(String var1);

    public void unsetMin();

    public boolean isSetMin();

    public String getTyp();

    public void setTyp(String var1);

    public void unsetTyp();

    public boolean isSetTyp();

    public String getMax();

    public void setMax(String var1);

    public void unsetMax();

    public boolean isSetMax();

    public float getMinAsFloat();

    public int getMinAsInteger();

    public int getRadixForMin();

    public void setMin(int var1, String var2);

    public float getTypAsFloat();

    public int getTypAsInteger();

    public int getRadixForTyp();

    public void setTyp(int var1, String var2);

    public float getMaxAsFloat();

    public int getMaxAsInteger();

    public int getRadixForMax();

    public void setMax(int var1, String var2);
}

