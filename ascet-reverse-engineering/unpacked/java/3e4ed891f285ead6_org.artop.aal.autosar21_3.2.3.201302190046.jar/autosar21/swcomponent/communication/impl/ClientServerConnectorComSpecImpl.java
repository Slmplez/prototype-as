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
package autosar21.swcomponent.communication.impl;

import autosar21.swcomponent.communication.ClientServerConnectorComSpec;
import autosar21.swcomponent.communication.CommunicationPackage;
import autosar21.swcomponent.communication.impl.ConnectorComSpecImpl;
import autosar21.swcomponent.communication.instanceref.ClientServerConnectorComSpecOperation;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ClientServerConnectorComSpecImpl
extends ConnectorComSpecImpl
implements ClientServerConnectorComSpec {
    protected ClientServerConnectorComSpecOperation operation;

    protected ClientServerConnectorComSpecImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.CLIENT_SERVER_CONNECTOR_COM_SPEC;
    }

    public ClientServerConnectorComSpecOperation getOperation() {
        return this.operation;
    }

    public NotificationChain basicSetOperation(ClientServerConnectorComSpecOperation newOperation, NotificationChain msgs) {
        ClientServerConnectorComSpecOperation oldOperation = this.operation;
        this.operation = newOperation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldOperation, (Object)newOperation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setOperation(ClientServerConnectorComSpecOperation newOperation) {
        if (newOperation != this.operation) {
            NotificationChain msgs = null;
            if (this.operation != null) {
                msgs = ((InternalEObject)this.operation).eInverseRemove((InternalEObject)this, 4, ClientServerConnectorComSpecOperation.class, msgs);
            }
            if (newOperation != null) {
                msgs = ((InternalEObject)newOperation).eInverseAdd((InternalEObject)this, 4, ClientServerConnectorComSpecOperation.class, msgs);
            }
            if ((msgs = this.basicSetOperation(newOperation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newOperation, (Object)newOperation));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.operation != null) {
                    msgs = ((InternalEObject)this.operation).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetOperation((ClientServerConnectorComSpecOperation)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetOperation(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getOperation();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setOperation((ClientServerConnectorComSpecOperation)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setOperation(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.operation != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

