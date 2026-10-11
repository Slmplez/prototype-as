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
package autosar3x.system.transportprotocols.impl;

import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayPhysicalChannel;
import autosar3x.system.fibex.fibexcore.corecommunication.NPdu;
import autosar3x.system.transportprotocols.FlexrayIsoTpPduPool;
import autosar3x.system.transportprotocols.TransportprotocolsPackage;
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
public class FlexrayIsoTpPduPoolImpl
extends IdentifiableImpl
implements FlexrayIsoTpPduPool,
IReferringClass {
    protected EList<NPdu> nPdus;

    protected FlexrayIsoTpPduPoolImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.FLEXRAY_ISO_TP_PDU_POOL;
    }

    @Override
    public FlexrayPhysicalChannel getFlexrayPhysicalChannel() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (FlexrayPhysicalChannel)this.eContainer();
    }

    public NotificationChain basicSetFlexrayPhysicalChannel(FlexrayPhysicalChannel newFlexrayPhysicalChannel, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newFlexrayPhysicalChannel, 17, msgs);
        return msgs;
    }

    @Override
    public void setFlexrayPhysicalChannel(FlexrayPhysicalChannel newFlexrayPhysicalChannel) {
        if (newFlexrayPhysicalChannel != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newFlexrayPhysicalChannel != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newFlexrayPhysicalChannel)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newFlexrayPhysicalChannel != null) {
                msgs = ((InternalEObject)newFlexrayPhysicalChannel).eInverseAdd((InternalEObject)this, 25, FlexrayPhysicalChannel.class, msgs);
            }
            if ((msgs = this.basicSetFlexrayPhysicalChannel(newFlexrayPhysicalChannel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newFlexrayPhysicalChannel, (Object)newFlexrayPhysicalChannel));
        }
    }

    @Override
    public EList<NPdu> getNPdus() {
        if (this.nPdus == null) {
            this.nPdus = new EObjectResolvingReferringEList(NPdu.class, (InternalEObject)this, 18);
        }
        return this.nPdus;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetFlexrayPhysicalChannel((FlexrayPhysicalChannel)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetFlexrayPhysicalChannel(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 25, FlexrayPhysicalChannel.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getFlexrayPhysicalChannel();
            }
            case 18: {
                return this.getNPdus();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setFlexrayPhysicalChannel((FlexrayPhysicalChannel)newValue);
                return;
            }
            case 18: {
                this.getNPdus().clear();
                this.getNPdus().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setFlexrayPhysicalChannel(null);
                return;
            }
            case 18: {
                this.getNPdus().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.getFlexrayPhysicalChannel() != null;
            }
            case 18: {
                return this.nPdus != null && !this.nPdus.isEmpty();
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

