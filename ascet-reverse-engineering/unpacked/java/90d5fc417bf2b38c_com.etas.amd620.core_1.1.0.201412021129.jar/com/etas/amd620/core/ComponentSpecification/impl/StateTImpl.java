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

import com.etas.amd620.core.ComponentSpecification.ActionsType1;
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.ConnectorInterfaceType;
import com.etas.amd620.core.ComponentSpecification.IconT;
import com.etas.amd620.core.ComponentSpecification.PointT;
import com.etas.amd620.core.ComponentSpecification.SizeT;
import com.etas.amd620.core.ComponentSpecification.StateT;
import com.etas.amd620.core.ComponentSpecification.impl.GraphicObjectTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class StateTImpl
extends GraphicObjectTImpl
implements StateT {
    protected SizeT size;
    protected PointT position;
    protected ConnectorInterfaceType interfaces;
    protected IconT icon;
    protected ActionsType1 actions;
    protected static final boolean HISTORY_EDEFAULT = false;
    protected boolean history = false;
    protected boolean historyESet;
    protected static final String NAME_EDEFAULT = null;
    protected String name = NAME_EDEFAULT;
    protected static final boolean START_STATE_EDEFAULT = false;
    protected boolean startState = false;
    protected boolean startStateESet;

    protected StateTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getStateT();
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
    public PointT getPosition() {
        return this.position;
    }

    public NotificationChain basicSetPosition(PointT newPosition, NotificationChain msgs) {
        PointT oldPosition = this.position;
        this.position = newPosition;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldPosition, (Object)newPosition);
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
                msgs = ((InternalEObject)this.position).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newPosition != null) {
                msgs = ((InternalEObject)newPosition).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetPosition(newPosition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newPosition, (Object)newPosition));
        }
    }

    @Override
    public ConnectorInterfaceType getInterfaces() {
        return this.interfaces;
    }

    public NotificationChain basicSetInterfaces(ConnectorInterfaceType newInterfaces, NotificationChain msgs) {
        ConnectorInterfaceType oldInterfaces = this.interfaces;
        this.interfaces = newInterfaces;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldInterfaces, (Object)newInterfaces);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setInterfaces(ConnectorInterfaceType newInterfaces) {
        if (newInterfaces != this.interfaces) {
            NotificationChain msgs = null;
            if (this.interfaces != null) {
                msgs = ((InternalEObject)this.interfaces).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newInterfaces != null) {
                msgs = ((InternalEObject)newInterfaces).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetInterfaces(newInterfaces, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newInterfaces, (Object)newInterfaces));
        }
    }

    @Override
    public IconT getIcon() {
        return this.icon;
    }

    public NotificationChain basicSetIcon(IconT newIcon, NotificationChain msgs) {
        IconT oldIcon = this.icon;
        this.icon = newIcon;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldIcon, (Object)newIcon);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setIcon(IconT newIcon) {
        if (newIcon != this.icon) {
            NotificationChain msgs = null;
            if (this.icon != null) {
                msgs = ((InternalEObject)this.icon).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newIcon != null) {
                msgs = ((InternalEObject)newIcon).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetIcon(newIcon, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newIcon, (Object)newIcon));
        }
    }

    @Override
    public ActionsType1 getActions() {
        return this.actions;
    }

    public NotificationChain basicSetActions(ActionsType1 newActions, NotificationChain msgs) {
        ActionsType1 oldActions = this.actions;
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
    public void setActions(ActionsType1 newActions) {
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
    public boolean isHistory() {
        return this.history;
    }

    @Override
    public void setHistory(boolean newHistory) {
        boolean oldHistory = this.history;
        this.history = newHistory;
        boolean oldHistoryESet = this.historyESet;
        this.historyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, oldHistory, this.history, !oldHistoryESet));
        }
    }

    @Override
    public void unsetHistory() {
        boolean oldHistory = this.history;
        boolean oldHistoryESet = this.historyESet;
        this.history = false;
        this.historyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, oldHistory, false, oldHistoryESet));
        }
    }

    @Override
    public boolean isSetHistory() {
        return this.historyESet;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public void setName(String newName) {
        String oldName = this.name;
        this.name = newName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldName, (Object)this.name));
        }
    }

    @Override
    public boolean isStartState() {
        return this.startState;
    }

    @Override
    public void setStartState(boolean newStartState) {
        boolean oldStartState = this.startState;
        this.startState = newStartState;
        boolean oldStartStateESet = this.startStateESet;
        this.startStateESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, oldStartState, this.startState, !oldStartStateESet));
        }
    }

    @Override
    public void unsetStartState() {
        boolean oldStartState = this.startState;
        boolean oldStartStateESet = this.startStateESet;
        this.startState = false;
        this.startStateESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, oldStartState, false, oldStartStateESet));
        }
    }

    @Override
    public boolean isSetStartState() {
        return this.startStateESet;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSize(null, msgs);
            }
            case 5: {
                return this.basicSetPosition(null, msgs);
            }
            case 6: {
                return this.basicSetInterfaces(null, msgs);
            }
            case 7: {
                return this.basicSetIcon(null, msgs);
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
                return this.getSize();
            }
            case 5: {
                return this.getPosition();
            }
            case 6: {
                return this.getInterfaces();
            }
            case 7: {
                return this.getIcon();
            }
            case 8: {
                return this.getActions();
            }
            case 9: {
                return this.isHistory();
            }
            case 10: {
                return this.getName();
            }
            case 11: {
                return this.isStartState();
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
                this.setPosition((PointT)newValue);
                return;
            }
            case 6: {
                this.setInterfaces((ConnectorInterfaceType)newValue);
                return;
            }
            case 7: {
                this.setIcon((IconT)newValue);
                return;
            }
            case 8: {
                this.setActions((ActionsType1)newValue);
                return;
            }
            case 9: {
                this.setHistory((Boolean)newValue);
                return;
            }
            case 10: {
                this.setName((String)newValue);
                return;
            }
            case 11: {
                this.setStartState((Boolean)newValue);
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
                this.setPosition(null);
                return;
            }
            case 6: {
                this.setInterfaces(null);
                return;
            }
            case 7: {
                this.setIcon(null);
                return;
            }
            case 8: {
                this.setActions(null);
                return;
            }
            case 9: {
                this.unsetHistory();
                return;
            }
            case 10: {
                this.setName(NAME_EDEFAULT);
                return;
            }
            case 11: {
                this.unsetStartState();
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
                return this.position != null;
            }
            case 6: {
                return this.interfaces != null;
            }
            case 7: {
                return this.icon != null;
            }
            case 8: {
                return this.actions != null;
            }
            case 9: {
                return this.isSetHistory();
            }
            case 10: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
            case 11: {
                return this.isSetStartState();
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
        result.append(" (history: ");
        if (this.historyESet) {
            result.append(this.history);
        } else {
            result.append("<unset>");
        }
        result.append(", name: ");
        result.append(this.name);
        result.append(", startState: ");
        if (this.startStateESet) {
            result.append(this.startState);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

