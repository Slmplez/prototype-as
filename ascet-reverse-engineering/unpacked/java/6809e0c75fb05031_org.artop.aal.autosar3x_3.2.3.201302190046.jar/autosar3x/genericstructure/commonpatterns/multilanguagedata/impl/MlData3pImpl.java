/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.genericstructure.commonpatterns.multilanguagedata.impl;

import autosar3x.genericstructure.commonpatterns.languagedatamodel.impl.MlDataModel3Impl;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData3p;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MultilanguagedataPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class MlData3pImpl
extends MlDataModel3Impl
implements MlData3p {
    protected static final String XMLSPACE_EDEFAULT = "";
    protected String xmlspace = "";
    protected boolean xmlspaceESet;

    protected MlData3pImpl() {
    }

    protected EClass eStaticClass() {
        return MultilanguagedataPackage.Literals.ML_DATA3P;
    }

    public String getXmlspace() {
        return this.xmlspace;
    }

    public void setXmlspace(String newXmlspace) {
        String oldXmlspace = this.xmlspace;
        this.xmlspace = newXmlspace;
        boolean oldXmlspaceESet = this.xmlspaceESet;
        this.xmlspaceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldXmlspace, (Object)this.xmlspace, !oldXmlspaceESet));
        }
    }

    public void unsetXmlspace() {
        String oldXmlspace = this.xmlspace;
        boolean oldXmlspaceESet = this.xmlspaceESet;
        this.xmlspace = XMLSPACE_EDEFAULT;
        this.xmlspaceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldXmlspace, (Object)XMLSPACE_EDEFAULT, oldXmlspaceESet));
        }
    }

    public boolean isSetXmlspace() {
        return this.xmlspaceESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getXmlspace();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setXmlspace((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetXmlspace();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetXmlspace();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (xmlspace: ");
        if (this.xmlspaceESet) {
            result.append(this.xmlspace);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

