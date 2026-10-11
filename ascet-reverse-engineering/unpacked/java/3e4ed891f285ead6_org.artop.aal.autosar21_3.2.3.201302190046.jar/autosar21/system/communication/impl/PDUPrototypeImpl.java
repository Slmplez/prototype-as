/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.system.communication.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.Frame;
import autosar21.system.communication.PDUPrototype;
import autosar21.system.pdustructure.PDUType;
import autosar21.system.systemsignal.ClusterSignal;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PDUPrototypeImpl
extends IdentifiableImpl
implements PDUPrototype,
IReferringClass {
    protected EList<ClusterSignal> includedClusterSignals;
    protected PDUType pduType;
    protected static final Integer START_POSITION_EDEFAULT = new Integer(0);
    protected Integer startPosition = START_POSITION_EDEFAULT;
    protected boolean startPositionESet;
    protected static final Integer UPDATE_INDICATION_BIT_POSITION_EDEFAULT = new Integer(0);
    protected Integer updateIndicationBitPosition = UPDATE_INDICATION_BIT_POSITION_EDEFAULT;
    protected boolean updateIndicationBitPositionESet;

    protected PDUPrototypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.PDU_PROTOTYPE;
    }

    @Override
    public Frame getFrame() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (Frame)this.eContainer();
    }

    public NotificationChain basicSetFrame(Frame newFrame, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newFrame, 16, msgs);
        return msgs;
    }

    @Override
    public void setFrame(Frame newFrame) {
        if (newFrame != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newFrame != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newFrame)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newFrame != null) {
                msgs = ((InternalEObject)newFrame).eInverseAdd((InternalEObject)this, 21, Frame.class, msgs);
            }
            if ((msgs = this.basicSetFrame(newFrame, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newFrame, (Object)newFrame));
        }
    }

    @Override
    public EList<ClusterSignal> getIncludedClusterSignals() {
        if (this.includedClusterSignals == null) {
            this.includedClusterSignals = new EObjectContainmentWithInverseEList(ClusterSignal.class, (InternalEObject)this, 17, 16);
        }
        return this.includedClusterSignals;
    }

    @Override
    public PDUType getPduType() {
        if (this.pduType != null && this.pduType.eIsProxy()) {
            InternalEObject oldPduType = (InternalEObject)this.pduType;
            this.pduType = (PDUType)this.eResolveProxy(oldPduType);
            if (this.pduType != oldPduType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 18, (Object)oldPduType, (Object)this.pduType));
            }
        }
        return this.pduType;
    }

    public PDUType basicGetPduType() {
        return this.pduType;
    }

    @Override
    public void setPduType(PDUType newPduType) {
        PDUType oldPduType = this.pduType;
        this.pduType = newPduType;
        AutosarObjectUtil.setDest((EObject)this, (int)18, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldPduType, (Object)this.pduType));
        }
    }

    @Override
    public Integer getStartPosition() {
        return this.startPosition;
    }

    @Override
    public void setStartPosition(Integer newStartPosition) {
        Integer oldStartPosition = this.startPosition;
        this.startPosition = newStartPosition;
        boolean oldStartPositionESet = this.startPositionESet;
        this.startPositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldStartPosition, (Object)this.startPosition, !oldStartPositionESet));
        }
    }

    @Override
    public void unsetStartPosition() {
        Integer oldStartPosition = this.startPosition;
        boolean oldStartPositionESet = this.startPositionESet;
        this.startPosition = START_POSITION_EDEFAULT;
        this.startPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldStartPosition, (Object)START_POSITION_EDEFAULT, oldStartPositionESet));
        }
    }

    @Override
    public boolean isSetStartPosition() {
        return this.startPositionESet;
    }

    @Override
    public Integer getUpdateIndicationBitPosition() {
        return this.updateIndicationBitPosition;
    }

    @Override
    public void setUpdateIndicationBitPosition(Integer newUpdateIndicationBitPosition) {
        Integer oldUpdateIndicationBitPosition = this.updateIndicationBitPosition;
        this.updateIndicationBitPosition = newUpdateIndicationBitPosition;
        boolean oldUpdateIndicationBitPositionESet = this.updateIndicationBitPositionESet;
        this.updateIndicationBitPositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldUpdateIndicationBitPosition, (Object)this.updateIndicationBitPosition, !oldUpdateIndicationBitPositionESet));
        }
    }

    @Override
    public void unsetUpdateIndicationBitPosition() {
        Integer oldUpdateIndicationBitPosition = this.updateIndicationBitPosition;
        boolean oldUpdateIndicationBitPositionESet = this.updateIndicationBitPositionESet;
        this.updateIndicationBitPosition = UPDATE_INDICATION_BIT_POSITION_EDEFAULT;
        this.updateIndicationBitPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldUpdateIndicationBitPosition, (Object)UPDATE_INDICATION_BIT_POSITION_EDEFAULT, oldUpdateIndicationBitPositionESet));
        }
    }

    @Override
    public boolean isSetUpdateIndicationBitPosition() {
        return this.updateIndicationBitPositionESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetFrame((Frame)otherEnd, msgs);
            }
            case 17: {
                return ((InternalEList)this.getIncludedClusterSignals()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetFrame(null, msgs);
            }
            case 17: {
                return ((InternalEList)this.getIncludedClusterSignals()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, Frame.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getFrame();
            }
            case 17: {
                return this.getIncludedClusterSignals();
            }
            case 18: {
                if (resolve) {
                    return this.getPduType();
                }
                return this.basicGetPduType();
            }
            case 19: {
                return this.getStartPosition();
            }
            case 20: {
                return this.getUpdateIndicationBitPosition();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setFrame((Frame)newValue);
                return;
            }
            case 17: {
                this.getIncludedClusterSignals().clear();
                this.getIncludedClusterSignals().addAll((Collection)newValue);
                return;
            }
            case 18: {
                this.setPduType((PDUType)newValue);
                return;
            }
            case 19: {
                this.setStartPosition((Integer)newValue);
                return;
            }
            case 20: {
                this.setUpdateIndicationBitPosition((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setFrame(null);
                return;
            }
            case 17: {
                this.getIncludedClusterSignals().clear();
                return;
            }
            case 18: {
                this.setPduType(null);
                return;
            }
            case 19: {
                this.unsetStartPosition();
                return;
            }
            case 20: {
                this.unsetUpdateIndicationBitPosition();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getFrame() != null;
            }
            case 17: {
                return this.includedClusterSignals != null && !this.includedClusterSignals.isEmpty();
            }
            case 18: {
                return this.pduType != null;
            }
            case 19: {
                return this.isSetStartPosition();
            }
            case 20: {
                return this.isSetUpdateIndicationBitPosition();
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
        result.append(" (startPosition: ");
        if (this.startPositionESet) {
            result.append(this.startPosition);
        } else {
            result.append("<unset>");
        }
        result.append(", UpdateIndicationBitPosition: ");
        if (this.updateIndicationBitPositionESet) {
            result.append(this.updateIndicationBitPosition);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

