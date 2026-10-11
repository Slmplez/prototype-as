/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.ecuresource.impl;

import autosar21.ecuresource.EcuresourcePackage;
import autosar21.ecuresource.HWConnection;
import autosar21.ecuresource.HWElementContainer;
import autosar21.ecuresource.PinHWConnection;
import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class HWConnectionImpl
extends IdentifiableImpl
implements HWConnection {
    protected EList<PinHWConnection> connectedPins;

    protected HWConnectionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcuresourcePackage.Literals.HW_CONNECTION;
    }

    @Override
    public HWElementContainer getHWElementContainer() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (HWElementContainer)this.eContainer();
    }

    public NotificationChain basicSetHWElementContainer(HWElementContainer newHWElementContainer, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newHWElementContainer, 16, msgs);
        return msgs;
    }

    @Override
    public void setHWElementContainer(HWElementContainer newHWElementContainer) {
        if (newHWElementContainer != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newHWElementContainer != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newHWElementContainer)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newHWElementContainer != null) {
                msgs = ((InternalEObject)newHWElementContainer).eInverseAdd((InternalEObject)this, 25, HWElementContainer.class, msgs);
            }
            if ((msgs = this.basicSetHWElementContainer(newHWElementContainer, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newHWElementContainer, (Object)newHWElementContainer));
        }
    }

    @Override
    public EList<PinHWConnection> getConnectedPins() {
        if (this.connectedPins == null) {
            this.connectedPins = new EObjectContainmentWithInverseEList(PinHWConnection.class, (InternalEObject)this, 17, 4);
        }
        return this.connectedPins;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetHWElementContainer((HWElementContainer)otherEnd, msgs);
            }
            case 17: {
                return ((InternalEList)this.getConnectedPins()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetHWElementContainer(null, msgs);
            }
            case 17: {
                return ((InternalEList)this.getConnectedPins()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 25, HWElementContainer.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getHWElementContainer();
            }
            case 17: {
                return this.getConnectedPins();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setHWElementContainer((HWElementContainer)newValue);
                return;
            }
            case 17: {
                this.getConnectedPins().clear();
                this.getConnectedPins().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setHWElementContainer(null);
                return;
            }
            case 17: {
                this.getConnectedPins().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getHWElementContainer() != null;
            }
            case 17: {
                return this.connectedPins != null && !this.connectedPins.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

