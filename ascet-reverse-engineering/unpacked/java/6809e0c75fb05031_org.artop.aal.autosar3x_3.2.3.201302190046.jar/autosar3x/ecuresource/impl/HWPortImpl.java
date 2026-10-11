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
package autosar3x.ecuresource.impl;

import autosar3x.ecuresource.EcuresourcePackage;
import autosar3x.ecuresource.HWElement;
import autosar3x.ecuresource.HWPin;
import autosar3x.ecuresource.HWPort;
import autosar3x.ecuresource.peripherals.CommunicationDirectionEnum;
import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
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
public class HWPortImpl
extends IdentifiableImpl
implements HWPort {
    protected static final CommunicationDirectionEnum DIRECTION_EDEFAULT = CommunicationDirectionEnum.INPUT;
    protected CommunicationDirectionEnum direction = DIRECTION_EDEFAULT;
    protected boolean directionESet;
    protected EList<HWPin> pins;

    protected HWPortImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcuresourcePackage.Literals.HW_PORT;
    }

    @Override
    public HWElement getHWElement() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (HWElement)this.eContainer();
    }

    public NotificationChain basicSetHWElement(HWElement newHWElement, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newHWElement, 17, msgs);
        return msgs;
    }

    @Override
    public void setHWElement(HWElement newHWElement) {
        if (newHWElement != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newHWElement != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newHWElement)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newHWElement != null) {
                msgs = ((InternalEObject)newHWElement).eInverseAdd((InternalEObject)this, 21, HWElement.class, msgs);
            }
            if ((msgs = this.basicSetHWElement(newHWElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newHWElement, (Object)newHWElement));
        }
    }

    @Override
    public CommunicationDirectionEnum getDirection() {
        return this.direction;
    }

    @Override
    public void setDirection(CommunicationDirectionEnum newDirection) {
        CommunicationDirectionEnum oldDirection = this.direction;
        this.direction = newDirection == null ? DIRECTION_EDEFAULT : newDirection;
        boolean oldDirectionESet = this.directionESet;
        this.directionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldDirection, (Object)this.direction, !oldDirectionESet));
        }
    }

    @Override
    public void unsetDirection() {
        CommunicationDirectionEnum oldDirection = this.direction;
        boolean oldDirectionESet = this.directionESet;
        this.direction = DIRECTION_EDEFAULT;
        this.directionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldDirection, (Object)DIRECTION_EDEFAULT, oldDirectionESet));
        }
    }

    @Override
    public boolean isSetDirection() {
        return this.directionESet;
    }

    @Override
    public EList<HWPin> getPins() {
        if (this.pins == null) {
            this.pins = new EObjectContainmentWithInverseEList(HWPin.class, (InternalEObject)this, 19, 17);
        }
        return this.pins;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetHWElement((HWElement)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getPins()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetHWElement(null, msgs);
            }
            case 19: {
                return ((InternalEList)this.getPins()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, HWElement.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getHWElement();
            }
            case 18: {
                return this.getDirection();
            }
            case 19: {
                return this.getPins();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setHWElement((HWElement)newValue);
                return;
            }
            case 18: {
                this.setDirection((CommunicationDirectionEnum)((Object)newValue));
                return;
            }
            case 19: {
                this.getPins().clear();
                this.getPins().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setHWElement(null);
                return;
            }
            case 18: {
                this.unsetDirection();
                return;
            }
            case 19: {
                this.getPins().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.getHWElement() != null;
            }
            case 18: {
                return this.isSetDirection();
            }
            case 19: {
                return this.pins != null && !this.pins.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (direction: ");
        if (this.directionESet) {
            result.append((Object)this.direction);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

