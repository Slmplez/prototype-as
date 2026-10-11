/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowContentEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowResourceAliasNameEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowResourceCategoryEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowResourceLongNameEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowResourceNumberEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowResourcePageEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowResourceShortNameEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowResourceTypeEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowSeeEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SingleLanguageLongName;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;

public interface Xref
extends ARObject {
    public SingleLanguageLongName getLabel1();

    public void setLabel1(SingleLanguageLongName var1);

    public Referrable getReferrable();

    public void setReferrable(Referrable var1);

    public ShowContentEnum getShowContent();

    public void setShowContent(ShowContentEnum var1);

    public void unsetShowContent();

    public boolean isSetShowContent();

    public ShowResourceAliasNameEnum getShowResourceAliasName();

    public void setShowResourceAliasName(ShowResourceAliasNameEnum var1);

    public void unsetShowResourceAliasName();

    public boolean isSetShowResourceAliasName();

    public ShowResourceCategoryEnum getShowResourceCategory();

    public void setShowResourceCategory(ShowResourceCategoryEnum var1);

    public void unsetShowResourceCategory();

    public boolean isSetShowResourceCategory();

    public ShowResourceLongNameEnum getShowResourceLongName();

    public void setShowResourceLongName(ShowResourceLongNameEnum var1);

    public void unsetShowResourceLongName();

    public boolean isSetShowResourceLongName();

    public ShowResourceNumberEnum getShowResourceNumber();

    public void setShowResourceNumber(ShowResourceNumberEnum var1);

    public void unsetShowResourceNumber();

    public boolean isSetShowResourceNumber();

    public ShowResourcePageEnum getShowResourcePage();

    public void setShowResourcePage(ShowResourcePageEnum var1);

    public void unsetShowResourcePage();

    public boolean isSetShowResourcePage();

    public ShowResourceShortNameEnum getShowResourceShortName();

    public void setShowResourceShortName(ShowResourceShortNameEnum var1);

    public void unsetShowResourceShortName();

    public boolean isSetShowResourceShortName();

    public ShowResourceTypeEnum getShowResourceType();

    public void setShowResourceType(ShowResourceTypeEnum var1);

    public void unsetShowResourceType();

    public boolean isSetShowResourceType();

    public ShowSeeEnum getShowSee();

    public void setShowSee(ShowSeeEnum var1);

    public void unsetShowSee();

    public boolean isSetShowSee();
}

