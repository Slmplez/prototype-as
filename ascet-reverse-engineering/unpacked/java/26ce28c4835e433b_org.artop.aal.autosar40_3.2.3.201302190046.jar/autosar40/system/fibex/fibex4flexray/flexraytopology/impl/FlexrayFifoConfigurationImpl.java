/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
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
package autosar40.system.fibex.fibex4flexray.flexraytopology.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationControllerContent;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoConfiguration;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoRange;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayPhysicalChannel;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import java.util.Collection;
import org.artop.aal.common.datatypes.IntegerDatatype;
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
public class FlexrayFifoConfigurationImpl
extends ARObjectImpl
implements FlexrayFifoConfiguration,
IReferringClass {
    protected static final Boolean ADMIT_WITHOUT_MESSAGE_ID_EDEFAULT = Boolean.FALSE;
    protected Boolean admitWithoutMessageId = ADMIT_WITHOUT_MESSAGE_ID_EDEFAULT;
    protected boolean admitWithoutMessageIdESet;
    protected static final IntegerDatatype BASE_CYCLE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype baseCycle = BASE_CYCLE_EDEFAULT.clone();
    protected boolean baseCycleESet;
    protected FlexrayPhysicalChannel channel;
    protected static final IntegerDatatype CYCLE_REPETITION_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype cycleRepetition = CYCLE_REPETITION_EDEFAULT.clone();
    protected boolean cycleRepetitionESet;
    protected static final IntegerDatatype FIFO_DEPTH_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype fifoDepth = FIFO_DEPTH_EDEFAULT.clone();
    protected boolean fifoDepthESet;
    protected EList<FlexrayFifoRange> fifoRanges;
    protected static final IntegerDatatype MSG_ID_MASK_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype msgIdMask = MSG_ID_MASK_EDEFAULT.clone();
    protected boolean msgIdMaskESet;
    protected static final IntegerDatatype MSG_ID_MATCH_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype msgIdMatch = MSG_ID_MATCH_EDEFAULT.clone();
    protected boolean msgIdMatchESet;

    protected FlexrayFifoConfigurationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return FlexraytopologyPackage.Literals.FLEXRAY_FIFO_CONFIGURATION;
    }

    @Override
    public FlexrayCommunicationControllerContent getFlexrayCommunicationControllerContent() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (FlexrayCommunicationControllerContent)this.eContainer();
    }

    public NotificationChain basicSetFlexrayCommunicationControllerContent(FlexrayCommunicationControllerContent newFlexrayCommunicationControllerContent, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newFlexrayCommunicationControllerContent, 4, msgs);
        return msgs;
    }

    @Override
    public void setFlexrayCommunicationControllerContent(FlexrayCommunicationControllerContent newFlexrayCommunicationControllerContent) {
        if (newFlexrayCommunicationControllerContent != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newFlexrayCommunicationControllerContent != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newFlexrayCommunicationControllerContent)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newFlexrayCommunicationControllerContent != null) {
                msgs = ((InternalEObject)newFlexrayCommunicationControllerContent).eInverseAdd((InternalEObject)this, 15, FlexrayCommunicationControllerContent.class, msgs);
            }
            if ((msgs = this.basicSetFlexrayCommunicationControllerContent(newFlexrayCommunicationControllerContent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newFlexrayCommunicationControllerContent, (Object)newFlexrayCommunicationControllerContent));
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
        return (Integer)this.baseCycle.basicGetValue();
    }

    @Override
    public void setBaseCycle(Integer newBaseCycle) {
        Integer oldBaseCycle = (Integer)this.baseCycle.basicGetValue();
        this.baseCycle.basicSetValue((Object)newBaseCycle);
        boolean oldBaseCycleESet = this.baseCycleESet;
        this.baseCycleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldBaseCycle, (Object)newBaseCycle, !oldBaseCycleESet));
        }
    }

    @Override
    public void unsetBaseCycle() {
        Integer oldBaseCycle = (Integer)this.baseCycle.basicGetValue();
        boolean oldBaseCycleESet = this.baseCycleESet;
        this.baseCycle = BASE_CYCLE_EDEFAULT.clone();
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
    public FlexrayPhysicalChannel getChannel() {
        if (this.channel != null && this.channel.eIsProxy()) {
            InternalEObject oldChannel = (InternalEObject)this.channel;
            this.channel = (FlexrayPhysicalChannel)this.eResolveProxy(oldChannel);
            if (this.channel != oldChannel && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldChannel, (Object)this.channel));
            }
        }
        return this.channel;
    }

    public FlexrayPhysicalChannel basicGetChannel() {
        return this.channel;
    }

    @Override
    public void setChannel(FlexrayPhysicalChannel newChannel) {
        FlexrayPhysicalChannel oldChannel = this.channel;
        this.channel = newChannel;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldChannel, (Object)this.channel));
        }
    }

    @Override
    public Integer getCycleRepetition() {
        return (Integer)this.cycleRepetition.basicGetValue();
    }

    @Override
    public void setCycleRepetition(Integer newCycleRepetition) {
        Integer oldCycleRepetition = (Integer)this.cycleRepetition.basicGetValue();
        this.cycleRepetition.basicSetValue((Object)newCycleRepetition);
        boolean oldCycleRepetitionESet = this.cycleRepetitionESet;
        this.cycleRepetitionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldCycleRepetition, (Object)newCycleRepetition, !oldCycleRepetitionESet));
        }
    }

    @Override
    public void unsetCycleRepetition() {
        Integer oldCycleRepetition = (Integer)this.cycleRepetition.basicGetValue();
        boolean oldCycleRepetitionESet = this.cycleRepetitionESet;
        this.cycleRepetition = CYCLE_REPETITION_EDEFAULT.clone();
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
        return (Integer)this.fifoDepth.basicGetValue();
    }

    @Override
    public void setFifoDepth(Integer newFifoDepth) {
        Integer oldFifoDepth = (Integer)this.fifoDepth.basicGetValue();
        this.fifoDepth.basicSetValue((Object)newFifoDepth);
        boolean oldFifoDepthESet = this.fifoDepthESet;
        this.fifoDepthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldFifoDepth, (Object)newFifoDepth, !oldFifoDepthESet));
        }
    }

    @Override
    public void unsetFifoDepth() {
        Integer oldFifoDepth = (Integer)this.fifoDepth.basicGetValue();
        boolean oldFifoDepthESet = this.fifoDepthESet;
        this.fifoDepth = FIFO_DEPTH_EDEFAULT.clone();
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
        return (Integer)this.msgIdMask.basicGetValue();
    }

    @Override
    public void setMsgIdMask(Integer newMsgIdMask) {
        Integer oldMsgIdMask = (Integer)this.msgIdMask.basicGetValue();
        this.msgIdMask.basicSetValue((Object)newMsgIdMask);
        boolean oldMsgIdMaskESet = this.msgIdMaskESet;
        this.msgIdMaskESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldMsgIdMask, (Object)newMsgIdMask, !oldMsgIdMaskESet));
        }
    }

    @Override
    public void unsetMsgIdMask() {
        Integer oldMsgIdMask = (Integer)this.msgIdMask.basicGetValue();
        boolean oldMsgIdMaskESet = this.msgIdMaskESet;
        this.msgIdMask = MSG_ID_MASK_EDEFAULT.clone();
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
        return (Integer)this.msgIdMatch.basicGetValue();
    }

    @Override
    public void setMsgIdMatch(Integer newMsgIdMatch) {
        Integer oldMsgIdMatch = (Integer)this.msgIdMatch.basicGetValue();
        this.msgIdMatch.basicSetValue((Object)newMsgIdMatch);
        boolean oldMsgIdMatchESet = this.msgIdMatchESet;
        this.msgIdMatchESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldMsgIdMatch, (Object)newMsgIdMatch, !oldMsgIdMatchESet));
        }
    }

    @Override
    public void unsetMsgIdMatch() {
        Integer oldMsgIdMatch = (Integer)this.msgIdMatch.basicGetValue();
        boolean oldMsgIdMatchESet = this.msgIdMatchESet;
        this.msgIdMatch = MSG_ID_MATCH_EDEFAULT.clone();
        this.msgIdMatchESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldMsgIdMatch, (Object)MSG_ID_MATCH_EDEFAULT, oldMsgIdMatchESet));
        }
    }

    @Override
    public boolean isSetMsgIdMatch() {
        return this.msgIdMatchESet;
    }

    @Override
    public IntegerDatatype getBaseCycleData() {
        return this.baseCycle.clone();
    }

    @Override
    public void setBaseCycleData(IntegerDatatype newBaseCycle) {
        this.baseCycle.setRadix((int)newBaseCycle.getRadix());
        this.baseCycle.setNoOfDigits((int)newBaseCycle.getNoOfDigits());
        this.setBaseCycle(newBaseCycle.getValue());
    }

    @Override
    public IntegerDatatype getCycleRepetitionData() {
        return this.cycleRepetition.clone();
    }

    @Override
    public void setCycleRepetitionData(IntegerDatatype newCycleRepetition) {
        this.cycleRepetition.setRadix((int)newCycleRepetition.getRadix());
        this.cycleRepetition.setNoOfDigits((int)newCycleRepetition.getNoOfDigits());
        this.setCycleRepetition(newCycleRepetition.getValue());
    }

    @Override
    public IntegerDatatype getFifoDepthData() {
        return this.fifoDepth.clone();
    }

    @Override
    public void setFifoDepthData(IntegerDatatype newFifoDepth) {
        this.fifoDepth.setRadix((int)newFifoDepth.getRadix());
        this.fifoDepth.setNoOfDigits((int)newFifoDepth.getNoOfDigits());
        this.setFifoDepth(newFifoDepth.getValue());
    }

    @Override
    public IntegerDatatype getMsgIdMaskData() {
        return this.msgIdMask.clone();
    }

    @Override
    public void setMsgIdMaskData(IntegerDatatype newMsgIdMask) {
        this.msgIdMask.setRadix((int)newMsgIdMask.getRadix());
        this.msgIdMask.setNoOfDigits((int)newMsgIdMask.getNoOfDigits());
        this.setMsgIdMask(newMsgIdMask.getValue());
    }

    @Override
    public IntegerDatatype getMsgIdMatchData() {
        return this.msgIdMatch.clone();
    }

    @Override
    public void setMsgIdMatchData(IntegerDatatype newMsgIdMatch) {
        this.msgIdMatch.setRadix((int)newMsgIdMatch.getRadix());
        this.msgIdMatch.setNoOfDigits((int)newMsgIdMatch.getNoOfDigits());
        this.setMsgIdMatch(newMsgIdMatch.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetFlexrayCommunicationControllerContent((FlexrayCommunicationControllerContent)otherEnd, msgs);
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
                return this.basicSetFlexrayCommunicationControllerContent(null, msgs);
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
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 15, FlexrayCommunicationControllerContent.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getFlexrayCommunicationControllerContent();
            }
            case 5: {
                return this.getAdmitWithoutMessageId();
            }
            case 6: {
                return this.getBaseCycle();
            }
            case 7: {
                if (resolve) {
                    return this.getChannel();
                }
                return this.basicGetChannel();
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
                this.setFlexrayCommunicationControllerContent((FlexrayCommunicationControllerContent)newValue);
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
                this.setChannel((FlexrayPhysicalChannel)newValue);
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
                this.setFlexrayCommunicationControllerContent(null);
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
                this.setChannel(null);
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
                return this.getFlexrayCommunicationControllerContent() != null;
            }
            case 5: {
                return this.isSetAdmitWithoutMessageId();
            }
            case 6: {
                return this.isSetBaseCycle();
            }
            case 7: {
                return this.channel != null;
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

