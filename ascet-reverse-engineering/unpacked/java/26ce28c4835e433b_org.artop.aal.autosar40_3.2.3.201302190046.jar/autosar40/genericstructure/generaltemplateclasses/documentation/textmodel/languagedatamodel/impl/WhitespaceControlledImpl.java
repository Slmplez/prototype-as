/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LanguagedatamodelPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.WhitespaceControlled;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.XmlSpaceEnum;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class WhitespaceControlledImpl
extends ARObjectImpl
implements WhitespaceControlled {
    protected static final XmlSpaceEnum XML_SPACE_EDEFAULT = XmlSpaceEnum.PRESERVE;
    protected XmlSpaceEnum xmlSpace = XML_SPACE_EDEFAULT;
    protected boolean xmlSpaceESet;

    protected WhitespaceControlledImpl() {
    }

    protected EClass eStaticClass() {
        return LanguagedatamodelPackage.Literals.WHITESPACE_CONTROLLED;
    }

    public XmlSpaceEnum getXmlSpace() {
        return this.xmlSpace;
    }

    public void setXmlSpace(XmlSpaceEnum newXmlSpace) {
        XmlSpaceEnum oldXmlSpace = this.xmlSpace;
        this.xmlSpace = newXmlSpace == null ? XML_SPACE_EDEFAULT : newXmlSpace;
        boolean oldXmlSpaceESet = this.xmlSpaceESet;
        this.xmlSpaceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldXmlSpace, (Object)this.xmlSpace, !oldXmlSpaceESet));
        }
    }

    public void unsetXmlSpace() {
        XmlSpaceEnum oldXmlSpace = this.xmlSpace;
        boolean oldXmlSpaceESet = this.xmlSpaceESet;
        this.xmlSpace = XML_SPACE_EDEFAULT;
        this.xmlSpaceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldXmlSpace, (Object)XML_SPACE_EDEFAULT, oldXmlSpaceESet));
        }
    }

    public boolean isSetXmlSpace() {
        return this.xmlSpaceESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getXmlSpace();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setXmlSpace((XmlSpaceEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetXmlSpace();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetXmlSpace();
            }
        }
        return super.eIsSet(featureID);
    }

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
        result.append(')');
        return result.toString();
    }
}

