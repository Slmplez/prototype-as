/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.system.communication.impl;

import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.EventTriggeredFrameSlot;
import autosar21.system.communication.LinFrame;
import autosar21.system.communication.impl.LinSchedulingTableEntryImpl;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EventTriggeredFrameSlotImpl
extends LinSchedulingTableEntryImpl
implements EventTriggeredFrameSlot,
IReferringClass {
    protected static final Integer EVENT_TRIGGERED_FRAME_ID_EDEFAULT = new Integer(0);
    protected Integer eventTriggeredFrameID = EVENT_TRIGGERED_FRAME_ID_EDEFAULT;
    protected boolean eventTriggeredFrameIDESet;
    protected EList<LinFrame> unconditionalFrames;

    protected EventTriggeredFrameSlotImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.EVENT_TRIGGERED_FRAME_SLOT;
    }

    @Override
    public Integer getEventTriggeredFrameID() {
        return this.eventTriggeredFrameID;
    }

    @Override
    public void setEventTriggeredFrameID(Integer newEventTriggeredFrameID) {
        Integer oldEventTriggeredFrameID = this.eventTriggeredFrameID;
        this.eventTriggeredFrameID = newEventTriggeredFrameID;
        boolean oldEventTriggeredFrameIDESet = this.eventTriggeredFrameIDESet;
        this.eventTriggeredFrameIDESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldEventTriggeredFrameID, (Object)this.eventTriggeredFrameID, !oldEventTriggeredFrameIDESet));
        }
    }

    @Override
    public void unsetEventTriggeredFrameID() {
        Integer oldEventTriggeredFrameID = this.eventTriggeredFrameID;
        boolean oldEventTriggeredFrameIDESet = this.eventTriggeredFrameIDESet;
        this.eventTriggeredFrameID = EVENT_TRIGGERED_FRAME_ID_EDEFAULT;
        this.eventTriggeredFrameIDESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldEventTriggeredFrameID, (Object)EVENT_TRIGGERED_FRAME_ID_EDEFAULT, oldEventTriggeredFrameIDESet));
        }
    }

    @Override
    public boolean isSetEventTriggeredFrameID() {
        return this.eventTriggeredFrameIDESet;
    }

    @Override
    public EList<LinFrame> getUnconditionalFrames() {
        if (this.unconditionalFrames == null) {
            this.unconditionalFrames = new EObjectResolvingReferringEList(LinFrame.class, (InternalEObject)this, 7);
        }
        return this.unconditionalFrames;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return this.getEventTriggeredFrameID();
            }
            case 7: {
                return this.getUnconditionalFrames();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setEventTriggeredFrameID((Integer)newValue);
                return;
            }
            case 7: {
                this.getUnconditionalFrames().clear();
                this.getUnconditionalFrames().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.unsetEventTriggeredFrameID();
                return;
            }
            case 7: {
                this.getUnconditionalFrames().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.isSetEventTriggeredFrameID();
            }
            case 7: {
                return this.unconditionalFrames != null && !this.unconditionalFrames.isEmpty();
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

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (eventTriggeredFrameID: ");
        if (this.eventTriggeredFrameIDESet) {
            result.append(this.eventTriggeredFrameID);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

