/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.system.fibex.fibex4lin.lincommunication.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinFrameTriggering;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinScheduleTable;
import autosar3x.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar3x.system.fibex.fibex4lin.lincommunication.RelativelyScheduledTiming;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class RelativelyScheduledTimingImpl
extends ARObjectImpl
implements RelativelyScheduledTiming,
IReferringClass {
    protected static final Double DELAY_EDEFAULT = new Double(0.0);
    protected Double delay = DELAY_EDEFAULT;
    protected boolean delayESet;
    protected static final Integer POSITION_IN_TABLE_EDEFAULT = new Integer(0);
    protected Integer positionInTable = POSITION_IN_TABLE_EDEFAULT;
    protected boolean positionInTableESet;
    protected LinScheduleTable scheduleTable;

    protected RelativelyScheduledTimingImpl() {
    }

    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.RELATIVELY_SCHEDULED_TIMING;
    }

    public LinFrameTriggering getLinFrameTriggering() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (LinFrameTriggering)this.eContainer();
    }

    public NotificationChain basicSetLinFrameTriggering(LinFrameTriggering newLinFrameTriggering, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newLinFrameTriggering, 4, msgs);
        return msgs;
    }

    public void setLinFrameTriggering(LinFrameTriggering newLinFrameTriggering) {
        if (newLinFrameTriggering != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newLinFrameTriggering != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newLinFrameTriggering)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newLinFrameTriggering != null) {
                msgs = ((InternalEObject)newLinFrameTriggering).eInverseAdd((InternalEObject)this, 23, LinFrameTriggering.class, msgs);
            }
            if ((msgs = this.basicSetLinFrameTriggering(newLinFrameTriggering, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newLinFrameTriggering, (Object)newLinFrameTriggering));
        }
    }

    public Double getDelay() {
        return this.delay;
    }

    public void setDelay(Double newDelay) {
        Double oldDelay = this.delay;
        this.delay = newDelay;
        boolean oldDelayESet = this.delayESet;
        this.delayESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldDelay, (Object)this.delay, !oldDelayESet));
        }
    }

    public void unsetDelay() {
        Double oldDelay = this.delay;
        boolean oldDelayESet = this.delayESet;
        this.delay = DELAY_EDEFAULT;
        this.delayESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldDelay, (Object)DELAY_EDEFAULT, oldDelayESet));
        }
    }

    public boolean isSetDelay() {
        return this.delayESet;
    }

    public Integer getPositionInTable() {
        return this.positionInTable;
    }

    public void setPositionInTable(Integer newPositionInTable) {
        Integer oldPositionInTable = this.positionInTable;
        this.positionInTable = newPositionInTable;
        boolean oldPositionInTableESet = this.positionInTableESet;
        this.positionInTableESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldPositionInTable, (Object)this.positionInTable, !oldPositionInTableESet));
        }
    }

    public void unsetPositionInTable() {
        Integer oldPositionInTable = this.positionInTable;
        boolean oldPositionInTableESet = this.positionInTableESet;
        this.positionInTable = POSITION_IN_TABLE_EDEFAULT;
        this.positionInTableESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldPositionInTable, (Object)POSITION_IN_TABLE_EDEFAULT, oldPositionInTableESet));
        }
    }

    public boolean isSetPositionInTable() {
        return this.positionInTableESet;
    }

    public LinScheduleTable getScheduleTable() {
        if (this.scheduleTable != null && this.scheduleTable.eIsProxy()) {
            InternalEObject oldScheduleTable = (InternalEObject)this.scheduleTable;
            this.scheduleTable = (LinScheduleTable)this.eResolveProxy(oldScheduleTable);
            if (this.scheduleTable != oldScheduleTable && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldScheduleTable, (Object)this.scheduleTable));
            }
        }
        return this.scheduleTable;
    }

    public LinScheduleTable basicGetScheduleTable() {
        return this.scheduleTable;
    }

    public void setScheduleTable(LinScheduleTable newScheduleTable) {
        LinScheduleTable oldScheduleTable = this.scheduleTable;
        this.scheduleTable = newScheduleTable;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldScheduleTable, (Object)this.scheduleTable));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetLinFrameTriggering((LinFrameTriggering)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetLinFrameTriggering(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 23, LinFrameTriggering.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getLinFrameTriggering();
            }
            case 5: {
                return this.getDelay();
            }
            case 6: {
                return this.getPositionInTable();
            }
            case 7: {
                if (resolve) {
                    return this.getScheduleTable();
                }
                return this.basicGetScheduleTable();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setLinFrameTriggering((LinFrameTriggering)newValue);
                return;
            }
            case 5: {
                this.setDelay((Double)newValue);
                return;
            }
            case 6: {
                this.setPositionInTable((Integer)newValue);
                return;
            }
            case 7: {
                this.setScheduleTable((LinScheduleTable)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setLinFrameTriggering(null);
                return;
            }
            case 5: {
                this.unsetDelay();
                return;
            }
            case 6: {
                this.unsetPositionInTable();
                return;
            }
            case 7: {
                this.setScheduleTable(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getLinFrameTriggering() != null;
            }
            case 5: {
                return this.isSetDelay();
            }
            case 6: {
                return this.isSetPositionInTable();
            }
            case 7: {
                return this.scheduleTable != null;
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

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (delay: ");
        if (this.delayESet) {
            result.append(this.delay);
        } else {
            result.append("<unset>");
        }
        result.append(", positionInTable: ");
        if (this.positionInTableESet) {
            result.append(this.positionInTable);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

