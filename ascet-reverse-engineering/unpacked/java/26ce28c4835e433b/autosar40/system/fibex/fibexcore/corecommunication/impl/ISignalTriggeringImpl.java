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
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.ISignal;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalGroup;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalPort;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalTriggering;
import autosar40.system.fibex.fibexcore.coretopology.PhysicalChannel;
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
    protected ISignalGroup iSignalGroup;
    protected EList<ISignalPort> iSignalPorts;
    protected ISignal iSignal;
    protected VariationPoint variationPoint;

    protected ISignalTriggeringImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.ISIGNAL_TRIGGERING;
    }

    @Override
    public PhysicalChannel getPhysicalChannel() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (PhysicalChannel)this.eContainer();
    }

    public NotificationChain basicSetPhysicalChannel(PhysicalChannel newPhysicalChannel, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPhysicalChannel, 18, msgs);
        return msgs;
    }

    @Override
    public void setPhysicalChannel(PhysicalChannel newPhysicalChannel) {
        if (newPhysicalChannel != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newPhysicalChannel != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPhysicalChannel)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPhysicalChannel != null) {
                msgs = ((InternalEObject)newPhysicalChannel).eInverseAdd((InternalEObject)this, 21, PhysicalChannel.class, msgs);
            }
            if ((msgs = this.basicSetPhysicalChannel(newPhysicalChannel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newPhysicalChannel, (Object)newPhysicalChannel));
        }
    }

    @Override
    public ISignalGroup getISignalGroup() {
        if (this.iSignalGroup != null && this.iSignalGroup.eIsProxy()) {
            InternalEObject oldISignalGroup = (InternalEObject)this.iSignalGroup;
            this.iSignalGroup = (ISignalGroup)this.eResolveProxy(oldISignalGroup);
            if (this.iSignalGroup != oldISignalGroup && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldISignalGroup, (Object)this.iSignalGroup));
            }
        }
        return this.iSignalGroup;
    }

    public ISignalGroup basicGetISignalGroup() {
        return this.iSignalGroup;
    }

    @Override
    public void setISignalGroup(ISignalGroup newISignalGroup) {
        ISignalGroup oldISignalGroup = this.iSignalGroup;
        this.iSignalGroup = newISignalGroup;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldISignalGroup, (Object)this.iSignalGroup));
        }
    }

    @Override
    public EList<ISignalPort> getISignalPorts() {
        if (this.iSignalPorts == null) {
            this.iSignalPorts = new EObjectResolvingReferringEList(ISignalPort.class, (InternalEObject)this, 20);
        }
        return this.iSignalPorts;
    }

    @Override
    public ISignal getISignal() {
        if (this.iSignal != null && this.iSignal.eIsProxy()) {
            InternalEObject oldISignal = (InternalEObject)this.iSignal;
            this.iSignal = (ISignal)this.eResolveProxy(oldISignal);
            if (this.iSignal != oldISignal && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldISignal, (Object)this.iSignal));
            }
        }
        return this.iSignal;
    }

    public ISignal basicGetISignal() {
        return this.iSignal;
    }

    @Override
    public void setISignal(ISignal newISignal) {
        ISignal oldISignal = this.iSignal;
        this.iSignal = newISignal;
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldISignal, (Object)this.iSignal));
        }
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -23, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -23, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
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
            case 18: {
                return this.basicSetPhysicalChannel(null, msgs);
            }
            case 22: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, PhysicalChannel.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getPhysicalChannel();
            }
            case 19: {
                if (resolve) {
                    return this.getISignalGroup();
                }
                return this.basicGetISignalGroup();
            }
            case 20: {
                return this.getISignalPorts();
            }
            case 21: {
                if (resolve) {
                    return this.getISignal();
                }
                return this.basicGetISignal();
            }
            case 22: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setPhysicalChannel((PhysicalChannel)newValue);
                return;
            }
            case 19: {
                this.setISignalGroup((ISignalGroup)newValue);
                return;
            }
            case 20: {
                this.getISignalPorts().clear();
                this.getISignalPorts().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.setISignal((ISignal)newValue);
                return;
            }
            case 22: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setPhysicalChannel(null);
                return;
            }
            case 19: {
                this.setISignalGroup(null);
                return;
            }
            case 20: {
                this.getISignalPorts().clear();
                return;
            }
            case 21: {
                this.setISignal(null);
                return;
            }
            case 22: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getPhysicalChannel() != null;
            }
            case 19: {
                return this.iSignalGroup != null;
            }
            case 20: {
                return this.iSignalPorts != null && !this.iSignalPorts.isEmpty();
            }
            case 21: {
                return this.iSignal != null;
            }
            case 22: {
                return this.variationPoint != null;
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

