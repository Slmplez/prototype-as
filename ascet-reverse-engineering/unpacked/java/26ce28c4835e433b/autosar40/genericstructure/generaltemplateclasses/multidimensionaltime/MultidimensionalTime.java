/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.genericstructure.generaltemplateclasses.multidimensionaltime;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface MultidimensionalTime
extends ARObject {
    public Integer getCseCode();

    public void setCseCode(Integer var1);

    public void unsetCseCode();

    public boolean isSetCseCode();

    public Integer getCseCodeFactor();

    public void setCseCodeFactor(Integer var1);

    public void unsetCseCodeFactor();

    public boolean isSetCseCodeFactor();

    public IntegerDatatype getCseCodeFactorData();

    public void setCseCodeFactorData(IntegerDatatype var1);
}

