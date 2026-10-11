/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForPlainText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LPlainText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LanguagedatamodelPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.WhitespaceControlled;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.XmlSpaceEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.impl.LanguageSpecificImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguagePlainText;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LPlainTextImpl
extends LanguageSpecificImpl
implements LPlainText {
    protected static final XmlSpaceEnum XML_SPACE_EDEFAULT = XmlSpaceEnum.PRESERVE;
    protected XmlSpaceEnum xmlSpace = XML_SPACE_EDEFAULT;
    protected boolean xmlSpaceESet;
    protected static final String CONTENTS_EDEFAULT = "";
    protected String contents = "";
    protected boolean contentsESet;

    protected LPlainTextImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return LanguagedatamodelPackage.Literals.LPLAIN_TEXT;
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
    public String getContents() {
        return this.contents;
    }

    @Override
    public void setContents(String newContents) {
        String oldContents = this.contents;
        this.contents = newContents;
        boolean oldContentsESet = this.contentsESet;
        this.contentsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldContents, (Object)this.contents, !oldContentsESet));
        }
    }

    @Override
    public void unsetContents() {
        String oldContents = this.contents;
        boolean oldContentsESet = this.contentsESet;
        this.contents = CONTENTS_EDEFAULT;
        this.contentsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldContents, (Object)CONTENTS_EDEFAULT, oldContentsESet));
        }
    }

    @Override
    public boolean isSetContents() {
        return this.contentsESet;
    }

    @Override
    public MultiLanguagePlainText getMultiLanguagePlainText() {
        if (this.eContainerFeatureID() != 7) {
            return null;
        }
        return (MultiLanguagePlainText)this.eContainer();
    }

    public NotificationChain basicSetMultiLanguagePlainText(MultiLanguagePlainText newMultiLanguagePlainText, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newMultiLanguagePlainText, 7, msgs);
        return msgs;
    }

    @Override
    public void setMultiLanguagePlainText(MultiLanguagePlainText newMultiLanguagePlainText) {
        if (newMultiLanguagePlainText != this.eInternalContainer() || this.eContainerFeatureID() != 7 && newMultiLanguagePlainText != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newMultiLanguagePlainText)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newMultiLanguagePlainText != null) {
                msgs = ((InternalEObject)newMultiLanguagePlainText).eInverseAdd((InternalEObject)this, 4, MultiLanguagePlainText.class, msgs);
            }
            if ((msgs = this.basicSetMultiLanguagePlainText(newMultiLanguagePlainText, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newMultiLanguagePlainText, (Object)newMultiLanguagePlainText));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetMultiLanguagePlainText((MultiLanguagePlainText)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                return this.basicSetMultiLanguagePlainText(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 7: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 4, MultiLanguagePlainText.class, msgs);
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
                return this.getContents();
            }
            case 7: {
                return this.getMultiLanguagePlainText();
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
                this.setContents((String)newValue);
                return;
            }
            case 7: {
                this.setMultiLanguagePlainText((MultiLanguagePlainText)newValue);
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
                this.unsetContents();
                return;
            }
            case 7: {
                this.setMultiLanguagePlainText(null);
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
                return this.isSetContents();
            }
            case 7: {
                return this.getMultiLanguagePlainText() != null;
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
        if (baseClass == MixedContentForPlainText.class) {
            switch (derivedFeatureID) {
                case 6: {
                    return 5;
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
        if (baseClass == MixedContentForPlainText.class) {
            switch (baseFeatureID) {
                case 5: {
                    return 6;
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
        result.append(", contents: ");
        if (this.contentsESet) {
            result.append(this.contents);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

