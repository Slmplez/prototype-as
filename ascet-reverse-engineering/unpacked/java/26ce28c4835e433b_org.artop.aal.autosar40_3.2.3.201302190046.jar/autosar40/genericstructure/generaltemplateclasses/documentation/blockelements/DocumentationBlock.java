/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GRemark
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.MlFigure;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.MlFormula;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.DefList;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.LabeledList;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.List;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.note.Note;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.StructuredReq;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.TraceableText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageVerbatim;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GRemark;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface DocumentationBlock
extends ARObject,
GRemark {
    public EList<MultiLanguageParagraph> getPs();

    public EList<MultiLanguageVerbatim> getVerbatims();

    public EList<List> getLists();

    public EList<DefList> getDefLists();

    public EList<LabeledList> getLabeledLists();

    public EList<MlFormula> getFormulas();

    public EList<MlFigure> getFigures();

    public EList<Note> getNotes();

    public EList<TraceableText> getTraces();

    public EList<StructuredReq> getStructuredReqs();
}

