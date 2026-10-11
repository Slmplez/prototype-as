/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.transportprotocols.impl;

import autosar40.system.fibex.fibexcore.coretopology.CommunicationCluster;
import autosar40.system.fibex.fibexcore.impl.FibexElementImpl;
import autosar40.system.transportprotocols.TpConfig;
import autosar40.system.transportprotocols.TransportprotocolsPackage;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class TpConfigImpl
extends FibexElementImpl
implements TpConfig,
IReferringClass {
    protected CommunicationCluster communicationCluster;

    protected TpConfigImpl() {
    }

    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.TP_CONFIG;
    }

    public CommunicationCluster getCommunicationCluster() {
        if (this.communicationCluster != null && this.communicationCluster.eIsProxy()) {
            InternalEObject oldCommunicationCluster = (InternalEObject)this.communicationCluster;
            this.communicationCluster = (CommunicationCluster)this.eResolveProxy(oldCommunicationCluster);
            if (this.communicationCluster != oldCommunicationCluster && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldCommunicationCluster, (Object)this.communicationCluster));
            }
        }
        return this.communicationCluster;
    }

    public CommunicationCluster basicGetCommunicationCluster() {
        return this.communicationCluster;
    }

    public void setCommunicationCluster(CommunicationCluster newCommunicationCluster) {
        CommunicationCluster oldCommunicationCluster = this.communicationCluster;
        this.communicationCluster = newCommunicationCluster;
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldCommunicationCluster, (Object)this.communicationCluster));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                if (resolve) {
                    return this.getCommunicationCluster();
                }
                return this.basicGetCommunicationCluster();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setCommunicationCluster((CommunicationCluster)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.setCommunicationCluster(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.communicationCluster != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }
}

