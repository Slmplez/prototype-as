/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharNumericalValue;

public interface PrmCharAbsTol
extends PrmCharNumericalValue {
    public String getAbs();

    public void setAbs(String var1);

    public void unsetAbs();

    public boolean isSetAbs();

    public String getTol();

    public void setTol(String var1);

    public void unsetTol();

    public boolean isSetTol();

    public float getAbsAsFloat();

    public int getAbsAsInteger();

    public int getRadixForAbs();

    public void setAbs(int var1, String var2);

    public float getTolAsFloat();

    public int getTolAsInteger();

    public int getRadixForTol();

    public void setTol(int var1, String var2);
}

