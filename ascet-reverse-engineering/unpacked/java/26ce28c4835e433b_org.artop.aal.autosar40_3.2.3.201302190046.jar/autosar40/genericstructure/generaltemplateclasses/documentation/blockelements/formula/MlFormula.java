/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.Caption;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.LGraphic;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguagePlainText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageVerbatim;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface MlFormula
extends Paginateable {
    public Caption getFormulaCaption();

    public void setFormulaCaption(Caption var1);

    public EList<LGraphic> getLGraphics();

    public MultiLanguageVerbatim getVerbatim();

    public void setVerbatim(MultiLanguageVerbatim var1);

    public MultiLanguagePlainText getTexMath();

    public void setTexMath(MultiLanguagePlainText var1);

    public MultiLanguagePlainText getGenericMath();

    public void setGenericMath(MultiLanguagePlainText var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

