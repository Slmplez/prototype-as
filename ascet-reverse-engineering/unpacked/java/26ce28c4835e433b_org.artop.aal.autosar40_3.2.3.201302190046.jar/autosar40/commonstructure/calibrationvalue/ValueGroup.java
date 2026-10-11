/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.calibrationvalue;

import autosar40.commonstructure.calibrationvalue.SwValues;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguageLongName;

public interface ValueGroup
extends ARObject {
    public SwValues getSwValues();

    public void setSwValues(SwValues var1);

    public MultilanguageLongName getLabel();

    public void setLabel(MultilanguageLongName var1);

    public SwValues getVgContents();

    public void setVgContents(SwValues var1);
}

