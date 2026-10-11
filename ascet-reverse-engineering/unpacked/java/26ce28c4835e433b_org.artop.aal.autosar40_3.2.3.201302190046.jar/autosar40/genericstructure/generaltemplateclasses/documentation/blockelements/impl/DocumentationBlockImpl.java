/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GRemark
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageParagraph
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.BlockelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
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
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageParagraph;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DocumentationBlockImpl
extends ARObjectImpl
implements DocumentationBlock {
    protected EList<MultiLanguageParagraph> ps;
    protected EList<MultiLanguageVerbatim> verbatims;
    protected EList<List> lists;
    protected EList<DefList> defLists;
    protected EList<LabeledList> labeledLists;
    protected EList<MlFormula> formulas;
    protected EList<MlFigure> figures;
    protected EList<Note> notes;
    protected EList<TraceableText> traces;
    protected EList<StructuredReq> structuredReqs;

    protected DocumentationBlockImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BlockelementsPackage.Literals.DOCUMENTATION_BLOCK;
    }

    public EList<GMultiLanguageParagraph> gGetPs() {
        EList<MultiLanguageParagraph> untypedList = this.getPs();
        return untypedList;
    }

    @Override
    public EList<MultiLanguageParagraph> getPs() {
        if (this.ps == null) {
            this.ps = new EObjectContainmentWithInverseEList(MultiLanguageParagraph.class, (InternalEObject)this, 5, 9);
        }
        return this.ps;
    }

    @Override
    public EList<MultiLanguageVerbatim> getVerbatims() {
        if (this.verbatims == null) {
            this.verbatims = new EObjectContainmentEList(MultiLanguageVerbatim.class, (InternalEObject)this, 6);
        }
        return this.verbatims;
    }

    @Override
    public EList<List> getLists() {
        if (this.lists == null) {
            this.lists = new EObjectContainmentWithInverseEList(List.class, (InternalEObject)this, 7, 8);
        }
        return this.lists;
    }

    @Override
    public EList<DefList> getDefLists() {
        if (this.defLists == null) {
            this.defLists = new EObjectContainmentWithInverseEList(DefList.class, (InternalEObject)this, 8, 8);
        }
        return this.defLists;
    }

    @Override
    public EList<LabeledList> getLabeledLists() {
        if (this.labeledLists == null) {
            this.labeledLists = new EObjectContainmentWithInverseEList(LabeledList.class, (InternalEObject)this, 9, 8);
        }
        return this.labeledLists;
    }

    @Override
    public EList<MlFormula> getFormulas() {
        if (this.formulas == null) {
            this.formulas = new EObjectContainmentEList(MlFormula.class, (InternalEObject)this, 10);
        }
        return this.formulas;
    }

    @Override
    public EList<MlFigure> getFigures() {
        if (this.figures == null) {
            this.figures = new EObjectContainmentWithInverseEList(MlFigure.class, (InternalEObject)this, 11, 8);
        }
        return this.figures;
    }

    @Override
    public EList<Note> getNotes() {
        if (this.notes == null) {
            this.notes = new EObjectContainmentWithInverseEList(Note.class, (InternalEObject)this, 12, 8);
        }
        return this.notes;
    }

    @Override
    public EList<TraceableText> getTraces() {
        if (this.traces == null) {
            this.traces = new EObjectContainmentWithInverseEList(TraceableText.class, (InternalEObject)this, 13, 13);
        }
        return this.traces;
    }

    @Override
    public EList<StructuredReq> getStructuredReqs() {
        if (this.structuredReqs == null) {
            this.structuredReqs = new EObjectContainmentWithInverseEList(StructuredReq.class, (InternalEObject)this, 14, 13);
        }
        return this.structuredReqs;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getPs()).basicAdd((Object)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getLists()).basicAdd((Object)otherEnd, msgs);
            }
            case 8: {
                return ((InternalEList)this.getDefLists()).basicAdd((Object)otherEnd, msgs);
            }
            case 9: {
                return ((InternalEList)this.getLabeledLists()).basicAdd((Object)otherEnd, msgs);
            }
            case 11: {
                return ((InternalEList)this.getFigures()).basicAdd((Object)otherEnd, msgs);
            }
            case 12: {
                return ((InternalEList)this.getNotes()).basicAdd((Object)otherEnd, msgs);
            }
            case 13: {
                return ((InternalEList)this.getTraces()).basicAdd((Object)otherEnd, msgs);
            }
            case 14: {
                return ((InternalEList)this.getStructuredReqs()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getPs()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getVerbatims()).basicRemove((Object)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getLists()).basicRemove((Object)otherEnd, msgs);
            }
            case 8: {
                return ((InternalEList)this.getDefLists()).basicRemove((Object)otherEnd, msgs);
            }
            case 9: {
                return ((InternalEList)this.getLabeledLists()).basicRemove((Object)otherEnd, msgs);
            }
            case 10: {
                return ((InternalEList)this.getFormulas()).basicRemove((Object)otherEnd, msgs);
            }
            case 11: {
                return ((InternalEList)this.getFigures()).basicRemove((Object)otherEnd, msgs);
            }
            case 12: {
                return ((InternalEList)this.getNotes()).basicRemove((Object)otherEnd, msgs);
            }
            case 13: {
                return ((InternalEList)this.getTraces()).basicRemove((Object)otherEnd, msgs);
            }
            case 14: {
                return ((InternalEList)this.getStructuredReqs()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.gGetPs();
            }
            case 5: {
                return this.getPs();
            }
            case 6: {
                return this.getVerbatims();
            }
            case 7: {
                return this.getLists();
            }
            case 8: {
                return this.getDefLists();
            }
            case 9: {
                return this.getLabeledLists();
            }
            case 10: {
                return this.getFormulas();
            }
            case 11: {
                return this.getFigures();
            }
            case 12: {
                return this.getNotes();
            }
            case 13: {
                return this.getTraces();
            }
            case 14: {
                return this.getStructuredReqs();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.gGetPs().clear();
                this.gGetPs().addAll((Collection)newValue);
                return;
            }
            case 5: {
                this.getPs().clear();
                this.getPs().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getVerbatims().clear();
                this.getVerbatims().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.getLists().clear();
                this.getLists().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.getDefLists().clear();
                this.getDefLists().addAll((Collection)newValue);
                return;
            }
            case 9: {
                this.getLabeledLists().clear();
                this.getLabeledLists().addAll((Collection)newValue);
                return;
            }
            case 10: {
                this.getFormulas().clear();
                this.getFormulas().addAll((Collection)newValue);
                return;
            }
            case 11: {
                this.getFigures().clear();
                this.getFigures().addAll((Collection)newValue);
                return;
            }
            case 12: {
                this.getNotes().clear();
                this.getNotes().addAll((Collection)newValue);
                return;
            }
            case 13: {
                this.getTraces().clear();
                this.getTraces().addAll((Collection)newValue);
                return;
            }
            case 14: {
                this.getStructuredReqs().clear();
                this.getStructuredReqs().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.gGetPs().clear();
                return;
            }
            case 5: {
                this.getPs().clear();
                return;
            }
            case 6: {
                this.getVerbatims().clear();
                return;
            }
            case 7: {
                this.getLists().clear();
                return;
            }
            case 8: {
                this.getDefLists().clear();
                return;
            }
            case 9: {
                this.getLabeledLists().clear();
                return;
            }
            case 10: {
                this.getFormulas().clear();
                return;
            }
            case 11: {
                this.getFigures().clear();
                return;
            }
            case 12: {
                this.getNotes().clear();
                return;
            }
            case 13: {
                this.getTraces().clear();
                return;
            }
            case 14: {
                this.getStructuredReqs().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return !this.gGetPs().isEmpty();
            }
            case 5: {
                return this.ps != null && !this.ps.isEmpty();
            }
            case 6: {
                return this.verbatims != null && !this.verbatims.isEmpty();
            }
            case 7: {
                return this.lists != null && !this.lists.isEmpty();
            }
            case 8: {
                return this.defLists != null && !this.defLists.isEmpty();
            }
            case 9: {
                return this.labeledLists != null && !this.labeledLists.isEmpty();
            }
            case 10: {
                return this.formulas != null && !this.formulas.isEmpty();
            }
            case 11: {
                return this.figures != null && !this.figures.isEmpty();
            }
            case 12: {
                return this.notes != null && !this.notes.isEmpty();
            }
            case 13: {
                return this.traces != null && !this.traces.isEmpty();
            }
            case 14: {
                return this.structuredReqs != null && !this.structuredReqs.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GRemark.class) {
            switch (derivedFeatureID) {
                case 4: {
                    return 2;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GRemark.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 4;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

