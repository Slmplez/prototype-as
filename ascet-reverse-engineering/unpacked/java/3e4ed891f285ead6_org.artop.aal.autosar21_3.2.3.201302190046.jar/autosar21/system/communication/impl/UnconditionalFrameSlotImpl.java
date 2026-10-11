/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.system.communication.impl;

import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.LinFrame;
import autosar21.system.communication.UnconditionalFrameSlot;
import autosar21.system.communication.impl.LinSchedulingTableEntryImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class UnconditionalFrameSlotImpl
extends LinSchedulingTableEntryImpl
implements UnconditionalFrameSlot,
IReferringClass {
    protected LinFrame unconditionalFrame;

    protected UnconditionalFrameSlotImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.UNCONDITIONAL_FRAME_SLOT;
    }

    public LinFrame getUnconditionalFrame() {
        if (this.unconditionalFrame != null && this.unconditionalFrame.eIsProxy()) {
            InternalEObject oldUnconditionalFrame = (InternalEObject)this.unconditionalFrame;
            this.unconditionalFrame = (LinFrame)this.eResolveProxy(oldUnconditionalFrame);
            if (this.unconditionalFrame != oldUnconditionalFrame && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldUnconditionalFrame, (Object)this.unconditionalFrame));
            }
        }
        return this.unconditionalFrame;
    }

    public LinFrame basicGetUnconditionalFrame() {
        return this.unconditionalFrame;
    }

    public void setUnconditionalFrame(LinFrame newUnconditionalFrame) {
        LinFrame oldUnconditionalFrame = this.unconditionalFrame;
        this.unconditionalFrame = newUnconditionalFrame;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldUnconditionalFrame, (Object)this.unconditionalFrame));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                if (resolve) {
                    return this.getUnconditionalFrame();
                }
                return this.basicGetUnconditionalFrame();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setUnconditionalFrame((LinFrame)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.setUnconditionalFrame(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.unconditionalFrame != null;
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
}

