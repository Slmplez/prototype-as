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
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.system.fibex.fibexcore.corecommunication.impl;

import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.ISignal;
import autosar3x.system.fibex.fibexcore.corecommunication.ISignalTriggering;
import autosar3x.system.fibex.fibexcore.corecommunication.SignalPort;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.CyclicTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.EventControlledTiming;
import autosar3x.system.fibex.fibexcore.coretopology.PhysicalChannel;
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
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ISignalTriggeringImpl
extends IdentifiableImpl
implements ISignalTriggering,
IReferringClass {
    protected CyclicTiming cyclicTiming;
    protected EventControlledTiming eventControlledTiming;
    protected EList<SignalPort> iSignalPorts;
    protected ISignal signal;

    protected ISignalTriggeringImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.ISIGNAL_TRIGGERING;
    }

    @Override
    public PhysicalChannel getPhysicalChannel() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (PhysicalChannel)this.eContainer();
    }

    public NotificationChain basicSetPhysicalChannel(PhysicalChannel newPhysicalChannel, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPhysicalChannel, 17, msgs);
        return msgs;
    }

    @Override
    public void setPhysicalChannel(PhysicalChannel newPhysicalChannel) {
        if (newPhysicalChannel != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newPhysicalChannel != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPhysicalChannel)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPhysicalChannel != null) {
                msgs = ((InternalEObject)newPhysicalChannel).eInverseAdd((InternalEObject)this, 20, PhysicalChannel.class, msgs);
            }
            if ((msgs = this.basicSetPhysicalChannel(newPhysicalChannel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newPhysicalChannel, (Object)newPhysicalChannel));
        }
    }

    @Override
    public CyclicTiming getCyclicTiming() {
        return this.cyclicTiming;
    }

    public NotificationChain basicSetCyclicTiming(CyclicTiming newCyclicTiming, NotificationChain msgs) {
        CyclicTiming oldCyclicTiming = this.cyclicTiming;
        this.cyclicTiming = newCyclicTiming;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldCyclicTiming, (Object)newCyclicTiming);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCyclicTiming(CyclicTiming newCyclicTiming) {
        if (newCyclicTiming != this.cyclicTiming) {
            NotificationChain msgs = null;
            if (this.cyclicTiming != null) {
                msgs = ((InternalEObject)this.cyclicTiming).eInverseRemove((InternalEObject)this, -19, null, msgs);
            }
            if (newCyclicTiming != null) {
                msgs = ((InternalEObject)newCyclicTiming).eInverseAdd((InternalEObject)this, -19, null, msgs);
            }
            if ((msgs = this.basicSetCyclicTiming(newCyclicTiming, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newCyclicTiming, (Object)newCyclicTiming));
        }
    }

    @Override
    public EventControlledTiming getEventControlledTiming() {
        return this.eventControlledTiming;
    }

    public NotificationChain basicSetEventControlledTiming(EventControlledTiming newEventControlledTiming, NotificationChain msgs) {
        EventControlledTiming oldEventControlledTiming = this.eventControlledTiming;
        this.eventControlledTiming = newEventControlledTiming;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldEventControlledTiming, (Object)newEventControlledTiming);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setEventControlledTiming(EventControlledTiming newEventControlledTiming) {
        if (newEventControlledTiming != this.eventControlledTiming) {
            NotificationChain msgs = null;
            if (this.eventControlledTiming != null) {
                msgs = ((InternalEObject)this.eventControlledTiming).eInverseRemove((InternalEObject)this, -20, null, msgs);
            }
            if (newEventControlledTiming != null) {
                msgs = ((InternalEObject)newEventControlledTiming).eInverseAdd((InternalEObject)this, -20, null, msgs);
            }
            if ((msgs = this.basicSetEventControlledTiming(newEventControlledTiming, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newEventControlledTiming, (Object)newEventControlledTiming));
        }
    }

    @Override
    public EList<SignalPort> getISignalPorts() {
        if (this.iSignalPorts == null) {
            this.iSignalPorts = new EObjectResolvingReferringEList(SignalPort.class, (InternalEObject)this, 20);
        }
        return this.iSignalPorts;
    }

    @Override
    public ISignal getSignal() {
        if (this.signal != null && this.signal.eIsProxy()) {
            InternalEObject oldSignal = (InternalEObject)this.signal;
            this.signal = (ISignal)this.eResolveProxy(oldSignal);
            if (this.signal != oldSignal && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldSignal, (Object)this.signal));
            }
        }
        return this.signal;
    }

    public ISignal basicGetSignal() {
        return this.signal;
    }

    @Override
    public void setSignal(ISignal newSignal) {
        ISignal oldSignal = this.signal;
        this.signal = newSignal;
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldSignal, (Object)this.signal));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPhysicalChannel((PhysicalChannel)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetPhysicalChannel(null, msgs);
            }
            case 18: {
                return this.basicSetCyclicTiming(null, msgs);
            }
            case 19: {
                return this.basicSetEventControlledTiming(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, PhysicalChannel.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getPhysicalChannel();
            }
            case 18: {
                return this.getCyclicTiming();
            }
            case 19: {
                return this.getEventControlledTiming();
            }
            case 20: {
                return this.getISignalPorts();
            }
            case 21: {
                if (resolve) {
                    return this.getSignal();
                }
                return this.basicGetSignal();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setPhysicalChannel((PhysicalChannel)newValue);
                return;
            }
            case 18: {
                this.setCyclicTiming((CyclicTiming)newValue);
                return;
            }
            case 19: {
                this.setEventControlledTiming((EventControlledTiming)newValue);
                return;
            }
            case 20: {
                this.getISignalPorts().clear();
                this.getISignalPorts().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.setSignal((ISignal)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setPhysicalChannel(null);
                return;
            }
            case 18: {
                this.setCyclicTiming(null);
                return;
            }
            case 19: {
                this.setEventControlledTiming(null);
                return;
            }
            case 20: {
                this.getISignalPorts().clear();
                return;
            }
            case 21: {
                this.setSignal(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.getPhysicalChannel() != null;
            }
            case 18: {
                return this.cyclicTiming != null;
            }
            case 19: {
                return this.eventControlledTiming != null;
            }
            case 20: {
                return this.iSignalPorts != null && !this.iSignalPorts.isEmpty();
            }
            case 21: {
                return this.signal != null;
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

