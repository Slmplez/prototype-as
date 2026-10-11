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
package autosar40.swcomponent.portinterface.impl;

import autosar40.swcomponent.portinterface.ImplementationDataTypeSubElementRef;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import autosar40.swcomponent.portinterface.impl.SubElementRefImpl;
import autosar40.swcomponent.swcinternalbehavior.dataelements.ArVariableInImplementationDataInstanceRef;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ImplementationDataTypeSubElementRefImpl
extends SubElementRefImpl
implements ImplementationDataTypeSubElementRef {
    protected ArVariableInImplementationDataInstanceRef implementationDataTypeElement;

    protected ImplementationDataTypeSubElementRefImpl() {
    }

    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.IMPLEMENTATION_DATA_TYPE_SUB_ELEMENT_REF;
    }

    public ArVariableInImplementationDataInstanceRef getImplementationDataTypeElement() {
        return this.implementationDataTypeElement;
    }

    public NotificationChain basicSetImplementationDataTypeElement(ArVariableInImplementationDataInstanceRef newImplementationDataTypeElement, NotificationChain msgs) {
        ArVariableInImplementationDataInstanceRef oldImplementationDataTypeElement = this.implementationDataTypeElement;
        this.implementationDataTypeElement = newImplementationDataTypeElement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldImplementationDataTypeElement, (Object)newImplementationDataTypeElement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setImplementationDataTypeElement(ArVariableInImplementationDataInstanceRef newImplementationDataTypeElement) {
        if (newImplementationDataTypeElement != this.implementationDataTypeElement) {
            NotificationChain msgs = null;
            if (this.implementationDataTypeElement != null) {
                msgs = ((InternalEObject)this.implementationDataTypeElement).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newImplementationDataTypeElement != null) {
                msgs = ((InternalEObject)newImplementationDataTypeElement).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetImplementationDataTypeElement(newImplementationDataTypeElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newImplementationDataTypeElement, (Object)newImplementationDataTypeElement));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetImplementationDataTypeElement(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getImplementationDataTypeElement();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setImplementationDataTypeElement((ArVariableInImplementationDataInstanceRef)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setImplementationDataTypeElement(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.implementationDataTypeElement != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

