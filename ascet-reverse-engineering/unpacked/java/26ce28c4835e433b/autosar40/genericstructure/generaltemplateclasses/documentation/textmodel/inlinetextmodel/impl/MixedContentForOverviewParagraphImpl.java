/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.BasicFeatureMap
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.FeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap$Internal
 *  org.eclipse.emf.ecore.util.InternalEList
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 *  org.eclipse.sphinx.emf.util.EObjectUtil
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Br;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.EmphasisText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.FootnoteText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.IndexEntry;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Tt;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Xref;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.XrefTarget;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.InlinetextmodelPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForOverviewParagraph;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.BasicFeatureMap;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.sphinx.emf.util.EObjectUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class MixedContentForOverviewParagraphImpl
extends ARObjectImpl
implements MixedContentForOverviewParagraph {
    protected FeatureMap mixed;
    protected EList<String> sups;
    protected EList<String> subs;

    protected MixedContentForOverviewParagraphImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InlinetextmodelPackage.Literals.MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH;
    }

    @Override
    public FeatureMap getMixed() {
        if (this.mixed == null) {
            this.mixed = new BasicFeatureMap((InternalEObject)this, 4);
        }
        return this.mixed;
    }

    @Override
    public void unsetMixed() {
        if (this.mixed != null) {
            ((InternalEList.Unsettable)this.mixed).unset();
        }
    }

    @Override
    public boolean isSetMixed() {
        return this.mixed != null && ((InternalEList.Unsettable)this.mixed).isSet();
    }

    @Override
    public EList<Br> getBrs() {
        return this.getMixed().list((EStructuralFeature)InlinetextmodelPackage.Literals.MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__BRS);
    }

    @Override
    public EList<Tt> getTts() {
        return this.getMixed().list((EStructuralFeature)InlinetextmodelPackage.Literals.MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__TTS);
    }

    @Override
    public EList<Xref> getXrefs() {
        return this.getMixed().list((EStructuralFeature)InlinetextmodelPackage.Literals.MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__XREFS);
    }

    @Override
    public EList<XrefTarget> getXrefTargets() {
        return this.getMixed().list((EStructuralFeature)InlinetextmodelPackage.Literals.MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__XREF_TARGETS);
    }

    @Override
    public EList<EmphasisText> getEs() {
        return this.getMixed().list((EStructuralFeature)InlinetextmodelPackage.Literals.MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__ES);
    }

    @Override
    public EList<FootnoteText> getFts() {
        return this.getMixed().list((EStructuralFeature)InlinetextmodelPackage.Literals.MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__FTS);
    }

    @Override
    public EList<String> getSups() {
        if (this.sups == null) {
            this.sups = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 11);
        }
        return this.sups;
    }

    @Override
    public void unsetSups() {
        if (this.sups != null) {
            ((InternalEList.Unsettable)this.sups).unset();
        }
    }

    @Override
    public boolean isSetSups() {
        return this.sups != null && ((InternalEList.Unsettable)this.sups).isSet();
    }

    @Override
    public EList<String> getSubs() {
        if (this.subs == null) {
            this.subs = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 12);
        }
        return this.subs;
    }

    @Override
    public void unsetSubs() {
        if (this.subs != null) {
            ((InternalEList.Unsettable)this.subs).unset();
        }
    }

    @Override
    public boolean isSetSubs() {
        return this.subs != null && ((InternalEList.Unsettable)this.subs).isSet();
    }

    @Override
    public EList<IndexEntry> getIes() {
        return this.getMixed().list((EStructuralFeature)InlinetextmodelPackage.Literals.MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__IES);
    }

    @Override
    public String getMixedText() {
        return EObjectUtil.getMixedText((FeatureMap)this.getMixed());
    }

    @Override
    public void setMixedText(String text) {
        EObjectUtil.setMixedText((FeatureMap)this.getMixed(), (String)text);
    }

    public FeatureMap gGetMixed() {
        return this.getMixed();
    }

    public String gGetMixedText() {
        return this.getMixedText();
    }

    public void gSetMixedText(String text) {
        this.setMixedText(text);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getMixed()).basicRemove((Object)otherEnd, msgs);
            }
            case 5: {
                return ((InternalEList)this.getBrs()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getTts()).basicRemove((Object)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getXrefs()).basicRemove((Object)otherEnd, msgs);
            }
            case 8: {
                return ((InternalEList)this.getXrefTargets()).basicRemove((Object)otherEnd, msgs);
            }
            case 9: {
                return ((InternalEList)this.getEs()).basicRemove((Object)otherEnd, msgs);
            }
            case 10: {
                return ((InternalEList)this.getFts()).basicRemove((Object)otherEnd, msgs);
            }
            case 13: {
                return ((InternalEList)this.getIes()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                if (coreType) {
                    return this.getMixed();
                }
                return ((FeatureMap.Internal)this.getMixed()).getWrapper();
            }
            case 5: {
                return this.getBrs();
            }
            case 6: {
                return this.getTts();
            }
            case 7: {
                return this.getXrefs();
            }
            case 8: {
                return this.getXrefTargets();
            }
            case 9: {
                return this.getEs();
            }
            case 10: {
                return this.getFts();
            }
            case 11: {
                return this.getSups();
            }
            case 12: {
                return this.getSubs();
            }
            case 13: {
                return this.getIes();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                ((FeatureMap.Internal)this.getMixed()).set(newValue);
                return;
            }
            case 5: {
                this.getBrs().clear();
                this.getBrs().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getTts().clear();
                this.getTts().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.getXrefs().clear();
                this.getXrefs().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.getXrefTargets().clear();
                this.getXrefTargets().addAll((Collection)newValue);
                return;
            }
            case 9: {
                this.getEs().clear();
                this.getEs().addAll((Collection)newValue);
                return;
            }
            case 10: {
                this.getFts().clear();
                this.getFts().addAll((Collection)newValue);
                return;
            }
            case 11: {
                this.getSups().clear();
                this.getSups().addAll((Collection)newValue);
                return;
            }
            case 12: {
                this.getSubs().clear();
                this.getSubs().addAll((Collection)newValue);
                return;
            }
            case 13: {
                this.getIes().clear();
                this.getIes().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetMixed();
                return;
            }
            case 5: {
                this.getBrs().clear();
                return;
            }
            case 6: {
                this.getTts().clear();
                return;
            }
            case 7: {
                this.getXrefs().clear();
                return;
            }
            case 8: {
                this.getXrefTargets().clear();
                return;
            }
            case 9: {
                this.getEs().clear();
                return;
            }
            case 10: {
                this.getFts().clear();
                return;
            }
            case 11: {
                this.unsetSups();
                return;
            }
            case 12: {
                this.unsetSubs();
                return;
            }
            case 13: {
                this.getIes().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetMixed();
            }
            case 5: {
                return !this.getBrs().isEmpty();
            }
            case 6: {
                return !this.getTts().isEmpty();
            }
            case 7: {
                return !this.getXrefs().isEmpty();
            }
            case 8: {
                return !this.getXrefTargets().isEmpty();
            }
            case 9: {
                return !this.getEs().isEmpty();
            }
            case 10: {
                return !this.getFts().isEmpty();
            }
            case 11: {
                return this.isSetSups();
            }
            case 12: {
                return this.isSetSubs();
            }
            case 13: {
                return !this.getIes().isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (mixed: ");
        result.append(this.mixed);
        result.append(", sups: ");
        result.append(this.sups);
        result.append(", subs: ");
        result.append(this.subs);
        result.append(')');
        return result.toString();
    }
}

