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
package autosar40.system.fibex.fibex4can.cantopology.impl;

import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCommunicationControllerAttributes;
import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCommunicationControllerContent;
import autosar40.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.impl.CommunicationControllerContentImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class AbstractCanCommunicationControllerContentImpl
extends CommunicationControllerContentImpl
implements AbstractCanCommunicationControllerContent {
    protected AbstractCanCommunicationControllerAttributes canControllerAttributes;

    protected AbstractCanCommunicationControllerContentImpl() {
    }

    protected EClass eStaticClass() {
        return CantopologyPackage.Literals.ABSTRACT_CAN_COMMUNICATION_CONTROLLER_CONTENT;
    }

    public AbstractCanCommunicationControllerAttributes getCanControllerAttributes() {
        return this.canControllerAttributes;
    }

    public NotificationChain basicSetCanControllerAttributes(AbstractCanCommunicationControllerAttributes newCanControllerAttributes, NotificationChain msgs) {
        AbstractCanCommunicationControllerAttributes oldCanControllerAttributes = this.canControllerAttributes;
        this.canControllerAttributes = newCanControllerAttributes;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldCanControllerAttributes, (Object)newCanControllerAttributes);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setCanControllerAttributes(AbstractCanCommunicationControllerAttributes newCanControllerAttributes) {
        if (newCanControllerAttributes != this.canControllerAttributes) {
            NotificationChain msgs = null;
            if (this.canControllerAttributes != null) {
                msgs = ((InternalEObject)this.canControllerAttributes).eInverseRemove((InternalEObject)this, 4, AbstractCanCommunicationControllerAttributes.class, msgs);
            }
            if (newCanControllerAttributes != null) {
                msgs = ((InternalEObject)newCanControllerAttributes).eInverseAdd((InternalEObject)this, 4, AbstractCanCommunicationControllerAttributes.class, msgs);
            }
            if ((msgs = this.basicSetCanControllerAttributes(newCanControllerAttributes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newCanControllerAttributes, (Object)newCanControllerAttributes));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.canControllerAttributes != null) {
                    msgs = ((InternalEObject)this.canControllerAttributes).eInverseRemove((InternalEObject)this, -5, null, msgs);
                }
                return this.basicSetCanControllerAttributes((AbstractCanCommunicationControllerAttributes)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetCanControllerAttributes(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCanControllerAttributes();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setCanControllerAttributes((AbstractCanCommunicationControllerAttributes)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setCanControllerAttributes(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.canControllerAttributes != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

