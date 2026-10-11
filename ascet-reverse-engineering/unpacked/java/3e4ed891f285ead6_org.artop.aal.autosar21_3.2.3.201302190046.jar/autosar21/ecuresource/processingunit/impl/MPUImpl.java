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
package autosar21.ecuresource.processingunit.impl;

import autosar21.ecuresource.memory.MemoryMappedHWPort;
import autosar21.ecuresource.processingunit.InterruptProduceHWPort;
import autosar21.ecuresource.processingunit.MPU;
import autosar21.ecuresource.processingunit.ProcessingUnit;
import autosar21.ecuresource.processingunit.ProcessingunitPackage;
import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
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
public class MPUImpl
extends ARObjectImpl
implements MPU,
IReferringClass {
    protected static final Integer CHANNEL_COUNT_EDEFAULT = new Integer(0);
    protected Integer channelCount = CHANNEL_COUNT_EDEFAULT;
    protected boolean channelCountESet;
    protected EList<MemoryMappedHWPort> protectedMemoryHWPorts;
    protected EList<InterruptProduceHWPort> raisedInterrupts;

    protected MPUImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ProcessingunitPackage.Literals.MPU;
    }

    @Override
    public ProcessingUnit getProcessingUnit() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ProcessingUnit)this.eContainer();
    }

    public NotificationChain basicSetProcessingUnit(ProcessingUnit newProcessingUnit, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newProcessingUnit, 4, msgs);
        return msgs;
    }

    @Override
    public void setProcessingUnit(ProcessingUnit newProcessingUnit) {
        if (newProcessingUnit != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newProcessingUnit != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newProcessingUnit)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newProcessingUnit != null) {
                msgs = ((InternalEObject)newProcessingUnit).eInverseAdd((InternalEObject)this, 33, ProcessingUnit.class, msgs);
            }
            if ((msgs = this.basicSetProcessingUnit(newProcessingUnit, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newProcessingUnit, (Object)newProcessingUnit));
        }
    }

    @Override
    public Integer getChannelCount() {
        return this.channelCount;
    }

    @Override
    public void setChannelCount(Integer newChannelCount) {
        Integer oldChannelCount = this.channelCount;
        this.channelCount = newChannelCount;
        boolean oldChannelCountESet = this.channelCountESet;
        this.channelCountESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldChannelCount, (Object)this.channelCount, !oldChannelCountESet));
        }
    }

    @Override
    public void unsetChannelCount() {
        Integer oldChannelCount = this.channelCount;
        boolean oldChannelCountESet = this.channelCountESet;
        this.channelCount = CHANNEL_COUNT_EDEFAULT;
        this.channelCountESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldChannelCount, (Object)CHANNEL_COUNT_EDEFAULT, oldChannelCountESet));
        }
    }

    @Override
    public boolean isSetChannelCount() {
        return this.channelCountESet;
    }

    @Override
    public EList<MemoryMappedHWPort> getProtectedMemoryHWPorts() {
        if (this.protectedMemoryHWPorts == null) {
            this.protectedMemoryHWPorts = new EObjectResolvingReferringEList(MemoryMappedHWPort.class, (InternalEObject)this, 6);
        }
        return this.protectedMemoryHWPorts;
    }

    @Override
    public EList<InterruptProduceHWPort> getRaisedInterrupts() {
        if (this.raisedInterrupts == null) {
            this.raisedInterrupts = new EObjectContainmentWithInverseEList(InterruptProduceHWPort.class, (InternalEObject)this, 7, 19);
        }
        return this.raisedInterrupts;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetProcessingUnit((ProcessingUnit)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getRaisedInterrupts()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetProcessingUnit(null, msgs);
            }
            case 7: {
                return ((InternalEList)this.getRaisedInterrupts()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 33, ProcessingUnit.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getProcessingUnit();
            }
            case 5: {
                return this.getChannelCount();
            }
            case 6: {
                return this.getProtectedMemoryHWPorts();
            }
            case 7: {
                return this.getRaisedInterrupts();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setProcessingUnit((ProcessingUnit)newValue);
                return;
            }
            case 5: {
                this.setChannelCount((Integer)newValue);
                return;
            }
            case 6: {
                this.getProtectedMemoryHWPorts().clear();
                this.getProtectedMemoryHWPorts().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.getRaisedInterrupts().clear();
                this.getRaisedInterrupts().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setProcessingUnit(null);
                return;
            }
            case 5: {
                this.unsetChannelCount();
                return;
            }
            case 6: {
                this.getProtectedMemoryHWPorts().clear();
                return;
            }
            case 7: {
                this.getRaisedInterrupts().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getProcessingUnit() != null;
            }
            case 5: {
                return this.isSetChannelCount();
            }
            case 6: {
                return this.protectedMemoryHWPorts != null && !this.protectedMemoryHWPorts.isEmpty();
            }
            case 7: {
                return this.raisedInterrupts != null && !this.raisedInterrupts.isEmpty();
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
        result.append(" (channelCount: ");
        if (this.channelCountESet) {
            result.append(this.channelCount);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

