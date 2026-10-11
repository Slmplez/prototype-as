/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.BasicFeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap$Internal
 *  org.eclipse.emf.ecore.util.InternalEList
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 *  org.eclipse.sphinx.emf.util.EObjectUtil
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Br;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.EmphasisText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Tt;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Xref;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.InlinetextmodelPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForVerbatim;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LVerbatim;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LanguagedatamodelPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.WhitespaceControlled;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.XmlSpaceEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.impl.LanguageSpecificImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageVerbatim;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.BasicFeatureMap;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.sphinx.emf.util.EObjectUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LVerbatimImpl
extends LanguageSpecificImpl
implements LVerbatim {
    protected static final XmlSpaceEnum XML_SPACE_EDEFAULT = XmlSpaceEnum.PRESERVE;
    protected XmlSpaceEnum xmlSpace = XML_SPACE_EDEFAULT;
    protected boolean xmlSpaceESet;
    protected FeatureMap mixed;

    protected LVerbatimImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return LanguagedatamodelPackage.Literals.LVERBATIM;
    }

    @Override
    public XmlSpaceEnum getXmlSpace() {
        return this.xmlSpace;
    }

    @Override
    public void setXmlSpace(XmlSpaceEnum newXmlSpace) {
        XmlSpaceEnum oldXmlSpace = this.xmlSpace;
        this.xmlSpace = newXmlSpace == null ? XML_SPACE_EDEFAULT : newXmlSpace;
        boolean oldXmlSpaceESet = this.xmlSpaceESet;
        this.xmlSpaceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldXmlSpace, (Object)this.xmlSpace, !oldXmlSpaceESet));
        }
    }

    @Override
    public void unsetXmlSpace() {
        XmlSpaceEnum oldXmlSpace = this.xmlSpace;
        boolean oldXmlSpaceESet = this.xmlSpaceESet;
        this.xmlSpace = XML_SPACE_EDEFAULT;
        this.xmlSpaceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldXmlSpace, (Object)XML_SPACE_EDEFAULT, oldXmlSpaceESet));
        }
    }

    @Override
    public boolean isSetXmlSpace() {
        return this.xmlSpaceESet;
    }

    @Override
    public FeatureMap getMixed() {
        if (this.mixed == null) {
            this.mixed = new BasicFeatureMap((InternalEObject)this, 6);
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
    public MultiLanguageVerbatim getMultiLanguageVerbatim() {
        return (MultiLanguageVerbatim)this.getMixed().get((EStructuralFeature)LanguagedatamodelPackage.Literals.LVERBATIM__MULTI_LANGUAGE_VERBATIM, true);
    }

    @Override
    public void setMultiLanguageVerbatim(MultiLanguageVerbatim newMultiLanguageVerbatim) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)LanguagedatamodelPackage.Literals.LVERBATIM__MULTI_LANGUAGE_VERBATIM, (Object)newMultiLanguageVerbatim);
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
            case 6: {
                return ((InternalEList)this.getMixed()).basicRemove((Object)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getTts()).basicRemove((Object)otherEnd, msgs);
            }
            case 8: {
                return ((InternalEList)this.getEs()).basicRemove((Object)otherEnd, msgs);
            }
            case 9: {
                return ((InternalEList)this.getXrefs()).basicRemove((Object)otherEnd, msgs);
            }
            case 10: {
                return ((InternalEList)this.getBrs()).basicRemove((Object)otherEnd, msgs);
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
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 12, MultiLanguageVerbatim.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getXmlSpace();
            }
            case 6: {
                if (coreType) {
                    return this.getMixed();
                }
                return ((FeatureMap.Internal)this.getMixed()).getWrapper();
            }
            case 7: {
                return this.getTts();
            }
            case 8: {
                return this.getEs();
            }
            case 9: {
                return this.getXrefs();
            }
            case 10: {
                return this.getBrs();
            }
            case 11: {
                return this.getMultiLanguageVerbatim();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setXmlSpace((XmlSpaceEnum)((Object)newValue));
                return;
            }
            case 6: {
                ((FeatureMap.Internal)this.getMixed()).set(newValue);
                return;
            }
            case 7: {
                this.getTts().clear();
                this.getTts().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.getEs().clear();
                this.getEs().addAll((Collection)newValue);
                return;
            }
            case 9: {
                this.getXrefs().clear();
                this.getXrefs().addAll((Collection)newValue);
                return;
            }
            case 10: {
                this.getBrs().clear();
                this.getBrs().addAll((Collection)newValue);
                return;
            }
            case 11: {
                this.setMultiLanguageVerbatim((MultiLanguageVerbatim)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetXmlSpace();
                return;
            }
            case 6: {
                this.unsetMixed();
                return;
            }
            case 7: {
                this.getTts().clear();
                return;
            }
            case 8: {
                this.getEs().clear();
                return;
            }
            case 9: {
                this.getXrefs().clear();
                return;
            }
            case 10: {
                this.getBrs().clear();
                return;
            }
            case 11: {
                this.setMultiLanguageVerbatim(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetXmlSpace();
            }
            case 6: {
                return this.isSetMixed();
            }
            case 7: {
                return !this.getTts().isEmpty();
            }
            case 8: {
                return !this.getEs().isEmpty();
            }
            case 9: {
                return !this.getXrefs().isEmpty();
            }
            case 10: {
                return !this.getBrs().isEmpty();
            }
            case 11: {
                return this.getMultiLanguageVerbatim() != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == WhitespaceControlled.class) {
            switch (derivedFeatureID) {
                case 5: {
                    return 4;
                }
            }
            return -1;
        }
        if (baseClass == MixedContentForVerbatim.class) {
            switch (derivedFeatureID) {
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
        if (baseClass == WhitespaceControlled.class) {
            switch (baseFeatureID) {
                case 4: {
                    return 5;
                }
            }
            return -1;
        }
        if (baseClass == MixedContentForVerbatim.class) {
            switch (baseFeatureID) {
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
        result.append(" (xmlSpace: ");
        if (this.xmlSpaceESet) {
            result.append((Object)this.xmlSpace);
        } else {
            result.append("<unset>");
        }
        result.append(", mixed: ");
        result.append(this.mixed);
        result.append(')');
        return result.toString();
    }
}

