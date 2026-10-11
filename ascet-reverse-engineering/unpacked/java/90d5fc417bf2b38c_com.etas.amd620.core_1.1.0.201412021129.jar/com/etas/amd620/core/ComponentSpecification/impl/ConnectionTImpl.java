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
import com.etas.amd620.core.ComponentSpecification.ConnectionLineT;
import com.etas.amd620.core.ComponentSpecification.ConnectionPointT;
import com.etas.amd620.core.ComponentSpecification.ConnectionT;
import com.etas.amd620.core.ComponentSpecification.LineStyleT;
import com.etas.amd620.core.ComponentSpecification.ViewInfoT;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ConnectionTImpl
extends MinimalEObjectImpl.Container
implements ConnectionT {
    protected ViewInfoT viewInfo;
    protected LineStyleT lineStyle;
    protected ConnectionPointT start;
    protected ConnectionPointT end;
    protected ConnectionLineT connectionLine;
    protected static final BigInteger CONNECTION_POINT_NUMBER_EDEFAULT = null;
    protected BigInteger connectionPointNumber = CONNECTION_POINT_NUMBER_EDEFAULT;

    protected ConnectionTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getConnectionT();
    }

    @Override
    public ViewInfoT getViewInfo() {
        return this.viewInfo;
    }

    public NotificationChain basicSetViewInfo(ViewInfoT newViewInfo, NotificationChain msgs) {
        ViewInfoT oldViewInfo = this.viewInfo;
        this.viewInfo = newViewInfo;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldViewInfo, (Object)newViewInfo);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setViewInfo(ViewInfoT newViewInfo) {
        if (newViewInfo != this.viewInfo) {
            NotificationChain msgs = null;
            if (this.viewInfo != null) {
                msgs = ((InternalEObject)this.viewInfo).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newViewInfo != null) {
                msgs = ((InternalEObject)newViewInfo).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetViewInfo(newViewInfo, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newViewInfo, (Object)newViewInfo));
        }
    }

    @Override
    public LineStyleT getLineStyle() {
        return this.lineStyle;
    }

    public NotificationChain basicSetLineStyle(LineStyleT newLineStyle, NotificationChain msgs) {
        LineStyleT oldLineStyle = this.lineStyle;
        this.lineStyle = newLineStyle;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldLineStyle, (Object)newLineStyle);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setLineStyle(LineStyleT newLineStyle) {
        if (newLineStyle != this.lineStyle) {
            NotificationChain msgs = null;
            if (this.lineStyle != null) {
                msgs = ((InternalEObject)this.lineStyle).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newLineStyle != null) {
                msgs = ((InternalEObject)newLineStyle).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetLineStyle(newLineStyle, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newLineStyle, (Object)newLineStyle));
        }
    }

    @Override
    public ConnectionPointT getStart() {
        return this.start;
    }

    public NotificationChain basicSetStart(ConnectionPointT newStart, NotificationChain msgs) {
        ConnectionPointT oldStart = this.start;
        this.start = newStart;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldStart, (Object)newStart);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setStart(ConnectionPointT newStart) {
        if (newStart != this.start) {
            NotificationChain msgs = null;
            if (this.start != null) {
                msgs = ((InternalEObject)this.start).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newStart != null) {
                msgs = ((InternalEObject)newStart).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetStart(newStart, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newStart, (Object)newStart));
        }
    }

    @Override
    public ConnectionPointT getEnd() {
        return this.end;
    }

    public NotificationChain basicSetEnd(ConnectionPointT newEnd, NotificationChain msgs) {
        ConnectionPointT oldEnd = this.end;
        this.end = newEnd;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldEnd, (Object)newEnd);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setEnd(ConnectionPointT newEnd) {
        if (newEnd != this.end) {
            NotificationChain msgs = null;
            if (this.end != null) {
                msgs = ((InternalEObject)this.end).eInverseRemove((InternalEObject)this, -4, null, msgs);
            }
            if (newEnd != null) {
                msgs = ((InternalEObject)newEnd).eInverseAdd((InternalEObject)this, -4, null, msgs);
            }
            if ((msgs = this.basicSetEnd(newEnd, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)newEnd, (Object)newEnd));
        }
    }

    @Override
    public ConnectionLineT getConnectionLine() {
        return this.connectionLine;
    }

    public NotificationChain basicSetConnectionLine(ConnectionLineT newConnectionLine, NotificationChain msgs) {
        ConnectionLineT oldConnectionLine = this.connectionLine;
        this.connectionLine = newConnectionLine;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldConnectionLine, (Object)newConnectionLine);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setConnectionLine(ConnectionLineT newConnectionLine) {
        if (newConnectionLine != this.connectionLine) {
            NotificationChain msgs = null;
            if (this.connectionLine != null) {
                msgs = ((InternalEObject)this.connectionLine).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newConnectionLine != null) {
                msgs = ((InternalEObject)newConnectionLine).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetConnectionLine(newConnectionLine, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newConnectionLine, (Object)newConnectionLine));
        }
    }

    @Override
    public BigInteger getConnectionPointNumber() {
        return this.connectionPointNumber;
    }

    @Override
    public void setConnectionPointNumber(BigInteger newConnectionPointNumber) {
        BigInteger oldConnectionPointNumber = this.connectionPointNumber;
        this.connectionPointNumber = newConnectionPointNumber;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldConnectionPointNumber, (Object)this.connectionPointNumber));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetViewInfo(null, msgs);
            }
            case 1: {
                return this.basicSetLineStyle(null, msgs);
            }
            case 2: {
                return this.basicSetStart(null, msgs);
            }
            case 3: {
                return this.basicSetEnd(null, msgs);
            }
            case 4: {
                return this.basicSetConnectionLine(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getViewInfo();
            }
            case 1: {
                return this.getLineStyle();
            }
            case 2: {
                return this.getStart();
            }
            case 3: {
                return this.getEnd();
            }
            case 4: {
                return this.getConnectionLine();
            }
            case 5: {
                return this.getConnectionPointNumber();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setViewInfo((ViewInfoT)newValue);
                return;
            }
            case 1: {
                this.setLineStyle((LineStyleT)newValue);
                return;
            }
            case 2: {
                this.setStart((ConnectionPointT)newValue);
                return;
            }
            case 3: {
                this.setEnd((ConnectionPointT)newValue);
                return;
            }
            case 4: {
                this.setConnectionLine((ConnectionLineT)newValue);
                return;
            }
            case 5: {
                this.setConnectionPointNumber((BigInteger)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setViewInfo(null);
                return;
            }
            case 1: {
                this.setLineStyle(null);
                return;
            }
            case 2: {
                this.setStart(null);
                return;
            }
            case 3: {
                this.setEnd(null);
                return;
            }
            case 4: {
                this.setConnectionLine(null);
                return;
            }
            case 5: {
                this.setConnectionPointNumber(CONNECTION_POINT_NUMBER_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.viewInfo != null;
            }
            case 1: {
                return this.lineStyle != null;
            }
            case 2: {
                return this.start != null;
            }
            case 3: {
                return this.end != null;
            }
            case 4: {
                return this.connectionLine != null;
            }
            case 5: {
                return CONNECTION_POINT_NUMBER_EDEFAULT == null ? this.connectionPointNumber != null : !CONNECTION_POINT_NUMBER_EDEFAULT.equals(this.connectionPointNumber);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (connectionPointNumber: ");
        result.append(this.connectionPointNumber);
        result.append(')');
        return result.toString();
    }
}

