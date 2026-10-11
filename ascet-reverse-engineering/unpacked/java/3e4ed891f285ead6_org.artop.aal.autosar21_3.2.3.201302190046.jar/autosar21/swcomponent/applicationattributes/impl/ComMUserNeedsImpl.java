/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.applicationattributes.impl;

import autosar21.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar21.swcomponent.applicationattributes.ComMUserNeeds;
import autosar21.swcomponent.applicationattributes.MaxCommMode;
import autosar21.swcomponent.applicationattributes.impl.ServiceNeedsImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ComMUserNeedsImpl
extends ServiceNeedsImpl
implements ComMUserNeeds {
    protected static final MaxCommMode MAX_COMM_MODE_EDEFAULT = MaxCommMode.NONE;
    protected MaxCommMode maxCommMode = MAX_COMM_MODE_EDEFAULT;
    protected boolean maxCommModeESet;

    protected ComMUserNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ApplicationattributesPackage.Literals.COM_MUSER_NEEDS;
    }

    public MaxCommMode getMaxCommMode() {
        return this.maxCommMode;
    }

    public void setMaxCommMode(MaxCommMode newMaxCommMode) {
        MaxCommMode oldMaxCommMode = this.maxCommMode;
        this.maxCommMode = newMaxCommMode == null ? MAX_COMM_MODE_EDEFAULT : newMaxCommMode;
        boolean oldMaxCommModeESet = this.maxCommModeESet;
        this.maxCommModeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldMaxCommMode, (Object)this.maxCommMode, !oldMaxCommModeESet));
        }
    }

    public void unsetMaxCommMode() {
        MaxCommMode oldMaxCommMode = this.maxCommMode;
        boolean oldMaxCommModeESet = this.maxCommModeESet;
        this.maxCommMode = MAX_COMM_MODE_EDEFAULT;
        this.maxCommModeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldMaxCommMode, (Object)MAX_COMM_MODE_EDEFAULT, oldMaxCommModeESet));
        }
    }

    public boolean isSetMaxCommMode() {
        return this.maxCommModeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return this.getMaxCommMode();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setMaxCommMode((MaxCommMode)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.unsetMaxCommMode();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.isSetMaxCommMode();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (maxCommMode: ");
        if (this.maxCommModeESet) {
            result.append((Object)this.maxCommMode);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

