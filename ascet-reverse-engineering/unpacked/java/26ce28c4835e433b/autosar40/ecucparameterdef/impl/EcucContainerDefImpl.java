/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.ecucparameterdef.impl;

import autosar40.ecucparameterdef.EcucContainerDef;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.ecucparameterdef.impl.EcucDefinitionElementImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class EcucContainerDefImpl
extends EcucDefinitionElementImpl
implements EcucContainerDef {
    protected static final Boolean POST_BUILD_CHANGEABLE_EDEFAULT = Boolean.FALSE;
    protected Boolean postBuildChangeable = POST_BUILD_CHANGEABLE_EDEFAULT;
    protected boolean postBuildChangeableESet;

    protected EcucContainerDefImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_CONTAINER_DEF;
    }

    public Boolean getPostBuildChangeable() {
        return this.postBuildChangeable;
    }

    public void setPostBuildChangeable(Boolean newPostBuildChangeable) {
        Boolean oldPostBuildChangeable = this.postBuildChangeable;
        this.postBuildChangeable = newPostBuildChangeable;
        boolean oldPostBuildChangeableESet = this.postBuildChangeableESet;
        this.postBuildChangeableESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldPostBuildChangeable, (Object)this.postBuildChangeable, !oldPostBuildChangeableESet));
        }
    }

    public void unsetPostBuildChangeable() {
        Boolean oldPostBuildChangeable = this.postBuildChangeable;
        boolean oldPostBuildChangeableESet = this.postBuildChangeableESet;
        this.postBuildChangeable = POST_BUILD_CHANGEABLE_EDEFAULT;
        this.postBuildChangeableESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldPostBuildChangeable, (Object)POST_BUILD_CHANGEABLE_EDEFAULT, oldPostBuildChangeableESet));
        }
    }

    public boolean isSetPostBuildChangeable() {
        return this.postBuildChangeableESet;
    }

    public Boolean gGetPostBuildChangeable() {
        return this.getPostBuildChangeable();
    }

    public void gSetPostBuildChangeable(Boolean value) {
        this.setPostBuildChangeable(value);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                return this.getPostBuildChangeable();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.setPostBuildChangeable((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.unsetPostBuildChangeable();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return this.isSetPostBuildChangeable();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (postBuildChangeable: ");
        if (this.postBuildChangeableESet) {
            result.append(this.postBuildChangeable);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

