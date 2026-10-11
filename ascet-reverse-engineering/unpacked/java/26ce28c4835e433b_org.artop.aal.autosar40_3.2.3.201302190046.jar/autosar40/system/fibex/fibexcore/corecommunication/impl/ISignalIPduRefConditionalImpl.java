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
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPduGroup;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPduRefConditional;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ISignalIPduRefConditionalImpl
extends ARObjectImpl
implements ISignalIPduRefConditional,
IReferringClass {
    protected ISignalIPdu iSignalIPdu;
    protected VariationPoint variationPoint;

    protected ISignalIPduRefConditionalImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.ISIGNAL_IPDU_REF_CONDITIONAL;
    }

    public ISignalIPduGroup getISignalIPduGroup() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ISignalIPduGroup)this.eContainer();
    }

    public NotificationChain basicSetISignalIPduGroup(ISignalIPduGroup newISignalIPduGroup, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newISignalIPduGroup, 4, msgs);
        return msgs;
    }

    public void setISignalIPduGroup(ISignalIPduGroup newISignalIPduGroup) {
        if (newISignalIPduGroup != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newISignalIPduGroup != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newISignalIPduGroup)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newISignalIPduGroup != null) {
                msgs = ((InternalEObject)newISignalIPduGroup).eInverseAdd((InternalEObject)this, 24, ISignalIPduGroup.class, msgs);
            }
            if ((msgs = this.basicSetISignalIPduGroup(newISignalIPduGroup, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newISignalIPduGroup, (Object)newISignalIPduGroup));
        }
    }

    public ISignalIPdu getISignalIPdu() {
        if (this.iSignalIPdu != null && this.iSignalIPdu.eIsProxy()) {
            InternalEObject oldISignalIPdu = (InternalEObject)this.iSignalIPdu;
            this.iSignalIPdu = (ISignalIPdu)this.eResolveProxy(oldISignalIPdu);
            if (this.iSignalIPdu != oldISignalIPdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldISignalIPdu, (Object)this.iSignalIPdu));
            }
        }
        return this.iSignalIPdu;
    }

    public ISignalIPdu basicGetISignalIPdu() {
        return this.iSignalIPdu;
    }

    public void setISignalIPdu(ISignalIPdu newISignalIPdu) {
        ISignalIPdu oldISignalIPdu = this.iSignalIPdu;
        this.iSignalIPdu = newISignalIPdu;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldISignalIPdu, (Object)this.iSignalIPdu));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetISignalIPduGroup((ISignalIPduGroup)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetISignalIPduGroup(null, msgs);
            }
            case 6: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 24, ISignalIPduGroup.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getISignalIPduGroup();
            }
            case 5: {
                if (resolve) {
                    return this.getISignalIPdu();
                }
                return this.basicGetISignalIPdu();
            }
            case 6: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setISignalIPduGroup((ISignalIPduGroup)newValue);
                return;
            }
            case 5: {
                this.setISignalIPdu((ISignalIPdu)newValue);
                return;
            }
            case 6: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setISignalIPduGroup(null);
                return;
            }
            case 5: {
                this.setISignalIPdu(null);
                return;
            }
            case 6: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getISignalIPduGroup() != null;
            }
            case 5: {
                return this.iSignalIPdu != null;
            }
            case 6: {
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

