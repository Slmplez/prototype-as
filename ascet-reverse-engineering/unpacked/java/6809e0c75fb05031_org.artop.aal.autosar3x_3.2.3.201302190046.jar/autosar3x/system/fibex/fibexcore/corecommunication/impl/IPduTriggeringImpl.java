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
import autosar3x.system.fibex.fibexcore.corecommunication.IPduPort;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduTriggering;
import autosar3x.system.fibex.fibexcore.corecommunication.ISignalTriggering;
import autosar3x.system.fibex.fibexcore.corecommunication.Pdu;
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
public class IPduTriggeringImpl
extends IdentifiableImpl
implements IPduTriggering,
IReferringClass {
    protected EList<IPduPort> iPduPorts;
    protected Pdu iPdu;
    protected EList<ISignalTriggering> iSignalTriggerings;
    protected IPduTiming timingRequirement;

    protected IPduTriggeringImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.IPDU_TRIGGERING;
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
                msgs = ((InternalEObject)newPhysicalChannel).eInverseAdd((InternalEObject)this, 19, PhysicalChannel.class, msgs);
            }
            if ((msgs = this.basicSetPhysicalChannel(newPhysicalChannel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newPhysicalChannel, (Object)newPhysicalChannel));
        }
    }

    @Override
    public EList<IPduPort> getIPduPorts() {
        if (this.iPduPorts == null) {
            this.iPduPorts = new EObjectResolvingReferringEList(IPduPort.class, (InternalEObject)this, 18);
        }
        return this.iPduPorts;
    }

    @Override
    public Pdu getIPdu() {
        if (this.iPdu != null && this.iPdu.eIsProxy()) {
            InternalEObject oldIPdu = (InternalEObject)this.iPdu;
            this.iPdu = (Pdu)this.eResolveProxy(oldIPdu);
            if (this.iPdu != oldIPdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldIPdu, (Object)this.iPdu));
            }
        }
        return this.iPdu;
    }

    public Pdu basicGetIPdu() {
        return this.iPdu;
    }

    @Override
    public void setIPdu(Pdu newIPdu) {
        Pdu oldIPdu = this.iPdu;
        this.iPdu = newIPdu;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldIPdu, (Object)this.iPdu));
        }
    }

    @Override
    public EList<ISignalTriggering> getISignalTriggerings() {
        if (this.iSignalTriggerings == null) {
            this.iSignalTriggerings = new EObjectResolvingReferringEList(ISignalTriggering.class, (InternalEObject)this, 20);
        }
        return this.iSignalTriggerings;
    }

    @Override
    public IPduTiming getTimingRequirement() {
        return this.timingRequirement;
    }

    public NotificationChain basicSetTimingRequirement(IPduTiming newTimingRequirement, NotificationChain msgs) {
        IPduTiming oldTimingRequirement = this.timingRequirement;
        this.timingRequirement = newTimingRequirement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldTimingRequirement, (Object)newTimingRequirement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTimingRequirement(IPduTiming newTimingRequirement) {
        if (newTimingRequirement != this.timingRequirement) {
            NotificationChain msgs = null;
            if (this.timingRequirement != null) {
                msgs = ((InternalEObject)this.timingRequirement).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newTimingRequirement != null) {
                msgs = ((InternalEObject)newTimingRequirement).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetTimingRequirement(newTimingRequirement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newTimingRequirement, (Object)newTimingRequirement));
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
            case 21: {
                return this.basicSetTimingRequirement(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, PhysicalChannel.class, msgs);
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
                return this.getIPduPorts();
            }
            case 19: {
                if (resolve) {
                    return this.getIPdu();
                }
                return this.basicGetIPdu();
            }
            case 20: {
                return this.getISignalTriggerings();
            }
            case 21: {
                return this.getTimingRequirement();
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
                this.getIPduPorts().clear();
                this.getIPduPorts().addAll((Collection)newValue);
                return;
            }
            case 19: {
                this.setIPdu((Pdu)newValue);
                return;
            }
            case 20: {
                this.getISignalTriggerings().clear();
                this.getISignalTriggerings().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.setTimingRequirement((IPduTiming)newValue);
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
                this.getIPduPorts().clear();
                return;
            }
            case 19: {
                this.setIPdu(null);
                return;
            }
            case 20: {
                this.getISignalTriggerings().clear();
                return;
            }
            case 21: {
                this.setTimingRequirement(null);
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
                return this.iPduPorts != null && !this.iPduPorts.isEmpty();
            }
            case 19: {
                return this.iPdu != null;
            }
            case 20: {
                return this.iSignalTriggerings != null && !this.iSignalTriggerings.isEmpty();
            }
            case 21: {
                return this.timingRequirement != null;
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

