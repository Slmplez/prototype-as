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
package autosar40.system.fibex.fibex4ethernet.ethernettopology.impl;

import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SoAdConfig;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetPhysicalChannel;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernettopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.impl.PhysicalChannelImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class EthernetPhysicalChannelImpl
extends PhysicalChannelImpl
implements EthernetPhysicalChannel {
    protected SoAdConfig soAdConfig;

    protected EthernetPhysicalChannelImpl() {
    }

    protected EClass eStaticClass() {
        return EthernettopologyPackage.Literals.ETHERNET_PHYSICAL_CHANNEL;
    }

    public SoAdConfig getSoAdConfig() {
        return this.soAdConfig;
    }

    public NotificationChain basicSetSoAdConfig(SoAdConfig newSoAdConfig, NotificationChain msgs) {
        SoAdConfig oldSoAdConfig = this.soAdConfig;
        this.soAdConfig = newSoAdConfig;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldSoAdConfig, (Object)newSoAdConfig);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSoAdConfig(SoAdConfig newSoAdConfig) {
        if (newSoAdConfig != this.soAdConfig) {
            NotificationChain msgs = null;
            if (this.soAdConfig != null) {
                msgs = ((InternalEObject)this.soAdConfig).eInverseRemove((InternalEObject)this, 4, SoAdConfig.class, msgs);
            }
            if (newSoAdConfig != null) {
                msgs = ((InternalEObject)newSoAdConfig).eInverseAdd((InternalEObject)this, 4, SoAdConfig.class, msgs);
            }
            if ((msgs = this.basicSetSoAdConfig(newSoAdConfig, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newSoAdConfig, (Object)newSoAdConfig));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 24: {
                if (this.soAdConfig != null) {
                    msgs = ((InternalEObject)this.soAdConfig).eInverseRemove((InternalEObject)this, -25, null, msgs);
                }
                return this.basicSetSoAdConfig((SoAdConfig)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 24: {
                return this.basicSetSoAdConfig(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 24: {
                return this.getSoAdConfig();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 24: {
                this.setSoAdConfig((SoAdConfig)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 24: {
                this.setSoAdConfig(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 24: {
                return this.soAdConfig != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

