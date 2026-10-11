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
package autosar40.bswmodule.bswbehavior.impl;

import autosar40.bswmodule.bswbehavior.BswModeSwitchedAckEvent;
import autosar40.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar40.bswmodule.bswbehavior.impl.BswEventImpl;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class BswModeSwitchedAckEventImpl
extends BswEventImpl
implements BswModeSwitchedAckEvent,
IReferringClass {
    protected ModeDeclarationGroupPrototype modeGroup;

    protected BswModeSwitchedAckEventImpl() {
    }

    protected EClass eStaticClass() {
        return BswbehaviorPackage.Literals.BSW_MODE_SWITCHED_ACK_EVENT;
    }

    public ModeDeclarationGroupPrototype getModeGroup() {
        if (this.modeGroup != null && this.modeGroup.eIsProxy()) {
            InternalEObject oldModeGroup = (InternalEObject)this.modeGroup;
            this.modeGroup = (ModeDeclarationGroupPrototype)this.eResolveProxy(oldModeGroup);
            if (this.modeGroup != oldModeGroup && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 22, (Object)oldModeGroup, (Object)this.modeGroup));
            }
        }
        return this.modeGroup;
    }

    public ModeDeclarationGroupPrototype basicGetModeGroup() {
        return this.modeGroup;
    }

    public void setModeGroup(ModeDeclarationGroupPrototype newModeGroup) {
        ModeDeclarationGroupPrototype oldModeGroup = this.modeGroup;
        this.modeGroup = newModeGroup;
        AutosarObjectUtil.setDest((EObject)this, (int)22, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldModeGroup, (Object)this.modeGroup));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                if (resolve) {
                    return this.getModeGroup();
                }
                return this.basicGetModeGroup();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.setModeGroup((ModeDeclarationGroupPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.setModeGroup(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return this.modeGroup != null;
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

