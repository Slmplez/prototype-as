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
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.BlockConnectorT;
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.ConnectionPointT;
import com.etas.amd620.core.ComponentSpecification.DirectionType1;
import com.etas.amd620.core.ComponentSpecification.FlowType;
import com.etas.amd620.core.ComponentSpecification.SizeT;
import com.etas.amd620.core.ComponentSpecification.impl.GraphicObjectTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class BlockConnectorTImpl
extends GraphicObjectTImpl
implements BlockConnectorT {
    protected SizeT size;
    protected ConnectionPointT connectionPoint;
    protected static final DirectionType1 DIRECTION_EDEFAULT = DirectionType1.RIGHT;
    protected DirectionType1 direction = DIRECTION_EDEFAULT;
    protected boolean directionESet;
    protected static final FlowType FLOW_EDEFAULT = FlowType.IN;
    protected FlowType flow = FLOW_EDEFAULT;
    protected boolean flowESet;
    protected static final boolean TEMP_VAR_EDEFAULT = false;
    protected boolean tempVar = false;
    protected boolean tempVarESet;
    protected static final boolean VISIBILITY_EDEFAULT = false;
    protected boolean visibility = false;
    protected boolean visibilityESet;

    protected BlockConnectorTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getBlockConnectorT();
    }

    @Override
    public SizeT getSize() {
        return this.size;
    }

    public NotificationChain basicSetSize(SizeT newSize, NotificationChain msgs) {
        SizeT oldSize = this.size;
        this.size = newSize;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldSize, (Object)newSize);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSize(SizeT newSize) {
        if (newSize != this.size) {
            NotificationChain msgs = null;
            if (this.size != null) {
                msgs = ((InternalEObject)this.size).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newSize != null) {
                msgs = ((InternalEObject)newSize).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetSize(newSize, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSize, (Object)newSize));
        }
    }

    @Override
    public ConnectionPointT getConnectionPoint() {
        return this.connectionPoint;
    }

    public NotificationChain basicSetConnectionPoint(ConnectionPointT newConnectionPoint, NotificationChain msgs) {
        ConnectionPointT oldConnectionPoint = this.connectionPoint;
        this.connectionPoint = newConnectionPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldConnectionPoint, (Object)newConnectionPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setConnectionPoint(ConnectionPointT newConnectionPoint) {
        if (newConnectionPoint != this.connectionPoint) {
            NotificationChain msgs = null;
            if (this.connectionPoint != null) {
                msgs = ((InternalEObject)this.connectionPoint).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newConnectionPoint != null) {
                msgs = ((InternalEObject)newConnectionPoint).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetConnectionPoint(newConnectionPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newConnectionPoint, (Object)newConnectionPoint));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldDirection, (Object)this.direction, !oldDirectionESet));
        }
    }

    @Override
    public void unsetDirection() {
        DirectionType1 oldDirection = this.direction;
        boolean oldDirectionESet = this.directionESet;
        this.direction = DIRECTION_EDEFAULT;
        this.directionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldDirection, (Object)DIRECTION_EDEFAULT, oldDirectionESet));
        }
    }

    @Override
    public boolean isSetDirection() {
        return this.directionESet;
    }

    @Override
    public FlowType getFlow() {
        return this.flow;
    }

    @Override
    public void setFlow(FlowType newFlow) {
        FlowType oldFlow = this.flow;
        this.flow = newFlow == null ? FLOW_EDEFAULT : newFlow;
        boolean oldFlowESet = this.flowESet;
        this.flowESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldFlow, (Object)this.flow, !oldFlowESet));
        }
    }

    @Override
    public void unsetFlow() {
        FlowType oldFlow = this.flow;
        boolean oldFlowESet = this.flowESet;
        this.flow = FLOW_EDEFAULT;
        this.flowESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldFlow, (Object)FLOW_EDEFAULT, oldFlowESet));
        }
    }

    @Override
    public boolean isSetFlow() {
        return this.flowESet;
    }

    @Override
    public boolean isTempVar() {
        return this.tempVar;
    }

    @Override
    public void setTempVar(boolean newTempVar) {
        boolean oldTempVar = this.tempVar;
        this.tempVar = newTempVar;
        boolean oldTempVarESet = this.tempVarESet;
        this.tempVarESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, oldTempVar, this.tempVar, !oldTempVarESet));
        }
    }

    @Override
    public void unsetTempVar() {
        boolean oldTempVar = this.tempVar;
        boolean oldTempVarESet = this.tempVarESet;
        this.tempVar = false;
        this.tempVarESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, oldTempVar, false, oldTempVarESet));
        }
    }

    @Override
    public boolean isSetTempVar() {
        return this.tempVarESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, oldVisibility, this.visibility, !oldVisibilityESet));
        }
    }

    @Override
    public void unsetVisibility() {
        boolean oldVisibility = this.visibility;
        boolean oldVisibilityESet = this.visibilityESet;
        this.visibility = false;
        this.visibilityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, oldVisibility, false, oldVisibilityESet));
        }
    }

    @Override
    public boolean isSetVisibility() {
        return this.visibilityESet;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSize(null, msgs);
            }
            case 5: {
                return this.basicSetConnectionPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSize();
            }
            case 5: {
                return this.getConnectionPoint();
            }
            case 6: {
                return this.getDirection();
            }
            case 7: {
                return this.getFlow();
            }
            case 8: {
                return this.isTempVar();
            }
            case 9: {
                return this.isVisibility();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSize((SizeT)newValue);
                return;
            }
            case 5: {
                this.setConnectionPoint((ConnectionPointT)newValue);
                return;
            }
            case 6: {
                this.setDirection((DirectionType1)((Object)newValue));
                return;
            }
            case 7: {
                this.setFlow((FlowType)((Object)newValue));
                return;
            }
            case 8: {
                this.setTempVar((Boolean)newValue);
                return;
            }
            case 9: {
                this.setVisibility((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSize(null);
                return;
            }
            case 5: {
                this.setConnectionPoint(null);
                return;
            }
            case 6: {
                this.unsetDirection();
                return;
            }
            case 7: {
                this.unsetFlow();
                return;
            }
            case 8: {
                this.unsetTempVar();
                return;
            }
            case 9: {
                this.unsetVisibility();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.size != null;
            }
            case 5: {
                return this.connectionPoint != null;
            }
            case 6: {
                return this.isSetDirection();
            }
            case 7: {
                return this.isSetFlow();
            }
            case 8: {
                return this.isSetTempVar();
            }
            case 9: {
                return this.isSetVisibility();
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
        result.append(", flow: ");
        if (this.flowESet) {
            result.append((Object)this.flow);
        } else {
            result.append("<unset>");
        }
        result.append(", tempVar: ");
        if (this.tempVarESet) {
            result.append(this.tempVar);
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

