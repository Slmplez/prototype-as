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
package autosar40.system.fibex.fibex4lin.lincommunication.impl;

import autosar40.system.fibex.fibex4lin.lincommunication.LinEventTriggeredFrame;
import autosar40.system.fibex.fibex4lin.lincommunication.LinScheduleTable;
import autosar40.system.fibex.fibex4lin.lincommunication.LinUnconditionalFrame;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.LinFrameImpl;
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
public class LinEventTriggeredFrameImpl
extends LinFrameImpl
implements LinEventTriggeredFrame,
IReferringClass {
    protected LinScheduleTable collisionResolvingSchedule;
    protected EList<LinUnconditionalFrame> linUnconditionalFrames;

    protected LinEventTriggeredFrameImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.LIN_EVENT_TRIGGERED_FRAME;
    }

    @Override
    public LinScheduleTable getCollisionResolvingSchedule() {
        if (this.collisionResolvingSchedule != null && this.collisionResolvingSchedule.eIsProxy()) {
            InternalEObject oldCollisionResolvingSchedule = (InternalEObject)this.collisionResolvingSchedule;
            this.collisionResolvingSchedule = (LinScheduleTable)this.eResolveProxy(oldCollisionResolvingSchedule);
            if (this.collisionResolvingSchedule != oldCollisionResolvingSchedule && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 23, (Object)oldCollisionResolvingSchedule, (Object)this.collisionResolvingSchedule));
            }
        }
        return this.collisionResolvingSchedule;
    }

    public LinScheduleTable basicGetCollisionResolvingSchedule() {
        return this.collisionResolvingSchedule;
    }

    @Override
    public void setCollisionResolvingSchedule(LinScheduleTable newCollisionResolvingSchedule) {
        LinScheduleTable oldCollisionResolvingSchedule = this.collisionResolvingSchedule;
        this.collisionResolvingSchedule = newCollisionResolvingSchedule;
        AutosarObjectUtil.setDest((EObject)this, (int)23, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldCollisionResolvingSchedule, (Object)this.collisionResolvingSchedule));
        }
    }

    @Override
    public EList<LinUnconditionalFrame> getLinUnconditionalFrames() {
        if (this.linUnconditionalFrames == null) {
            this.linUnconditionalFrames = new EObjectResolvingReferringEList(LinUnconditionalFrame.class, (InternalEObject)this, 24);
        }
        return this.linUnconditionalFrames;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 23: {
                if (resolve) {
                    return this.getCollisionResolvingSchedule();
                }
                return this.basicGetCollisionResolvingSchedule();
            }
            case 24: {
                return this.getLinUnconditionalFrames();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 23: {
                this.setCollisionResolvingSchedule((LinScheduleTable)newValue);
                return;
            }
            case 24: {
                this.getLinUnconditionalFrames().clear();
                this.getLinUnconditionalFrames().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 23: {
                this.setCollisionResolvingSchedule(null);
                return;
            }
            case 24: {
                this.getLinUnconditionalFrames().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 23: {
                return this.collisionResolvingSchedule != null;
            }
            case 24: {
                return this.linUnconditionalFrames != null && !this.linUnconditionalFrames.isEmpty();
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

