/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.identifiable;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguageLongName;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;

public interface MultilanguageReferrable
extends Referrable {
    public MultilanguageLongName getLongName();

    public void setLongName(MultilanguageLongName var1);
}

