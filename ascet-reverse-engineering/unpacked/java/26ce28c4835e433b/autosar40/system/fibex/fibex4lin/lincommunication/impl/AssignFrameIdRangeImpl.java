/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.fibex.fibex4lin.lincommunication.impl;

import autosar40.system.fibex.fibex4lin.lincommunication.AssignFrameIdRange;
import autosar40.system.fibex.fibex4lin.lincommunication.FramePid;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.LinConfigurationEntryImpl;
import java.util.Collection;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AssignFrameIdRangeImpl
extends LinConfigurationEntryImpl
implements AssignFrameIdRange {
    protected EList<FramePid> framePids;
    protected static final IntegerDatatype START_INDEX_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype startIndex = START_INDEX_EDEFAULT.clone();
    protected boolean startIndexESet;

    protected AssignFrameIdRangeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.ASSIGN_FRAME_ID_RANGE;
    }

    @Override
    public EList<FramePid> getFramePids() {
        if (this.framePids == null) {
            this.framePids = new EObjectContainmentWithInverseEList(FramePid.class, (InternalEObject)this, 9, 4);
        }
        return this.framePids;
    }

    @Override
    public Integer getStartIndex() {
        return (Integer)this.startIndex.basicGetValue();
    }

    @Override
    public void setStartIndex(Integer newStartIndex) {
        Integer oldStartIndex = (Integer)this.startIndex.basicGetValue();
        this.startIndex.basicSetValue((Object)newStartIndex);
        boolean oldStartIndexESet = this.startIndexESet;
        this.startIndexESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldStartIndex, (Object)newStartIndex, !oldStartIndexESet));
        }
    }

    @Override
    public void unsetStartIndex() {
        Integer oldStartIndex = (Integer)this.startIndex.basicGetValue();
        boolean oldStartIndexESet = this.startIndexESet;
        this.startIndex = START_INDEX_EDEFAULT.clone();
        this.startIndexESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldStartIndex, (Object)START_INDEX_EDEFAULT, oldStartIndexESet));
        }
    }

    @Override
    public boolean isSetStartIndex() {
        return this.startIndexESet;
    }

    @Override
    public IntegerDatatype getStartIndexData() {
        return this.startIndex.clone();
    }

    @Override
    public void setStartIndexData(IntegerDatatype newStartIndex) {
        this.startIndex.setRadix((int)newStartIndex.getRadix());
        this.startIndex.setNoOfDigits((int)newStartIndex.getNoOfDigits());
        this.setStartIndex(newStartIndex.getValue());
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 9: {
                return ((InternalEList)this.getFramePids()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 9: {
                return ((InternalEList)this.getFramePids()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 9: {
                return this.getFramePids();
            }
            case 10: {
                return this.getStartIndex();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 9: {
                this.getFramePids().clear();
                this.getFramePids().addAll((Collection)newValue);
                return;
            }
            case 10: {
                this.setStartIndex((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 9: {
                this.getFramePids().clear();
                return;
            }
            case 10: {
                this.unsetStartIndex();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 9: {
                return this.framePids != null && !this.framePids.isEmpty();
            }
            case 10: {
                return this.isSetStartIndex();
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
        result.append(" (startIndex: ");
        if (this.startIndexESet) {
            result.append(this.startIndex);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

