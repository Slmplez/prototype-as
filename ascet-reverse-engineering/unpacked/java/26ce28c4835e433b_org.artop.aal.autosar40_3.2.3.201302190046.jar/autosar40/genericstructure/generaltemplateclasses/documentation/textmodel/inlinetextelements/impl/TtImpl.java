/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.InlinetextelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Tt;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class TtImpl
extends ARObjectImpl
implements Tt {
    protected static final String TERM_EDEFAULT = "";
    protected String term = "";
    protected boolean termESet;
    protected static final String TYPE_EDEFAULT = "";
    protected String type = "";
    protected boolean typeESet;

    protected TtImpl() {
    }

    protected EClass eStaticClass() {
        return InlinetextelementsPackage.Literals.TT;
    }

    public String getTerm() {
        return this.term;
    }

    public void setTerm(String newTerm) {
        String oldTerm = this.term;
        this.term = newTerm;
        boolean oldTermESet = this.termESet;
        this.termESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldTerm, (Object)this.term, !oldTermESet));
        }
    }

    public void unsetTerm() {
        String oldTerm = this.term;
        boolean oldTermESet = this.termESet;
        this.term = "";
        this.termESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldTerm, (Object)"", oldTermESet));
        }
    }

    public boolean isSetTerm() {
        return this.termESet;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String newType) {
        String oldType = this.type;
        this.type = newType;
        boolean oldTypeESet = this.typeESet;
        this.typeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldType, (Object)this.type, !oldTypeESet));
        }
    }

    public void unsetType() {
        String oldType = this.type;
        boolean oldTypeESet = this.typeESet;
        this.type = "";
        this.typeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldType, (Object)"", oldTypeESet));
        }
    }

    public boolean isSetType() {
        return this.typeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getTerm();
            }
            case 5: {
                return this.getType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setTerm((String)newValue);
                return;
            }
            case 5: {
                this.setType((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetTerm();
                return;
            }
            case 5: {
                this.unsetType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetTerm();
            }
            case 5: {
                return this.isSetType();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (term: ");
        if (this.termESet) {
            result.append(this.term);
        } else {
            result.append("<unset>");
        }
        result.append(", type: ");
        if (this.typeESet) {
            result.append(this.type);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

