/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageParagraph
 */
package autosar21.genericstructure.commonpatterns.multilanguagedata;

import autosar21.genericstructure.commonpatterns.languagedatamodel.MlDataModel1;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageParagraph;

public interface MlData1
extends MlDataModel1,
GMultiLanguageParagraph {
    public String getHelpEntry();

    public void setHelpEntry(String var1);

    public void unsetHelpEntry();

    public boolean isSetHelpEntry();

    public String getKeepWithPrevious();

    public void setKeepWithPrevious(String var1);

    public void unsetKeepWithPrevious();

    public boolean isSetKeepWithPrevious();
}

