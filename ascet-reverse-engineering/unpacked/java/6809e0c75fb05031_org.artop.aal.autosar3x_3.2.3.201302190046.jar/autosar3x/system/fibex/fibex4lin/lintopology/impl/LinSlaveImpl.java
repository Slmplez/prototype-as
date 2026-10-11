/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.system.fibex.fibex4lin.lintopology.impl;

import autosar3x.system.fibex.fibex4lin.lincommunication.LinErrorResponse;
import autosar3x.system.fibex.fibex4lin.lintopology.LinSlave;
import autosar3x.system.fibex.fibex4lin.lintopology.LintopologyPackage;
import autosar3x.system.fibex.fibex4lin.lintopology.impl.LinCommunicationControllerImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class LinSlaveImpl
extends LinCommunicationControllerImpl
implements LinSlave {
    protected static final Integer CONFIGURED_NAD_EDEFAULT = new Integer(0);
    protected Integer configuredNad = CONFIGURED_NAD_EDEFAULT;
    protected boolean configuredNadESet;
    protected LinErrorResponse linErrorResponse;
    protected static final String PROTOCOL_VERSION_EDEFAULT = "";
    protected String protocolVersion = "";
    protected boolean protocolVersionESet;

    protected LinSlaveImpl() {
    }

    protected EClass eStaticClass() {
        return LintopologyPackage.Literals.LIN_SLAVE;
    }

    public Integer getConfiguredNad() {
        return this.configuredNad;
    }

    public void setConfiguredNad(Integer newConfiguredNad) {
        Integer oldConfiguredNad = this.configuredNad;
        this.configuredNad = newConfiguredNad;
        boolean oldConfiguredNadESet = this.configuredNadESet;
        this.configuredNadESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldConfiguredNad, (Object)this.configuredNad, !oldConfiguredNadESet));
        }
    }

    public void unsetConfiguredNad() {
        Integer oldConfiguredNad = this.configuredNad;
        boolean oldConfiguredNadESet = this.configuredNadESet;
        this.configuredNad = CONFIGURED_NAD_EDEFAULT;
        this.configuredNadESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldConfiguredNad, (Object)CONFIGURED_NAD_EDEFAULT, oldConfiguredNadESet));
        }
    }

    public boolean isSetConfiguredNad() {
        return this.configuredNadESet;
    }

    public LinErrorResponse getLinErrorResponse() {
        return this.linErrorResponse;
    }

    public NotificationChain basicSetLinErrorResponse(LinErrorResponse newLinErrorResponse, NotificationChain msgs) {
        LinErrorResponse oldLinErrorResponse = this.linErrorResponse;
        this.linErrorResponse = newLinErrorResponse;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldLinErrorResponse, (Object)newLinErrorResponse);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setLinErrorResponse(LinErrorResponse newLinErrorResponse) {
        if (newLinErrorResponse != this.linErrorResponse) {
            NotificationChain msgs = null;
            if (this.linErrorResponse != null) {
                msgs = ((InternalEObject)this.linErrorResponse).eInverseRemove((InternalEObject)this, 4, LinErrorResponse.class, msgs);
            }
            if (newLinErrorResponse != null) {
                msgs = ((InternalEObject)newLinErrorResponse).eInverseAdd((InternalEObject)this, 4, LinErrorResponse.class, msgs);
            }
            if ((msgs = this.basicSetLinErrorResponse(newLinErrorResponse, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newLinErrorResponse, (Object)newLinErrorResponse));
        }
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldProtocolVersion, (Object)this.protocolVersion, !oldProtocolVersionESet));
        }
    }

    public void unsetProtocolVersion() {
        String oldProtocolVersion = this.protocolVersion;
        boolean oldProtocolVersionESet = this.protocolVersionESet;
        this.protocolVersion = PROTOCOL_VERSION_EDEFAULT;
        this.protocolVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldProtocolVersion, (Object)PROTOCOL_VERSION_EDEFAULT, oldProtocolVersionESet));
        }
    }

    public boolean isSetProtocolVersion() {
        return this.protocolVersionESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                if (this.linErrorResponse != null) {
                    msgs = ((InternalEObject)this.linErrorResponse).eInverseRemove((InternalEObject)this, -21, null, msgs);
                }
                return this.basicSetLinErrorResponse((LinErrorResponse)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return this.basicSetLinErrorResponse(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getConfiguredNad();
            }
            case 20: {
                return this.getLinErrorResponse();
            }
            case 21: {
                return this.getProtocolVersion();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setConfiguredNad((Integer)newValue);
                return;
            }
            case 20: {
                this.setLinErrorResponse((LinErrorResponse)newValue);
                return;
            }
            case 21: {
                this.setProtocolVersion((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.unsetConfiguredNad();
                return;
            }
            case 20: {
                this.setLinErrorResponse(null);
                return;
            }
            case 21: {
                this.unsetProtocolVersion();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.isSetConfiguredNad();
            }
            case 20: {
                return this.linErrorResponse != null;
            }
            case 21: {
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
        result.append(" (configuredNad: ");
        if (this.configuredNadESet) {
            result.append(this.configuredNad);
        } else {
            result.append("<unset>");
        }
        result.append(", protocolVersion: ");
        if (this.protocolVersionESet) {
            result.append(this.protocolVersion);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

