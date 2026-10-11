/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.FloatEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.PgwideEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LVerbatim;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface MultiLanguageVerbatim
extends Paginateable {
    public String getAllowBreak();

    public void setAllowBreak(String var1);

    public void unsetAllowBreak();

    public boolean isSetAllowBreak();

    public FloatEnum getFloat();

    public void setFloat(FloatEnum var1);

    public void unsetFloat();

    public boolean isSetFloat();

    public String getHelpEntry();

    public void setHelpEntry(String var1);

    public void unsetHelpEntry();

    public boolean isSetHelpEntry();

    public PgwideEnum getPgwide();

    public void setPgwide(PgwideEnum var1);

    public void unsetPgwide();

    public boolean isSetPgwide();

    public EList<LVerbatim> getL5s();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

