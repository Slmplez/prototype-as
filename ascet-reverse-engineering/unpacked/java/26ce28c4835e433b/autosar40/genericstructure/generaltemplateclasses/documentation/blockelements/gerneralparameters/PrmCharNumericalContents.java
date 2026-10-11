/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharContents;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharNumericalValue;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SingleLanguageUnitNames;

public interface PrmCharNumericalContents
extends PrmCharContents {
    public PrmCharNumericalValue getPrmCharNumericalValueType();

    public void setPrmCharNumericalValueType(PrmCharNumericalValue var1);

    public SingleLanguageUnitNames getPrmUnit();

    public void setPrmUnit(SingleLanguageUnitNames var1);
}

