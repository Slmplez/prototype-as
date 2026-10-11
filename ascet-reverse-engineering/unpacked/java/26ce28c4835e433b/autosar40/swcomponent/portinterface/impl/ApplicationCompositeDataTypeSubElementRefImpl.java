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

import autosar40.swcomponent.portinterface.ApplicationCompositeDataTypeSubElementRef;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import autosar40.swcomponent.portinterface.impl.SubElementRefImpl;
import autosar40.swcomponent.portinterface.instancerefs.ApplicationCompositeElementInPortInterfaceInstanceRef;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ApplicationCompositeDataTypeSubElementRefImpl
extends SubElementRefImpl
implements ApplicationCompositeDataTypeSubElementRef {
    protected ApplicationCompositeElementInPortInterfaceInstanceRef applicationCompositeElement;

    protected ApplicationCompositeDataTypeSubElementRefImpl() {
    }

    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.APPLICATION_COMPOSITE_DATA_TYPE_SUB_ELEMENT_REF;
    }

    public ApplicationCompositeElementInPortInterfaceInstanceRef getApplicationCompositeElement() {
        return this.applicationCompositeElement;
    }

    public NotificationChain basicSetApplicationCompositeElement(ApplicationCompositeElementInPortInterfaceInstanceRef newApplicationCompositeElement, NotificationChain msgs) {
        ApplicationCompositeElementInPortInterfaceInstanceRef oldApplicationCompositeElement = this.applicationCompositeElement;
        this.applicationCompositeElement = newApplicationCompositeElement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldApplicationCompositeElement, (Object)newApplicationCompositeElement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setApplicationCompositeElement(ApplicationCompositeElementInPortInterfaceInstanceRef newApplicationCompositeElement) {
        if (newApplicationCompositeElement != this.applicationCompositeElement) {
            NotificationChain msgs = null;
            if (this.applicationCompositeElement != null) {
                msgs = ((InternalEObject)this.applicationCompositeElement).eInverseRemove((InternalEObject)this, 4, ApplicationCompositeElementInPortInterfaceInstanceRef.class, msgs);
            }
            if (newApplicationCompositeElement != null) {
                msgs = ((InternalEObject)newApplicationCompositeElement).eInverseAdd((InternalEObject)this, 4, ApplicationCompositeElementInPortInterfaceInstanceRef.class, msgs);
            }
            if ((msgs = this.basicSetApplicationCompositeElement(newApplicationCompositeElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newApplicationCompositeElement, (Object)newApplicationCompositeElement));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.applicationCompositeElement != null) {
                    msgs = ((InternalEObject)this.applicationCompositeElement).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetApplicationCompositeElement((ApplicationCompositeElementInPortInterfaceInstanceRef)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetApplicationCompositeElement(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getApplicationCompositeElement();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setApplicationCompositeElement((ApplicationCompositeElementInPortInterfaceInstanceRef)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setApplicationCompositeElement(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.applicationCompositeElement != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

