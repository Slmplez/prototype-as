/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GeneralParameter;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterContent;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguageLongName;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Prms
extends Paginateable {
    public ChapterContent getChapterContent();

    public void setChapterContent(ChapterContent var1);

    public MultilanguageLongName getLabel();

    public void setLabel(MultilanguageLongName var1);

    public EList<GeneralParameter> getPrms();
}

