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
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.EmphasisText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.IndexEntry;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Tt;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.InlinetextmodelPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForLongName;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LLongName;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LanguagedatamodelPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.impl.LanguageSpecificImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguageLongName;
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
public class LLongNameImpl
extends LanguageSpecificImpl
implements LLongName {
    protected FeatureMap mixed;
    protected EList<String> sups;
    protected EList<String> subs;

    protected LLongNameImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return LanguagedatamodelPackage.Literals.LLONG_NAME;
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
        return this.getMixed().list((EStructuralFeature)InlinetextmodelPackage.Literals.MIXED_CONTENT_FOR_LONG_NAME__TTS);
    }

    @Override
    public EList<EmphasisText> getEs() {
        return this.getMixed().list((EStructuralFeature)InlinetextmodelPackage.Literals.MIXED_CONTENT_FOR_LONG_NAME__ES);
    }

    @Override
    public EList<String> getSups() {
        if (this.sups == null) {
            this.sups = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 8);
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
            this.subs = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 9);
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
        return this.getMixed().list((EStructuralFeature)InlinetextmodelPackage.Literals.MIXED_CONTENT_FOR_LONG_NAME__IES);
    }

    @Override
    public MultilanguageLongName getMultilanguageLongName() {
        return (MultilanguageLongName)this.getMixed().get((EStructuralFeature)LanguagedatamodelPackage.Literals.LLONG_NAME__MULTILANGUAGE_LONG_NAME, true);
    }

    @Override
    public void setMultilanguageLongName(MultilanguageLongName newMultilanguageLongName) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)LanguagedatamodelPackage.Literals.LLONG_NAME__MULTILANGUAGE_LONG_NAME, (Object)newMultilanguageLongName);
    }

    @Override
    public String getMixedText() {
        return EObjectUtil.getMixedText((FeatureMap)this.getMixed());
    }

    @Override
    public void setMixedText(String text) {
        EObjectUtil.setMixedText((FeatureMap)this.getMixed(), (String)text);
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 11: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.eBasicSetContainer(otherEnd, 11, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
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
            case 10: {
                return ((InternalEList)this.getIes()).basicRemove((Object)otherEnd, msgs);
            }
            case 11: {
                return this.eBasicSetContainer(null, 11, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 11: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 4, MultilanguageLongName.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
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
                return this.getSups();
            }
            case 9: {
                return this.getSubs();
            }
            case 10: {
                return this.getIes();
            }
            case 11: {
                return this.getMultilanguageLongName();
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
                this.getSups().clear();
                this.getSups().addAll((Collection)newValue);
                return;
            }
            case 9: {
                this.getSubs().clear();
                this.getSubs().addAll((Collection)newValue);
                return;
            }
            case 10: {
                this.getIes().clear();
                this.getIes().addAll((Collection)newValue);
                return;
            }
            case 11: {
                this.setMultilanguageLongName((MultilanguageLongName)newValue);
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
                this.unsetSups();
                return;
            }
            case 9: {
                this.unsetSubs();
                return;
            }
            case 10: {
                this.getIes().clear();
                return;
            }
            case 11: {
                this.setMultilanguageLongName(null);
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
                return this.isSetSups();
            }
            case 9: {
                return this.isSetSubs();
            }
            case 10: {
                return !this.getIes().isEmpty();
            }
            case 11: {
                return this.getMultilanguageLongName() != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == MixedContentForLongName.class) {
            switch (derivedFeatureID) {
                case 5: {
                    return 4;
                }
                case 6: {
                    return 5;
                }
                case 7: {
                    return 6;
                }
                case 8: {
                    return 7;
                }
                case 9: {
                    return 8;
                }
                case 10: {
                    return 9;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == MixedContentForLongName.class) {
            switch (baseFeatureID) {
                case 4: {
                    return 5;
                }
                case 5: {
                    return 6;
                }
                case 6: {
                    return 7;
                }
                case 7: {
                    return 8;
                }
                case 8: {
                    return 9;
                }
                case 9: {
                    return 10;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    @Override
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

