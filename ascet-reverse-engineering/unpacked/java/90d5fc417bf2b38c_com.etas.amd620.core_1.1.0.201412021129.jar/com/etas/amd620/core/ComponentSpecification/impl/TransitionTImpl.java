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

import com.etas.amd620.core.ComponentSpecification.ActionsType;
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.ConnectionLineT;
import com.etas.amd620.core.ComponentSpecification.ConnectionPointT;
import com.etas.amd620.core.ComponentSpecification.PointT;
import com.etas.amd620.core.ComponentSpecification.TransitionT;
import com.etas.amd620.core.ComponentSpecification.impl.GraphicObjectTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class TransitionTImpl
extends GraphicObjectTImpl
implements TransitionT {
    protected ConnectionPointT start;
    protected ConnectionPointT end;
    protected ConnectionLineT connectionLine;
    protected PointT labelPosition;
    protected ActionsType actions;

    protected TransitionTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getTransitionT();
    }

    @Override
    public ConnectionPointT getStart() {
        return this.start;
    }

    public NotificationChain basicSetStart(ConnectionPointT newStart, NotificationChain msgs) {
        ConnectionPointT oldStart = this.start;
        this.start = newStart;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldStart, (Object)newStart);
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
                msgs = ((InternalEObject)this.start).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newStart != null) {
                msgs = ((InternalEObject)newStart).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetStart(newStart, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newStart, (Object)newStart));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldEnd, (Object)newEnd);
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
                msgs = ((InternalEObject)this.end).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newEnd != null) {
                msgs = ((InternalEObject)newEnd).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetEnd(newEnd, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newEnd, (Object)newEnd));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldConnectionLine, (Object)newConnectionLine);
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
                msgs = ((InternalEObject)this.connectionLine).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newConnectionLine != null) {
                msgs = ((InternalEObject)newConnectionLine).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetConnectionLine(newConnectionLine, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newConnectionLine, (Object)newConnectionLine));
        }
    }

    @Override
    public PointT getLabelPosition() {
        return this.labelPosition;
    }

    public NotificationChain basicSetLabelPosition(PointT newLabelPosition, NotificationChain msgs) {
        PointT oldLabelPosition = this.labelPosition;
        this.labelPosition = newLabelPosition;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldLabelPosition, (Object)newLabelPosition);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setLabelPosition(PointT newLabelPosition) {
        if (newLabelPosition != this.labelPosition) {
            NotificationChain msgs = null;
            if (this.labelPosition != null) {
                msgs = ((InternalEObject)this.labelPosition).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newLabelPosition != null) {
                msgs = ((InternalEObject)newLabelPosition).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetLabelPosition(newLabelPosition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newLabelPosition, (Object)newLabelPosition));
        }
    }

    @Override
    public ActionsType getActions() {
        return this.actions;
    }

    public NotificationChain basicSetActions(ActionsType newActions, NotificationChain msgs) {
        ActionsType oldActions = this.actions;
        this.actions = newActions;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldActions, (Object)newActions);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setActions(ActionsType newActions) {
        if (newActions != this.actions) {
            NotificationChain msgs = null;
            if (this.actions != null) {
                msgs = ((InternalEObject)this.actions).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newActions != null) {
                msgs = ((InternalEObject)newActions).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetActions(newActions, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newActions, (Object)newActions));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetStart(null, msgs);
            }
            case 5: {
                return this.basicSetEnd(null, msgs);
            }
            case 6: {
                return this.basicSetConnectionLine(null, msgs);
            }
            case 7: {
                return this.basicSetLabelPosition(null, msgs);
            }
            case 8: {
                return this.basicSetActions(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getStart();
            }
            case 5: {
                return this.getEnd();
            }
            case 6: {
                return this.getConnectionLine();
            }
            case 7: {
                return this.getLabelPosition();
            }
            case 8: {
                return this.getActions();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setStart((ConnectionPointT)newValue);
                return;
            }
            case 5: {
                this.setEnd((ConnectionPointT)newValue);
                return;
            }
            case 6: {
                this.setConnectionLine((ConnectionLineT)newValue);
                return;
            }
            case 7: {
                this.setLabelPosition((PointT)newValue);
                return;
            }
            case 8: {
                this.setActions((ActionsType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setStart(null);
                return;
            }
            case 5: {
                this.setEnd(null);
                return;
            }
            case 6: {
                this.setConnectionLine(null);
                return;
            }
            case 7: {
                this.setLabelPosition(null);
                return;
            }
            case 8: {
                this.setActions(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.start != null;
            }
            case 5: {
                return this.end != null;
            }
            case 6: {
                return this.connectionLine != null;
            }
            case 7: {
                return this.labelPosition != null;
            }
            case 8: {
                return this.actions != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

