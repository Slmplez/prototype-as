/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
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
package autosar3x.system.fibex.fibex4flexray.flexraytopology.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationController;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoConfiguration;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoRange;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayPhysicalChannel;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
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
public class FlexrayFifoConfigurationImpl
extends ARObjectImpl
implements FlexrayFifoConfiguration,
IReferringClass {
    protected static final Boolean ADMIT_WITHOUT_MESSAGE_ID_EDEFAULT = Boolean.FALSE;
    protected Boolean admitWithoutMessageId = ADMIT_WITHOUT_MESSAGE_ID_EDEFAULT;
    protected boolean admitWithoutMessageIdESet;
    protected static final Integer BASE_CYCLE_EDEFAULT = new Integer(0);
    protected Integer baseCycle = BASE_CYCLE_EDEFAULT;
    protected boolean baseCycleESet;
    protected EList<FlexrayPhysicalChannel> channels;
    protected static final Integer CYCLE_REPETITION_EDEFAULT = new Integer(0);
    protected Integer cycleRepetition = CYCLE_REPETITION_EDEFAULT;
    protected boolean cycleRepetitionESet;
    protected static final Integer FIFO_DEPTH_EDEFAULT = new Integer(0);
    protected Integer fifoDepth = FIFO_DEPTH_EDEFAULT;
    protected boolean fifoDepthESet;
    protected EList<FlexrayFifoRange> fifoRanges;
    protected static final Integer MSG_ID_MASK_EDEFAULT = new Integer(0);
    protected Integer msgIdMask = MSG_ID_MASK_EDEFAULT;
    protected boolean msgIdMaskESet;
    protected static final Integer MSG_ID_MATCH_EDEFAULT = new Integer(0);
    protected Integer msgIdMatch = MSG_ID_MATCH_EDEFAULT;
    protected boolean msgIdMatchESet;

    protected FlexrayFifoConfigurationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return FlexraytopologyPackage.Literals.FLEXRAY_FIFO_CONFIGURATION;
    }

    @Override
    public FlexrayCommunicationController getFlexrayCommunicationController() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (FlexrayCommunicationController)this.eContainer();
    }

    public NotificationChain basicSetFlexrayCommunicationController(FlexrayCommunicationController newFlexrayCommunicationController, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newFlexrayCommunicationController, 4, msgs);
        return msgs;
    }

    @Override
    public void setFlexrayCommunicationController(FlexrayCommunicationController newFlexrayCommunicationController) {
        if (newFlexrayCommunicationController != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newFlexrayCommunicationController != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newFlexrayCommunicationController)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newFlexrayCommunicationController != null) {
                msgs = ((InternalEObject)newFlexrayCommunicationController).eInverseAdd((InternalEObject)this, 31, FlexrayCommunicationController.class, msgs);
            }
            if ((msgs = this.basicSetFlexrayCommunicationController(newFlexrayCommunicationController, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newFlexrayCommunicationController, (Object)newFlexrayCommunicationController));
        }
    }

    @Override
    public Boolean getAdmitWithoutMessageId() {
        return this.admitWithoutMessageId;
    }

    @Override
    public void setAdmitWithoutMessageId(Boolean newAdmitWithoutMessageId) {
        Boolean oldAdmitWithoutMessageId = this.admitWithoutMessageId;
        this.admitWithoutMessageId = newAdmitWithoutMessageId;
        boolean oldAdmitWithoutMessageIdESet = this.admitWithoutMessageIdESet;
        this.admitWithoutMessageIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldAdmitWithoutMessageId, (Object)this.admitWithoutMessageId, !oldAdmitWithoutMessageIdESet));
        }
    }

    @Override
    public void unsetAdmitWithoutMessageId() {
        Boolean oldAdmitWithoutMessageId = this.admitWithoutMessageId;
        boolean oldAdmitWithoutMessageIdESet = this.admitWithoutMessageIdESet;
        this.admitWithoutMessageId = ADMIT_WITHOUT_MESSAGE_ID_EDEFAULT;
        this.admitWithoutMessageIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldAdmitWithoutMessageId, (Object)ADMIT_WITHOUT_MESSAGE_ID_EDEFAULT, oldAdmitWithoutMessageIdESet));
        }
    }

    @Override
    public boolean isSetAdmitWithoutMessageId() {
        return this.admitWithoutMessageIdESet;
    }

    @Override
    public Integer getBaseCycle() {
        return this.baseCycle;
    }

    @Override
    public void setBaseCycle(Integer newBaseCycle) {
        Integer oldBaseCycle = this.baseCycle;
        this.baseCycle = newBaseCycle;
        boolean oldBaseCycleESet = this.baseCycleESet;
        this.baseCycleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldBaseCycle, (Object)this.baseCycle, !oldBaseCycleESet));
        }
    }

    @Override
    public void unsetBaseCycle() {
        Integer oldBaseCycle = this.baseCycle;
        boolean oldBaseCycleESet = this.baseCycleESet;
        this.baseCycle = BASE_CYCLE_EDEFAULT;
        this.baseCycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldBaseCycle, (Object)BASE_CYCLE_EDEFAULT, oldBaseCycleESet));
        }
    }

    @Override
    public boolean isSetBaseCycle() {
        return this.baseCycleESet;
    }

    @Override
    public EList<FlexrayPhysicalChannel> getChannels() {
        if (this.channels == null) {
            this.channels = new EObjectResolvingReferringEList(FlexrayPhysicalChannel.class, (InternalEObject)this, 7);
        }
        return this.channels;
    }

    @Override
    public Integer getCycleRepetition() {
        return this.cycleRepetition;
    }

    @Override
    public void setCycleRepetition(Integer newCycleRepetition) {
        Integer oldCycleRepetition = this.cycleRepetition;
        this.cycleRepetition = newCycleRepetition;
        boolean oldCycleRepetitionESet = this.cycleRepetitionESet;
        this.cycleRepetitionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldCycleRepetition, (Object)this.cycleRepetition, !oldCycleRepetitionESet));
        }
    }

    @Override
    public void unsetCycleRepetition() {
        Integer oldCycleRepetition = this.cycleRepetition;
        boolean oldCycleRepetitionESet = this.cycleRepetitionESet;
        this.cycleRepetition = CYCLE_REPETITION_EDEFAULT;
        this.cycleRepetitionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldCycleRepetition, (Object)CYCLE_REPETITION_EDEFAULT, oldCycleRepetitionESet));
        }
    }

    @Override
    public boolean isSetCycleRepetition() {
        return this.cycleRepetitionESet;
    }

    @Override
    public Integer getFifoDepth() {
        return this.fifoDepth;
    }

    @Override
    public void setFifoDepth(Integer newFifoDepth) {
        Integer oldFifoDepth = this.fifoDepth;
        this.fifoDepth = newFifoDepth;
        boolean oldFifoDepthESet = this.fifoDepthESet;
        this.fifoDepthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldFifoDepth, (Object)this.fifoDepth, !oldFifoDepthESet));
        }
    }

    @Override
    public void unsetFifoDepth() {
        Integer oldFifoDepth = this.fifoDepth;
        boolean oldFifoDepthESet = this.fifoDepthESet;
        this.fifoDepth = FIFO_DEPTH_EDEFAULT;
        this.fifoDepthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldFifoDepth, (Object)FIFO_DEPTH_EDEFAULT, oldFifoDepthESet));
        }
    }

    @Override
    public boolean isSetFifoDepth() {
        return this.fifoDepthESet;
    }

    @Override
    public EList<FlexrayFifoRange> getFifoRanges() {
        if (this.fifoRanges == null) {
            this.fifoRanges = new EObjectContainmentWithInverseEList(FlexrayFifoRange.class, (InternalEObject)this, 10, 4);
        }
        return this.fifoRanges;
    }

    @Override
    public Integer getMsgIdMask() {
        return this.msgIdMask;
    }

    @Override
    public void setMsgIdMask(Integer newMsgIdMask) {
        Integer oldMsgIdMask = this.msgIdMask;
        this.msgIdMask = newMsgIdMask;
        boolean oldMsgIdMaskESet = this.msgIdMaskESet;
        this.msgIdMaskESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldMsgIdMask, (Object)this.msgIdMask, !oldMsgIdMaskESet));
        }
    }

    @Override
    public void unsetMsgIdMask() {
        Integer oldMsgIdMask = this.msgIdMask;
        boolean oldMsgIdMaskESet = this.msgIdMaskESet;
        this.msgIdMask = MSG_ID_MASK_EDEFAULT;
        this.msgIdMaskESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldMsgIdMask, (Object)MSG_ID_MASK_EDEFAULT, oldMsgIdMaskESet));
        }
    }

    @Override
    public boolean isSetMsgIdMask() {
        return this.msgIdMaskESet;
    }

    @Override
    public Integer getMsgIdMatch() {
        return this.msgIdMatch;
    }

    @Override
    public void setMsgIdMatch(Integer newMsgIdMatch) {
        Integer oldMsgIdMatch = this.msgIdMatch;
        this.msgIdMatch = newMsgIdMatch;
        boolean oldMsgIdMatchESet = this.msgIdMatchESet;
        this.msgIdMatchESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldMsgIdMatch, (Object)this.msgIdMatch, !oldMsgIdMatchESet));
        }
    }

    @Override
    public void unsetMsgIdMatch() {
        Integer oldMsgIdMatch = this.msgIdMatch;
        boolean oldMsgIdMatchESet = this.msgIdMatchESet;
        this.msgIdMatch = MSG_ID_MATCH_EDEFAULT;
        this.msgIdMatchESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldMsgIdMatch, (Object)MSG_ID_MATCH_EDEFAULT, oldMsgIdMatchESet));
        }
    }

    @Override
    public boolean isSetMsgIdMatch() {
        return this.msgIdMatchESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetFlexrayCommunicationController((FlexrayCommunicationController)otherEnd, msgs);
            }
            case 10: {
                return ((InternalEList)this.getFifoRanges()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetFlexrayCommunicationController(null, msgs);
            }
            case 10: {
                return ((InternalEList)this.getFifoRanges()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 31, FlexrayCommunicationController.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getFlexrayCommunicationController();
            }
            case 5: {
                return this.getAdmitWithoutMessageId();
            }
            case 6: {
                return this.getBaseCycle();
            }
            case 7: {
                return this.getChannels();
            }
            case 8: {
                return this.getCycleRepetition();
            }
            case 9: {
                return this.getFifoDepth();
            }
            case 10: {
                return this.getFifoRanges();
            }
            case 11: {
                return this.getMsgIdMask();
            }
            case 12: {
                return this.getMsgIdMatch();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setFlexrayCommunicationController((FlexrayCommunicationController)newValue);
                return;
            }
            case 5: {
                this.setAdmitWithoutMessageId((Boolean)newValue);
                return;
            }
            case 6: {
                this.setBaseCycle((Integer)newValue);
                return;
            }
            case 7: {
                this.getChannels().clear();
                this.getChannels().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.setCycleRepetition((Integer)newValue);
                return;
            }
            case 9: {
                this.setFifoDepth((Integer)newValue);
                return;
            }
            case 10: {
                this.getFifoRanges().clear();
                this.getFifoRanges().addAll((Collection)newValue);
                return;
            }
            case 11: {
                this.setMsgIdMask((Integer)newValue);
                return;
            }
            case 12: {
                this.setMsgIdMatch((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setFlexrayCommunicationController(null);
                return;
            }
            case 5: {
                this.unsetAdmitWithoutMessageId();
                return;
            }
            case 6: {
                this.unsetBaseCycle();
                return;
            }
            case 7: {
                this.getChannels().clear();
                return;
            }
            case 8: {
                this.unsetCycleRepetition();
                return;
            }
            case 9: {
                this.unsetFifoDepth();
                return;
            }
            case 10: {
                this.getFifoRanges().clear();
                return;
            }
            case 11: {
                this.unsetMsgIdMask();
                return;
            }
            case 12: {
                this.unsetMsgIdMatch();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getFlexrayCommunicationController() != null;
            }
            case 5: {
                return this.isSetAdmitWithoutMessageId();
            }
            case 6: {
                return this.isSetBaseCycle();
            }
            case 7: {
                return this.channels != null && !this.channels.isEmpty();
            }
            case 8: {
                return this.isSetCycleRepetition();
            }
            case 9: {
                return this.isSetFifoDepth();
            }
            case 10: {
                return this.fifoRanges != null && !this.fifoRanges.isEmpty();
            }
            case 11: {
                return this.isSetMsgIdMask();
            }
            case 12: {
                return this.isSetMsgIdMatch();
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
        result.append(" (admitWithoutMessageId: ");
        if (this.admitWithoutMessageIdESet) {
            result.append(this.admitWithoutMessageId);
        } else {
            result.append("<unset>");
        }
        result.append(", baseCycle: ");
        if (this.baseCycleESet) {
            result.append(this.baseCycle);
        } else {
            result.append("<unset>");
        }
        result.append(", cycleRepetition: ");
        if (this.cycleRepetitionESet) {
            result.append(this.cycleRepetition);
        } else {
            result.append("<unset>");
        }
        result.append(", fifoDepth: ");
        if (this.fifoDepthESet) {
            result.append(this.fifoDepth);
        } else {
            result.append("<unset>");
        }
        result.append(", msgIdMask: ");
        if (this.msgIdMaskESet) {
            result.append(this.msgIdMask);
        } else {
            result.append("<unset>");
        }
        result.append(", msgIdMatch: ");
        if (this.msgIdMatchESet) {
            result.append(this.msgIdMatch);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

