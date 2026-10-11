/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.system.fibex.fibex4lin.lincommunication.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.fibex.fibex4lin.lincommunication.AssignFrameIdRange;
import autosar40.system.fibex.fibex4lin.lincommunication.FramePid;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class FramePidImpl
extends ARObjectImpl
implements FramePid {
    protected static final IntegerDatatype INDEX_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype index = INDEX_EDEFAULT.clone();
    protected boolean indexESet;
    protected static final PositiveIntegerDatatype PID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype pid = PID_EDEFAULT.clone();
    protected boolean pidESet;

    protected FramePidImpl() {
    }

    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.FRAME_PID;
    }

    public AssignFrameIdRange getAssignFrameIdRange() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (AssignFrameIdRange)this.eContainer();
    }

    public NotificationChain basicSetAssignFrameIdRange(AssignFrameIdRange newAssignFrameIdRange, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newAssignFrameIdRange, 4, msgs);
        return msgs;
    }

    public void setAssignFrameIdRange(AssignFrameIdRange newAssignFrameIdRange) {
        if (newAssignFrameIdRange != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newAssignFrameIdRange != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newAssignFrameIdRange)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newAssignFrameIdRange != null) {
                msgs = ((InternalEObject)newAssignFrameIdRange).eInverseAdd((InternalEObject)this, 9, AssignFrameIdRange.class, msgs);
            }
            if ((msgs = this.basicSetAssignFrameIdRange(newAssignFrameIdRange, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newAssignFrameIdRange, (Object)newAssignFrameIdRange));
        }
    }

    public Integer getIndex() {
        return (Integer)this.index.basicGetValue();
    }

    public void setIndex(Integer newIndex) {
        Integer oldIndex = (Integer)this.index.basicGetValue();
        this.index.basicSetValue((Object)newIndex);
        boolean oldIndexESet = this.indexESet;
        this.indexESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldIndex, (Object)newIndex, !oldIndexESet));
        }
    }

    public void unsetIndex() {
        Integer oldIndex = (Integer)this.index.basicGetValue();
        boolean oldIndexESet = this.indexESet;
        this.index = INDEX_EDEFAULT.clone();
        this.indexESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldIndex, (Object)INDEX_EDEFAULT, oldIndexESet));
        }
    }

    public boolean isSetIndex() {
        return this.indexESet;
    }

    public Long getPid() {
        return (Long)this.pid.basicGetValue();
    }

    public void setPid(Long newPid) {
        Long oldPid = (Long)this.pid.basicGetValue();
        this.pid.basicSetValue((Object)newPid);
        boolean oldPidESet = this.pidESet;
        this.pidESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldPid, (Object)newPid, !oldPidESet));
        }
    }

    public void unsetPid() {
        Long oldPid = (Long)this.pid.basicGetValue();
        boolean oldPidESet = this.pidESet;
        this.pid = PID_EDEFAULT.clone();
        this.pidESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldPid, (Object)PID_EDEFAULT, oldPidESet));
        }
    }

    public boolean isSetPid() {
        return this.pidESet;
    }

    public IntegerDatatype getIndexData() {
        return this.index.clone();
    }

    public void setIndexData(IntegerDatatype newIndex) {
        this.index.setRadix((int)newIndex.getRadix());
        this.index.setNoOfDigits((int)newIndex.getNoOfDigits());
        this.setIndex(newIndex.getValue());
    }

    public PositiveIntegerDatatype getPidData() {
        return this.pid.clone();
    }

    public void setPidData(PositiveIntegerDatatype newPid) {
        this.pid.setRadix((int)newPid.getRadix());
        this.pid.setNoOfDigits((int)newPid.getNoOfDigits());
        this.setPid(newPid.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetAssignFrameIdRange((AssignFrameIdRange)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetAssignFrameIdRange(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 9, AssignFrameIdRange.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getAssignFrameIdRange();
            }
            case 5: {
                return this.getIndex();
            }
            case 6: {
                return this.getPid();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setAssignFrameIdRange((AssignFrameIdRange)newValue);
                return;
            }
            case 5: {
                this.setIndex((Integer)newValue);
                return;
            }
            case 6: {
                this.setPid((Long)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setAssignFrameIdRange(null);
                return;
            }
            case 5: {
                this.unsetIndex();
                return;
            }
            case 6: {
                this.unsetPid();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getAssignFrameIdRange() != null;
            }
            case 5: {
                return this.isSetIndex();
            }
            case 6: {
                return this.isSetPid();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (index: ");
        if (this.indexESet) {
            result.append(this.index);
        } else {
            result.append("<unset>");
        }
        result.append(", pid: ");
        if (this.pidESet) {
            result.append(this.pid);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

