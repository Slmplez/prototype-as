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
 *  org.eclipse.emf.ecore.util.FeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap$Internal
 *  org.eclipse.emf.ecore.util.InternalEList
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 *  org.eclipse.sphinx.emf.util.EObjectUtil
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Br;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.EmphasisText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Tt;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Xref;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.InlinetextmodelPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForVerbatim;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.impl.WhitespaceControlledImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.BasicFeatureMap;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.sphinx.emf.util.EObjectUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class MixedContentForVerbatimImpl
extends WhitespaceControlledImpl
implements MixedContentForVerbatim {
    protected FeatureMap mixed;

    protected MixedContentForVerbatimImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InlinetextmodelPackage.Literals.MIXED_CONTENT_FOR_VERBATIM;
    }

    @Override
    public FeatureMap getMixed() {
        if (this.mixed == null) {
            this.mixed = new BasicFeatureMap((InternalEObject)this, 5);
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
    public EList<Tt> getTts() {
        return this.getMixed().list((EStructuralFeature)InlinetextmodelPackage.Literals.MIXED_CONTENT_FOR_VERBATIM__TTS);
    }

    @Override
    public EList<EmphasisText> getEs() {
        return this.getMixed().list((EStructuralFeature)InlinetextmodelPackage.Literals.MIXED_CONTENT_FOR_VERBATIM__ES);
    }

    @Override
    public EList<Xref> getXrefs() {
        return this.getMixed().list((EStructuralFeature)InlinetextmodelPackage.Literals.MIXED_CONTENT_FOR_VERBATIM__XREFS);
    }

    @Override
    public EList<Br> getBrs() {
        return this.getMixed().list((EStructuralFeature)InlinetextmodelPackage.Literals.MIXED_CONTENT_FOR_VERBATIM__BRS);
    }

    @Override
    public String getMixedText() {
        return EObjectUtil.getMixedText((FeatureMap)this.getMixed());
    }

    @Override
    public void setMixedText(String text) {
        EObjectUtil.setMixedText((FeatureMap)this.getMixed(), (String)text);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getMixed()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getTts()).basicRemove((Object)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getEs()).basicRemove((Object)otherEnd, msgs);
            }
            case 8: {
                return ((InternalEList)this.getXrefs()).basicRemove((Object)otherEnd, msgs);
            }
            case 9: {
                return ((InternalEList)this.getBrs()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                if (coreType) {
                    return this.getMixed();
                }
                return ((FeatureMap.Internal)this.getMixed()).getWrapper();
            }
            case 6: {
                return this.getTts();
            }
            case 7: {
                return this.getEs();
            }
            case 8: {
                return this.getXrefs();
            }
            case 9: {
                return this.getBrs();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                ((FeatureMap.Internal)this.getMixed()).set(newValue);
                return;
            }
            case 6: {
                this.getTts().clear();
                this.getTts().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.getEs().clear();
                this.getEs().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.getXrefs().clear();
                this.getXrefs().addAll((Collection)newValue);
                return;
            }
            case 9: {
                this.getBrs().clear();
                this.getBrs().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetMixed();
                return;
            }
            case 6: {
                this.getTts().clear();
                return;
            }
            case 7: {
                this.getEs().clear();
                return;
            }
            case 8: {
                this.getXrefs().clear();
                return;
            }
            case 9: {
                this.getBrs().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetMixed();
            }
            case 6: {
                return !this.getTts().isEmpty();
            }
            case 7: {
                return !this.getEs().isEmpty();
            }
            case 8: {
                return !this.getXrefs().isEmpty();
            }
            case 9: {
                return !this.getBrs().isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (mixed: ");
        result.append(this.mixed);
        result.append(')');
        return result.toString();
    }
}

