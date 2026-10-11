/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.commonstructure.implementation.impl;

import autosar3x.commonstructure.implementation.DependencyOnLibrary;
import autosar3x.commonstructure.implementation.ImplementationPackage;
import autosar3x.commonstructure.implementation.impl.DependencyOnFileImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class DependencyOnLibraryImpl
extends DependencyOnFileImpl
implements DependencyOnLibrary {
    protected static final String MAX_VERSION_EDEFAULT = "";
    protected String maxVersion = "";
    protected boolean maxVersionESet;
    protected static final String MIN_VERSION_EDEFAULT = "";
    protected String minVersion = "";
    protected boolean minVersionESet;

    protected DependencyOnLibraryImpl() {
    }

    protected EClass eStaticClass() {
        return ImplementationPackage.Literals.DEPENDENCY_ON_LIBRARY;
    }

    public String getMaxVersion() {
        return this.maxVersion;
    }

    public void setMaxVersion(String newMaxVersion) {
        String oldMaxVersion = this.maxVersion;
        this.maxVersion = newMaxVersion;
        boolean oldMaxVersionESet = this.maxVersionESet;
        this.maxVersionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldMaxVersion, (Object)this.maxVersion, !oldMaxVersionESet));
        }
    }

    public void unsetMaxVersion() {
        String oldMaxVersion = this.maxVersion;
        boolean oldMaxVersionESet = this.maxVersionESet;
        this.maxVersion = "";
        this.maxVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldMaxVersion, (Object)"", oldMaxVersionESet));
        }
    }

    public boolean isSetMaxVersion() {
        return this.maxVersionESet;
    }

    public String getMinVersion() {
        return this.minVersion;
    }

    public void setMinVersion(String newMinVersion) {
        String oldMinVersion = this.minVersion;
        this.minVersion = newMinVersion;
        boolean oldMinVersionESet = this.minVersionESet;
        this.minVersionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldMinVersion, (Object)this.minVersion, !oldMinVersionESet));
        }
    }

    public void unsetMinVersion() {
        String oldMinVersion = this.minVersion;
        boolean oldMinVersionESet = this.minVersionESet;
        this.minVersion = "";
        this.minVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldMinVersion, (Object)"", oldMinVersionESet));
        }
    }

    public boolean isSetMinVersion() {
        return this.minVersionESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.getMaxVersion();
            }
            case 21: {
                return this.getMinVersion();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.setMaxVersion((String)newValue);
                return;
            }
            case 21: {
                this.setMinVersion((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.unsetMaxVersion();
                return;
            }
            case 21: {
                this.unsetMinVersion();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.isSetMaxVersion();
            }
            case 21: {
                return this.isSetMinVersion();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (maxVersion: ");
        if (this.maxVersionESet) {
            result.append(this.maxVersion);
        } else {
            result.append("<unset>");
        }
        result.append(", minVersion: ");
        if (this.minVersionESet) {
            result.append(this.minVersion);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

