/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.ecuresource.impl;

import autosar21.ecuresource.EcuresourcePackage;
import autosar21.ecuresource.HWConnection;
import autosar21.ecuresource.HWPin;
import autosar21.ecuresource.PinHWConnection;
import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PinHWConnectionImpl
extends ARObjectImpl
implements PinHWConnection,
IReferringClass {
    protected EList<HWPin> connectedPins;

    protected PinHWConnectionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcuresourcePackage.Literals.PIN_HW_CONNECTION;
    }

    @Override
    public HWConnection getHWConnection() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (HWConnection)this.eContainer();
    }

    public NotificationChain basicSetHWConnection(HWConnection newHWConnection, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newHWConnection, 4, msgs);
        return msgs;
    }

    @Override
    public void setHWConnection(HWConnection newHWConnection) {
        if (newHWConnection != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newHWConnection != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newHWConnection)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newHWConnection != null) {
                msgs = ((InternalEObject)newHWConnection).eInverseAdd((InternalEObject)this, 17, HWConnection.class, msgs);
            }
            if ((msgs = this.basicSetHWConnection(newHWConnection, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newHWConnection, (Object)newHWConnection));
        }
    }

    @Override
    public EList<HWPin> getConnectedPins() {
        if (this.connectedPins == null) {
            this.connectedPins = new EObjectResolvingReferringEList(HWPin.class, (InternalEObject)this, 5);
        }
        return this.connectedPins;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetHWConnection((HWConnection)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetHWConnection(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 17, HWConnection.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getHWConnection();
            }
            case 5: {
                return this.getConnectedPins();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setHWConnection((HWConnection)newValue);
                return;
            }
            case 5: {
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
            case 4: {
                this.setHWConnection(null);
                return;
            }
            case 5: {
                this.getConnectedPins().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getHWConnection() != null;
            }
            case 5: {
                return this.connectedPins != null && !this.connectedPins.isEmpty();
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

