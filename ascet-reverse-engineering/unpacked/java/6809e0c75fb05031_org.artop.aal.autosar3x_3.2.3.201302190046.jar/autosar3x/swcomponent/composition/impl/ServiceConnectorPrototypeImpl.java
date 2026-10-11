/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.swcomponent.composition.impl;

import autosar3x.swcomponent.composition.CompositionPackage;
import autosar3x.swcomponent.composition.ServiceConnectorPrototype;
import autosar3x.swcomponent.composition.impl.ConnectorPrototypeImpl;
import autosar3x.swcomponent.composition.instanceref.ServiceConnectorPrototypeApplicationPort;
import autosar3x.swcomponent.composition.instanceref.ServiceConnectorPrototypeServicePort;
import autosar3x.swcomponent.services.EcuSwComposition;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ServiceConnectorPrototypeImpl
extends ConnectorPrototypeImpl
implements ServiceConnectorPrototype {
    protected ServiceConnectorPrototypeApplicationPort applicationPort;
    protected ServiceConnectorPrototypeServicePort servicePort;

    protected ServiceConnectorPrototypeImpl() {
    }

    protected EClass eStaticClass() {
        return CompositionPackage.Literals.SERVICE_CONNECTOR_PROTOTYPE;
    }

    public EcuSwComposition getEcuSwComposition() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (EcuSwComposition)this.eContainer();
    }

    public NotificationChain basicSetEcuSwComposition(EcuSwComposition newEcuSwComposition, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newEcuSwComposition, 18, msgs);
        return msgs;
    }

    public void setEcuSwComposition(EcuSwComposition newEcuSwComposition) {
        if (newEcuSwComposition != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newEcuSwComposition != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newEcuSwComposition)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEcuSwComposition != null) {
                msgs = ((InternalEObject)newEcuSwComposition).eInverseAdd((InternalEObject)this, 20, EcuSwComposition.class, msgs);
            }
            if ((msgs = this.basicSetEcuSwComposition(newEcuSwComposition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newEcuSwComposition, (Object)newEcuSwComposition));
        }
    }

    public ServiceConnectorPrototypeApplicationPort getApplicationPort() {
        return this.applicationPort;
    }

    public NotificationChain basicSetApplicationPort(ServiceConnectorPrototypeApplicationPort newApplicationPort, NotificationChain msgs) {
        ServiceConnectorPrototypeApplicationPort oldApplicationPort = this.applicationPort;
        this.applicationPort = newApplicationPort;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldApplicationPort, (Object)newApplicationPort);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setApplicationPort(ServiceConnectorPrototypeApplicationPort newApplicationPort) {
        if (newApplicationPort != this.applicationPort) {
            NotificationChain msgs = null;
            if (this.applicationPort != null) {
                msgs = ((InternalEObject)this.applicationPort).eInverseRemove((InternalEObject)this, 4, ServiceConnectorPrototypeApplicationPort.class, msgs);
            }
            if (newApplicationPort != null) {
                msgs = ((InternalEObject)newApplicationPort).eInverseAdd((InternalEObject)this, 4, ServiceConnectorPrototypeApplicationPort.class, msgs);
            }
            if ((msgs = this.basicSetApplicationPort(newApplicationPort, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newApplicationPort, (Object)newApplicationPort));
        }
    }

    public ServiceConnectorPrototypeServicePort getServicePort() {
        return this.servicePort;
    }

    public NotificationChain basicSetServicePort(ServiceConnectorPrototypeServicePort newServicePort, NotificationChain msgs) {
        ServiceConnectorPrototypeServicePort oldServicePort = this.servicePort;
        this.servicePort = newServicePort;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldServicePort, (Object)newServicePort);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setServicePort(ServiceConnectorPrototypeServicePort newServicePort) {
        if (newServicePort != this.servicePort) {
            NotificationChain msgs = null;
            if (this.servicePort != null) {
                msgs = ((InternalEObject)this.servicePort).eInverseRemove((InternalEObject)this, 4, ServiceConnectorPrototypeServicePort.class, msgs);
            }
            if (newServicePort != null) {
                msgs = ((InternalEObject)newServicePort).eInverseAdd((InternalEObject)this, 4, ServiceConnectorPrototypeServicePort.class, msgs);
            }
            if ((msgs = this.basicSetServicePort(newServicePort, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newServicePort, (Object)newServicePort));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetEcuSwComposition((EcuSwComposition)otherEnd, msgs);
            }
            case 19: {
                if (this.applicationPort != null) {
                    msgs = ((InternalEObject)this.applicationPort).eInverseRemove((InternalEObject)this, -20, null, msgs);
                }
                return this.basicSetApplicationPort((ServiceConnectorPrototypeApplicationPort)otherEnd, msgs);
            }
            case 20: {
                if (this.servicePort != null) {
                    msgs = ((InternalEObject)this.servicePort).eInverseRemove((InternalEObject)this, -21, null, msgs);
                }
                return this.basicSetServicePort((ServiceConnectorPrototypeServicePort)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetEcuSwComposition(null, msgs);
            }
            case 19: {
                return this.basicSetApplicationPort(null, msgs);
            }
            case 20: {
                return this.basicSetServicePort(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, EcuSwComposition.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getEcuSwComposition();
            }
            case 19: {
                return this.getApplicationPort();
            }
            case 20: {
                return this.getServicePort();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setEcuSwComposition((EcuSwComposition)newValue);
                return;
            }
            case 19: {
                this.setApplicationPort((ServiceConnectorPrototypeApplicationPort)newValue);
                return;
            }
            case 20: {
                this.setServicePort((ServiceConnectorPrototypeServicePort)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setEcuSwComposition(null);
                return;
            }
            case 19: {
                this.setApplicationPort(null);
                return;
            }
            case 20: {
                this.setServicePort(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getEcuSwComposition() != null;
            }
            case 19: {
                return this.applicationPort != null;
            }
            case 20: {
                return this.servicePort != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

