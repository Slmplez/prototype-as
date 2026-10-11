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
import com.etas.amd620.core.ComponentSpecification.DirectionType1;
import com.etas.amd620.core.ComponentSpecification.PointT;
import com.etas.amd620.core.ComponentSpecification.TriggerPortType;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class TriggerPortTypeImpl
extends MinimalEObjectImpl.Container
implements TriggerPortType {
    protected PointT position;
    protected static final DirectionType1 DIRECTION_EDEFAULT = DirectionType1.RIGHT;
    protected DirectionType1 direction = DIRECTION_EDEFAULT;
    protected boolean directionESet;
    protected static final BigInteger GRAPHIC_OID_EDEFAULT = null;
    protected BigInteger graphicOID = GRAPHIC_OID_EDEFAULT;
    protected static final boolean NAME_VISIBILITY_EDEFAULT = false;
    protected boolean nameVisibility = false;
    protected boolean nameVisibilityESet;
    protected static final boolean VISIBILITY_EDEFAULT = false;
    protected boolean visibility = false;
    protected boolean visibilityESet;

    protected TriggerPortTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getTriggerPortType();
    }

    @Override
    public PointT getPosition() {
        return this.position;
    }

    public NotificationChain basicSetPosition(PointT newPosition, NotificationChain msgs) {
        PointT oldPosition = this.position;
        this.position = newPosition;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldPosition, (Object)newPosition);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setPosition(PointT newPosition) {
        if (newPosition != this.position) {
            NotificationChain msgs = null;
            if (this.position != null) {
                msgs = ((InternalEObject)this.position).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newPosition != null) {
                msgs = ((InternalEObject)newPosition).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetPosition(newPosition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newPosition, (Object)newPosition));
        }
    }

    @Override
    public DirectionType1 getDirection() {
        return this.direction;
    }

    @Override
    public void setDirection(DirectionType1 newDirection) {
        DirectionType1 oldDirection = this.direction;
        this.direction = newDirection == null ? DIRECTION_EDEFAULT : newDirection;
        boolean oldDirectionESet = this.directionESet;
        this.directionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldDirection, (Object)this.direction, !oldDirectionESet));
        }
    }

    @Override
    public void unsetDirection() {
        DirectionType1 oldDirection = this.direction;
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

    @Override
    public BigInteger getGraphicOID() {
        return this.graphicOID;
    }

    @Override
    public void setGraphicOID(BigInteger newGraphicOID) {
        BigInteger oldGraphicOID = this.graphicOID;
        this.graphicOID = newGraphicOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldGraphicOID, (Object)this.graphicOID));
        }
    }

    @Override
    public boolean isNameVisibility() {
        return this.nameVisibility;
    }

    @Override
    public void setNameVisibility(boolean newNameVisibility) {
        boolean oldNameVisibility = this.nameVisibility;
        this.nameVisibility = newNameVisibility;
        boolean oldNameVisibilityESet = this.nameVisibilityESet;
        this.nameVisibilityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, oldNameVisibility, this.nameVisibility, !oldNameVisibilityESet));
        }
    }

    @Override
    public void unsetNameVisibility() {
        boolean oldNameVisibility = this.nameVisibility;
        boolean oldNameVisibilityESet = this.nameVisibilityESet;
        this.nameVisibility = false;
        this.nameVisibilityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 3, oldNameVisibility, false, oldNameVisibilityESet));
        }
    }

    @Override
    public boolean isSetNameVisibility() {
        return this.nameVisibilityESet;
    }

    @Override
    public boolean isVisibility() {
        return this.visibility;
    }

    @Override
    public void setVisibility(boolean newVisibility) {
        boolean oldVisibility = this.visibility;
        this.visibility = newVisibility;
        boolean oldVisibilityESet = this.visibilityESet;
        this.visibilityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, oldVisibility, this.visibility, !oldVisibilityESet));
        }
    }

    @Override
    public void unsetVisibility() {
        boolean oldVisibility = this.visibility;
        boolean oldVisibilityESet = this.visibilityESet;
        this.visibility = false;
        this.visibilityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, oldVisibility, false, oldVisibilityESet));
        }
    }

    @Override
    public boolean isSetVisibility() {
        return this.visibilityESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetPosition(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getPosition();
            }
            case 1: {
                return this.getDirection();
            }
            case 2: {
                return this.getGraphicOID();
            }
            case 3: {
                return this.isNameVisibility();
            }
            case 4: {
                return this.isVisibility();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setPosition((PointT)newValue);
                return;
            }
            case 1: {
                this.setDirection((DirectionType1)((Object)newValue));
                return;
            }
            case 2: {
                this.setGraphicOID((BigInteger)newValue);
                return;
            }
            case 3: {
                this.setNameVisibility((Boolean)newValue);
                return;
            }
            case 4: {
                this.setVisibility((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setPosition(null);
                return;
            }
            case 1: {
                this.unsetDirection();
                return;
            }
            case 2: {
                this.setGraphicOID(GRAPHIC_OID_EDEFAULT);
                return;
            }
            case 3: {
                this.unsetNameVisibility();
                return;
            }
            case 4: {
                this.unsetVisibility();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.position != null;
            }
            case 1: {
                return this.isSetDirection();
            }
            case 2: {
                return GRAPHIC_OID_EDEFAULT == null ? this.graphicOID != null : !GRAPHIC_OID_EDEFAULT.equals(this.graphicOID);
            }
            case 3: {
                return this.isSetNameVisibility();
            }
            case 4: {
                return this.isSetVisibility();
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
        result.append(", graphicOID: ");
        result.append(this.graphicOID);
        result.append(", nameVisibility: ");
        if (this.nameVisibilityESet) {
            result.append(this.nameVisibility);
        } else {
            result.append("<unset>");
        }
        result.append(", visibility: ");
        if (this.visibilityESet) {
            result.append(this.visibility);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

