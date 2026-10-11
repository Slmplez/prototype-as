/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.system.communication.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.LinSchedulingTable;
import autosar21.system.communication.LinSchedulingTableEntry;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class LinSchedulingTableEntryImpl
extends ARObjectImpl
implements LinSchedulingTableEntry {
    protected static final Double DELAY_TO_NEXT_FRAME_EDEFAULT = new Double(0.0);
    protected Double delayToNextFrame = DELAY_TO_NEXT_FRAME_EDEFAULT;
    protected boolean delayToNextFrameESet;

    protected LinSchedulingTableEntryImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.LIN_SCHEDULING_TABLE_ENTRY;
    }

    public LinSchedulingTable getLinSchedulingTable() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (LinSchedulingTable)this.eContainer();
    }

    public NotificationChain basicSetLinSchedulingTable(LinSchedulingTable newLinSchedulingTable, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newLinSchedulingTable, 4, msgs);
        return msgs;
    }

    public void setLinSchedulingTable(LinSchedulingTable newLinSchedulingTable) {
        if (newLinSchedulingTable != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newLinSchedulingTable != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newLinSchedulingTable)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newLinSchedulingTable != null) {
                msgs = ((InternalEObject)newLinSchedulingTable).eInverseAdd((InternalEObject)this, 17, LinSchedulingTable.class, msgs);
            }
            if ((msgs = this.basicSetLinSchedulingTable(newLinSchedulingTable, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newLinSchedulingTable, (Object)newLinSchedulingTable));
        }
    }

    public Double getDelayToNextFrame() {
        return this.delayToNextFrame;
    }

    public void setDelayToNextFrame(Double newDelayToNextFrame) {
        Double oldDelayToNextFrame = this.delayToNextFrame;
        this.delayToNextFrame = newDelayToNextFrame;
        boolean oldDelayToNextFrameESet = this.delayToNextFrameESet;
        this.delayToNextFrameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldDelayToNextFrame, (Object)this.delayToNextFrame, !oldDelayToNextFrameESet));
        }
    }

    public void unsetDelayToNextFrame() {
        Double oldDelayToNextFrame = this.delayToNextFrame;
        boolean oldDelayToNextFrameESet = this.delayToNextFrameESet;
        this.delayToNextFrame = DELAY_TO_NEXT_FRAME_EDEFAULT;
        this.delayToNextFrameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldDelayToNextFrame, (Object)DELAY_TO_NEXT_FRAME_EDEFAULT, oldDelayToNextFrameESet));
        }
    }

    public boolean isSetDelayToNextFrame() {
        return this.delayToNextFrameESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetLinSchedulingTable((LinSchedulingTable)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetLinSchedulingTable(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 17, LinSchedulingTable.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getLinSchedulingTable();
            }
            case 5: {
                return this.getDelayToNextFrame();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setLinSchedulingTable((LinSchedulingTable)newValue);
                return;
            }
            case 5: {
                this.setDelayToNextFrame((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setLinSchedulingTable(null);
                return;
            }
            case 5: {
                this.unsetDelayToNextFrame();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getLinSchedulingTable() != null;
            }
            case 5: {
                return this.isSetDelayToNextFrame();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (delayToNextFrame: ");
        if (this.delayToNextFrameESet) {
            result.append(this.delayToNextFrame);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

