/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.DirectionType;
import com.etas.amd620.core.ComponentSpecification.LineT;
import com.etas.amd620.core.ComponentSpecification.PointT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class LineTImpl
extends MinimalEObjectImpl.Container
implements LineT {
    protected PointT pointA;
    protected static final DirectionType DIRECTION_EDEFAULT = DirectionType.HORIZONTAL;
    protected DirectionType direction = DIRECTION_EDEFAULT;
    protected boolean directionESet;

    protected LineTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getLineT();
    }

    @Override
    public PointT getPointA() {
        return this.pointA;
    }

    public NotificationChain basicSetPointA(PointT newPointA, NotificationChain msgs) {
        PointT oldPointA = this.pointA;
        this.pointA = newPointA;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldPointA, (Object)newPointA);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setPointA(PointT newPointA) {
        if (newPointA != this.pointA) {
            NotificationChain msgs = null;
            if (this.pointA != null) {
                msgs = ((InternalEObject)this.pointA).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newPointA != null) {
                msgs = ((InternalEObject)newPointA).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetPointA(newPointA, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newPointA, (Object)newPointA));
        }
    }

    @Override
    public DirectionType getDirection() {
        return this.direction;
    }

    @Override
    public void setDirection(DirectionType newDirection) {
        DirectionType oldDirection = this.direction;
        this.direction = newDirection == null ? DIRECTION_EDEFAULT : newDirection;
        boolean oldDirectionESet = this.directionESet;
        this.directionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldDirection, (Object)this.direction, !oldDirectionESet));
        }
    }

    @Override
    public void unsetDirection() {
        DirectionType oldDirection = this.direction;
        boolean oldDirectionESet = this.directionESet;
        this.direction = DIRECTION_EDEFAULT;
        this.directionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 1, (Object)oldDirection, (Object)DIRECTION_EDEFAULT, oldDirectionESet));
        }
    }

    @Override
    public boolean isSetDirection() {
        return this.directionESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetPointA(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getPointA();
            }
            case 1: {
                return this.getDirection();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setPointA((PointT)newValue);
                return;
            }
            case 1: {
                this.setDirection((DirectionType)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setPointA(null);
                return;
            }
            case 1: {
                this.unsetDirection();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.pointA != null;
            }
            case 1: {
                return this.isSetDirection();
            }
        }
        return super.eIsSet(featureID);
    }

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

