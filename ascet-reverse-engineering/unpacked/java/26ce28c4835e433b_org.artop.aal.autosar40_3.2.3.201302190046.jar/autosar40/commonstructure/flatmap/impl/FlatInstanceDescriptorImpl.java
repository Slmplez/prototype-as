/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.commonstructure.flatmap.impl;

import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.commonstructure.flatmap.FlatInstanceDescriptor;
import autosar40.commonstructure.flatmap.FlatMap;
import autosar40.commonstructure.flatmap.FlatmapPackage;
import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.AnyInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class FlatInstanceDescriptorImpl
extends IdentifiableImpl
implements FlatInstanceDescriptor {
    protected static final String ROLE_EDEFAULT = "";
    protected String role = "";
    protected boolean roleESet;
    protected SwDataDefProps swDataDefProps;
    protected AnyInstanceRef upstreamReference;
    protected AnyInstanceRef ecuExtractReference;
    protected VariationPoint variationPoint;

    protected FlatInstanceDescriptorImpl() {
    }

    protected EClass eStaticClass() {
        return FlatmapPackage.Literals.FLAT_INSTANCE_DESCRIPTOR;
    }

    public FlatMap getFlatMap() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (FlatMap)this.eContainer();
    }

    public NotificationChain basicSetFlatMap(FlatMap newFlatMap, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newFlatMap, 18, msgs);
        return msgs;
    }

    public void setFlatMap(FlatMap newFlatMap) {
        if (newFlatMap != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newFlatMap != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newFlatMap)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newFlatMap != null) {
                msgs = ((InternalEObject)newFlatMap).eInverseAdd((InternalEObject)this, 22, FlatMap.class, msgs);
            }
            if ((msgs = this.basicSetFlatMap(newFlatMap, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newFlatMap, (Object)newFlatMap));
        }
    }

    public String getRole() {
        return this.role;
    }

    public void setRole(String newRole) {
        String oldRole = this.role;
        this.role = newRole;
        boolean oldRoleESet = this.roleESet;
        this.roleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldRole, (Object)this.role, !oldRoleESet));
        }
    }

    public void unsetRole() {
        String oldRole = this.role;
        boolean oldRoleESet = this.roleESet;
        this.role = ROLE_EDEFAULT;
        this.roleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldRole, (Object)ROLE_EDEFAULT, oldRoleESet));
        }
    }

    public boolean isSetRole() {
        return this.roleESet;
    }

    public SwDataDefProps getSwDataDefProps() {
        return this.swDataDefProps;
    }

    public NotificationChain basicSetSwDataDefProps(SwDataDefProps newSwDataDefProps, NotificationChain msgs) {
        SwDataDefProps oldSwDataDefProps = this.swDataDefProps;
        this.swDataDefProps = newSwDataDefProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldSwDataDefProps, (Object)newSwDataDefProps);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwDataDefProps(SwDataDefProps newSwDataDefProps) {
        if (newSwDataDefProps != this.swDataDefProps) {
            NotificationChain msgs = null;
            if (this.swDataDefProps != null) {
                msgs = ((InternalEObject)this.swDataDefProps).eInverseRemove((InternalEObject)this, -21, null, msgs);
            }
            if (newSwDataDefProps != null) {
                msgs = ((InternalEObject)newSwDataDefProps).eInverseAdd((InternalEObject)this, -21, null, msgs);
            }
            if ((msgs = this.basicSetSwDataDefProps(newSwDataDefProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newSwDataDefProps, (Object)newSwDataDefProps));
        }
    }

    public AnyInstanceRef getUpstreamReference() {
        return this.upstreamReference;
    }

    public NotificationChain basicSetUpstreamReference(AnyInstanceRef newUpstreamReference, NotificationChain msgs) {
        AnyInstanceRef oldUpstreamReference = this.upstreamReference;
        this.upstreamReference = newUpstreamReference;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldUpstreamReference, (Object)newUpstreamReference);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setUpstreamReference(AnyInstanceRef newUpstreamReference) {
        if (newUpstreamReference != this.upstreamReference) {
            NotificationChain msgs = null;
            if (this.upstreamReference != null) {
                msgs = ((InternalEObject)this.upstreamReference).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newUpstreamReference != null) {
                msgs = ((InternalEObject)newUpstreamReference).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetUpstreamReference(newUpstreamReference, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newUpstreamReference, (Object)newUpstreamReference));
        }
    }

    public AnyInstanceRef getEcuExtractReference() {
        return this.ecuExtractReference;
    }

    public NotificationChain basicSetEcuExtractReference(AnyInstanceRef newEcuExtractReference, NotificationChain msgs) {
        AnyInstanceRef oldEcuExtractReference = this.ecuExtractReference;
        this.ecuExtractReference = newEcuExtractReference;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldEcuExtractReference, (Object)newEcuExtractReference);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setEcuExtractReference(AnyInstanceRef newEcuExtractReference) {
        if (newEcuExtractReference != this.ecuExtractReference) {
            NotificationChain msgs = null;
            if (this.ecuExtractReference != null) {
                msgs = ((InternalEObject)this.ecuExtractReference).eInverseRemove((InternalEObject)this, -23, null, msgs);
            }
            if (newEcuExtractReference != null) {
                msgs = ((InternalEObject)newEcuExtractReference).eInverseAdd((InternalEObject)this, -23, null, msgs);
            }
            if ((msgs = this.basicSetEcuExtractReference(newEcuExtractReference, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newEcuExtractReference, (Object)newEcuExtractReference));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -24, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -24, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetFlatMap((FlatMap)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetFlatMap(null, msgs);
            }
            case 20: {
                return this.basicSetSwDataDefProps(null, msgs);
            }
            case 21: {
                return this.basicSetUpstreamReference(null, msgs);
            }
            case 22: {
                return this.basicSetEcuExtractReference(null, msgs);
            }
            case 23: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, FlatMap.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getFlatMap();
            }
            case 19: {
                return this.getRole();
            }
            case 20: {
                return this.getSwDataDefProps();
            }
            case 21: {
                return this.getUpstreamReference();
            }
            case 22: {
                return this.getEcuExtractReference();
            }
            case 23: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setFlatMap((FlatMap)newValue);
                return;
            }
            case 19: {
                this.setRole((String)newValue);
                return;
            }
            case 20: {
                this.setSwDataDefProps((SwDataDefProps)newValue);
                return;
            }
            case 21: {
                this.setUpstreamReference((AnyInstanceRef)newValue);
                return;
            }
            case 22: {
                this.setEcuExtractReference((AnyInstanceRef)newValue);
                return;
            }
            case 23: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setFlatMap(null);
                return;
            }
            case 19: {
                this.unsetRole();
                return;
            }
            case 20: {
                this.setSwDataDefProps(null);
                return;
            }
            case 21: {
                this.setUpstreamReference(null);
                return;
            }
            case 22: {
                this.setEcuExtractReference(null);
                return;
            }
            case 23: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getFlatMap() != null;
            }
            case 19: {
                return this.isSetRole();
            }
            case 20: {
                return this.swDataDefProps != null;
            }
            case 21: {
                return this.upstreamReference != null;
            }
            case 22: {
                return this.ecuExtractReference != null;
            }
            case 23: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (role: ");
        if (this.roleESet) {
            result.append(this.role);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

