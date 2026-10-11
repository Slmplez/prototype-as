/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.fibex.fibex4lin.lintopology.impl;

import autosar40.system.fibex.fibex4lin.lintopology.LinCommunicationControllerContent;
import autosar40.system.fibex.fibex4lin.lintopology.LintopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.impl.CommunicationControllerContentImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class LinCommunicationControllerContentImpl
extends CommunicationControllerContentImpl
implements LinCommunicationControllerContent {
    protected static final String PROTOCOL_VERSION_EDEFAULT = "";
    protected String protocolVersion = "";
    protected boolean protocolVersionESet;

    protected LinCommunicationControllerContentImpl() {
    }

    protected EClass eStaticClass() {
        return LintopologyPackage.Literals.LIN_COMMUNICATION_CONTROLLER_CONTENT;
    }

    public String getProtocolVersion() {
        return this.protocolVersion;
    }

    public void setProtocolVersion(String newProtocolVersion) {
        String oldProtocolVersion = this.protocolVersion;
        this.protocolVersion = newProtocolVersion;
        boolean oldProtocolVersionESet = this.protocolVersionESet;
        this.protocolVersionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldProtocolVersion, (Object)this.protocolVersion, !oldProtocolVersionESet));
        }
    }

    public void unsetProtocolVersion() {
        String oldProtocolVersion = this.protocolVersion;
        boolean oldProtocolVersionESet = this.protocolVersionESet;
        this.protocolVersion = PROTOCOL_VERSION_EDEFAULT;
        this.protocolVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldProtocolVersion, (Object)PROTOCOL_VERSION_EDEFAULT, oldProtocolVersionESet));
        }
    }

    public boolean isSetProtocolVersion() {
        return this.protocolVersionESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getProtocolVersion();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setProtocolVersion((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetProtocolVersion();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetProtocolVersion();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (protocolVersion: ");
        if (this.protocolVersionESet) {
            result.append(this.protocolVersion);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

