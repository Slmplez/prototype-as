/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LEnum;

public interface LanguageSpecific
extends ARObject {
    public LEnum getL();

    public void setL(LEnum var1);

    public void unsetL();

    public boolean isSetL();
}

