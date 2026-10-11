/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.identifiable;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SingleLanguageLongName;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;

public interface SingleLanguageReferrable
extends Referrable {
    public SingleLanguageLongName getLongName1();

    public void setLongName1(SingleLanguageLongName var1);
}

