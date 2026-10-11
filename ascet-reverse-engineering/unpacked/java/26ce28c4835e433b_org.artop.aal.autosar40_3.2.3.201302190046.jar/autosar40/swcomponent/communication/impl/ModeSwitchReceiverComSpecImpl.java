/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.communication.impl;

import autosar40.swcomponent.communication.CommunicationPackage;
import autosar40.swcomponent.communication.ModeSwitchReceiverComSpec;
import autosar40.swcomponent.communication.impl.RPortComSpecImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ModeSwitchReceiverComSpecImpl
extends RPortComSpecImpl
implements ModeSwitchReceiverComSpec {
    protected static final Boolean ENHANCED_MODE_API_EDEFAULT = Boolean.FALSE;
    protected Boolean enhancedModeApi = ENHANCED_MODE_API_EDEFAULT;
    protected boolean enhancedModeApiESet;
    protected static final Boolean SUPPORTS_ASYNCHRONOUS_MODE_SWITCH_EDEFAULT = Boolean.FALSE;
    protected Boolean supportsAsynchronousModeSwitch = SUPPORTS_ASYNCHRONOUS_MODE_SWITCH_EDEFAULT;
    protected boolean supportsAsynchronousModeSwitchESet;

    protected ModeSwitchReceiverComSpecImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.MODE_SWITCH_RECEIVER_COM_SPEC;
    }

    public Boolean getEnhancedModeApi() {
        return this.enhancedModeApi;
    }

    public void setEnhancedModeApi(Boolean newEnhancedModeApi) {
        Boolean oldEnhancedModeApi = this.enhancedModeApi;
        this.enhancedModeApi = newEnhancedModeApi;
        boolean oldEnhancedModeApiESet = this.enhancedModeApiESet;
        this.enhancedModeApiESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldEnhancedModeApi, (Object)this.enhancedModeApi, !oldEnhancedModeApiESet));
        }
    }

    public void unsetEnhancedModeApi() {
        Boolean oldEnhancedModeApi = this.enhancedModeApi;
        boolean oldEnhancedModeApiESet = this.enhancedModeApiESet;
        this.enhancedModeApi = ENHANCED_MODE_API_EDEFAULT;
        this.enhancedModeApiESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldEnhancedModeApi, (Object)ENHANCED_MODE_API_EDEFAULT, oldEnhancedModeApiESet));
        }
    }

    public boolean isSetEnhancedModeApi() {
        return this.enhancedModeApiESet;
    }

    public Boolean getSupportsAsynchronousModeSwitch() {
        return this.supportsAsynchronousModeSwitch;
    }

    public void setSupportsAsynchronousModeSwitch(Boolean newSupportsAsynchronousModeSwitch) {
        Boolean oldSupportsAsynchronousModeSwitch = this.supportsAsynchronousModeSwitch;
        this.supportsAsynchronousModeSwitch = newSupportsAsynchronousModeSwitch;
        boolean oldSupportsAsynchronousModeSwitchESet = this.supportsAsynchronousModeSwitchESet;
        this.supportsAsynchronousModeSwitchESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSupportsAsynchronousModeSwitch, (Object)this.supportsAsynchronousModeSwitch, !oldSupportsAsynchronousModeSwitchESet));
        }
    }

    public void unsetSupportsAsynchronousModeSwitch() {
        Boolean oldSupportsAsynchronousModeSwitch = this.supportsAsynchronousModeSwitch;
        boolean oldSupportsAsynchronousModeSwitchESet = this.supportsAsynchronousModeSwitchESet;
        this.supportsAsynchronousModeSwitch = SUPPORTS_ASYNCHRONOUS_MODE_SWITCH_EDEFAULT;
        this.supportsAsynchronousModeSwitchESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldSupportsAsynchronousModeSwitch, (Object)SUPPORTS_ASYNCHRONOUS_MODE_SWITCH_EDEFAULT, oldSupportsAsynchronousModeSwitchESet));
        }
    }

    public boolean isSetSupportsAsynchronousModeSwitch() {
        return this.supportsAsynchronousModeSwitchESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getEnhancedModeApi();
            }
            case 6: {
                return this.getSupportsAsynchronousModeSwitch();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setEnhancedModeApi((Boolean)newValue);
                return;
            }
            case 6: {
                this.setSupportsAsynchronousModeSwitch((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetEnhancedModeApi();
                return;
            }
            case 6: {
                this.unsetSupportsAsynchronousModeSwitch();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetEnhancedModeApi();
            }
            case 6: {
                return this.isSetSupportsAsynchronousModeSwitch();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (enhancedModeApi: ");
        if (this.enhancedModeApiESet) {
            result.append(this.enhancedModeApi);
        } else {
            result.append("<unset>");
        }
        result.append(", supportsAsynchronousModeSwitch: ");
        if (this.supportsAsynchronousModeSwitchESet) {
            result.append(this.supportsAsynchronousModeSwitch);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

