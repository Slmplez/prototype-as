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
 */
package autosar3x.swcomponent.communication.impl;

import autosar3x.swcomponent.communication.CommunicationPackage;
import autosar3x.swcomponent.communication.ModeSwitchComSpec;
import autosar3x.swcomponent.communication.ModeSwitchedAckRequest;
import autosar3x.swcomponent.communication.impl.PPortComSpecImpl;
import autosar3x.swcomponent.portinterface.ModeDeclarationGroupPrototype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ModeSwitchComSpecImpl
extends PPortComSpecImpl
implements ModeSwitchComSpec,
IReferringClass {
    protected ModeDeclarationGroupPrototype modeGroup;
    protected ModeSwitchedAckRequest modeSwitchedAck;
    protected static final Integer QUEUE_LENGTH_EDEFAULT = new Integer(0);
    protected Integer queueLength = QUEUE_LENGTH_EDEFAULT;
    protected boolean queueLengthESet;

    protected ModeSwitchComSpecImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.MODE_SWITCH_COM_SPEC;
    }

    public ModeDeclarationGroupPrototype getModeGroup() {
        if (this.modeGroup != null && this.modeGroup.eIsProxy()) {
            InternalEObject oldModeGroup = (InternalEObject)this.modeGroup;
            this.modeGroup = (ModeDeclarationGroupPrototype)this.eResolveProxy(oldModeGroup);
            if (this.modeGroup != oldModeGroup && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldModeGroup, (Object)this.modeGroup));
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
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldModeGroup, (Object)this.modeGroup));
        }
    }

    public ModeSwitchedAckRequest getModeSwitchedAck() {
        return this.modeSwitchedAck;
    }

    public NotificationChain basicSetModeSwitchedAck(ModeSwitchedAckRequest newModeSwitchedAck, NotificationChain msgs) {
        ModeSwitchedAckRequest oldModeSwitchedAck = this.modeSwitchedAck;
        this.modeSwitchedAck = newModeSwitchedAck;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldModeSwitchedAck, (Object)newModeSwitchedAck);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setModeSwitchedAck(ModeSwitchedAckRequest newModeSwitchedAck) {
        if (newModeSwitchedAck != this.modeSwitchedAck) {
            NotificationChain msgs = null;
            if (this.modeSwitchedAck != null) {
                msgs = ((InternalEObject)this.modeSwitchedAck).eInverseRemove((InternalEObject)this, 4, ModeSwitchedAckRequest.class, msgs);
            }
            if (newModeSwitchedAck != null) {
                msgs = ((InternalEObject)newModeSwitchedAck).eInverseAdd((InternalEObject)this, 4, ModeSwitchedAckRequest.class, msgs);
            }
            if ((msgs = this.basicSetModeSwitchedAck(newModeSwitchedAck, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newModeSwitchedAck, (Object)newModeSwitchedAck));
        }
    }

    public Integer getQueueLength() {
        return this.queueLength;
    }

    public void setQueueLength(Integer newQueueLength) {
        Integer oldQueueLength = this.queueLength;
        this.queueLength = newQueueLength;
        boolean oldQueueLengthESet = this.queueLengthESet;
        this.queueLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldQueueLength, (Object)this.queueLength, !oldQueueLengthESet));
        }
    }

    public void unsetQueueLength() {
        Integer oldQueueLength = this.queueLength;
        boolean oldQueueLengthESet = this.queueLengthESet;
        this.queueLength = QUEUE_LENGTH_EDEFAULT;
        this.queueLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldQueueLength, (Object)QUEUE_LENGTH_EDEFAULT, oldQueueLengthESet));
        }
    }

    public boolean isSetQueueLength() {
        return this.queueLengthESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                if (this.modeSwitchedAck != null) {
                    msgs = ((InternalEObject)this.modeSwitchedAck).eInverseRemove((InternalEObject)this, -7, null, msgs);
                }
                return this.basicSetModeSwitchedAck((ModeSwitchedAckRequest)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetModeSwitchedAck(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                if (resolve) {
                    return this.getModeGroup();
                }
                return this.basicGetModeGroup();
            }
            case 6: {
                return this.getModeSwitchedAck();
            }
            case 7: {
                return this.getQueueLength();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setModeGroup((ModeDeclarationGroupPrototype)newValue);
                return;
            }
            case 6: {
                this.setModeSwitchedAck((ModeSwitchedAckRequest)newValue);
                return;
            }
            case 7: {
                this.setQueueLength((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setModeGroup(null);
                return;
            }
            case 6: {
                this.setModeSwitchedAck(null);
                return;
            }
            case 7: {
                this.unsetQueueLength();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.modeGroup != null;
            }
            case 6: {
                return this.modeSwitchedAck != null;
            }
            case 7: {
                return this.isSetQueueLength();
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
        result.append(" (queueLength: ");
        if (this.queueLengthESet) {
            result.append(this.queueLength);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

