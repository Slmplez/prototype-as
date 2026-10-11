/*
 * Decompiled with CFR 0.152.
 */
package gautosar.ggenericstructure.ginfrastructure;

import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageOverviewParagraph;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import java.util.Map;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface GIdentifiable
extends GReferrable {
    public String gGetUuid();

    public void gSetUuid(String var1);

    public void gUnsetUuid();

    public boolean gIsSetUuid();

    public String gGetCategory();

    public void gSetCategory(String var1);

    public void gUnsetCategory();

    public boolean gIsSetCategory();

    public GMultiLanguageOverviewParagraph gGetDesc();

    public void gSetDesc(GMultiLanguageOverviewParagraph var1);

    public Map<String, Object> gGetExtensions();
}

