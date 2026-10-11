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
package autosar40.commonstructure.swcbswmapping.impl;

import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.commonstructure.swcbswmapping.SwcBswMapping;
import autosar40.commonstructure.swcbswmapping.SwcBswSynchronizedModeGroupPrototype;
import autosar40.commonstructure.swcbswmapping.SwcbswmappingPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.instancerefs.PModeGroupInAtomicSwcInstanceRef;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SwcBswSynchronizedModeGroupPrototypeImpl
extends ARObjectImpl
implements SwcBswSynchronizedModeGroupPrototype,
IReferringClass {
    protected ModeDeclarationGroupPrototype bswModeGroup;
    protected PModeGroupInAtomicSwcInstanceRef swcModeGroup;
    protected VariationPoint variationPoint;

    protected SwcBswSynchronizedModeGroupPrototypeImpl() {
    }

    protected EClass eStaticClass() {
        return SwcbswmappingPackage.Literals.SWC_BSW_SYNCHRONIZED_MODE_GROUP_PROTOTYPE;
    }

    public SwcBswMapping getSwcBswMapping() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwcBswMapping)this.eContainer();
    }

    public NotificationChain basicSetSwcBswMapping(SwcBswMapping newSwcBswMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwcBswMapping, 4, msgs);
        return msgs;
    }

    public void setSwcBswMapping(SwcBswMapping newSwcBswMapping) {
        if (newSwcBswMapping != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwcBswMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwcBswMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwcBswMapping != null) {
                msgs = ((InternalEObject)newSwcBswMapping).eInverseAdd((InternalEObject)this, 25, SwcBswMapping.class, msgs);
            }
            if ((msgs = this.basicSetSwcBswMapping(newSwcBswMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwcBswMapping, (Object)newSwcBswMapping));
        }
    }

    public ModeDeclarationGroupPrototype getBswModeGroup() {
        if (this.bswModeGroup != null && this.bswModeGroup.eIsProxy()) {
            InternalEObject oldBswModeGroup = (InternalEObject)this.bswModeGroup;
            this.bswModeGroup = (ModeDeclarationGroupPrototype)this.eResolveProxy(oldBswModeGroup);
            if (this.bswModeGroup != oldBswModeGroup && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldBswModeGroup, (Object)this.bswModeGroup));
            }
        }
        return this.bswModeGroup;
    }

    public ModeDeclarationGroupPrototype basicGetBswModeGroup() {
        return this.bswModeGroup;
    }

    public void setBswModeGroup(ModeDeclarationGroupPrototype newBswModeGroup) {
        ModeDeclarationGroupPrototype oldBswModeGroup = this.bswModeGroup;
        this.bswModeGroup = newBswModeGroup;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldBswModeGroup, (Object)this.bswModeGroup));
        }
    }

    public PModeGroupInAtomicSwcInstanceRef getSwcModeGroup() {
        return this.swcModeGroup;
    }

    public NotificationChain basicSetSwcModeGroup(PModeGroupInAtomicSwcInstanceRef newSwcModeGroup, NotificationChain msgs) {
        PModeGroupInAtomicSwcInstanceRef oldSwcModeGroup = this.swcModeGroup;
        this.swcModeGroup = newSwcModeGroup;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSwcModeGroup, (Object)newSwcModeGroup);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwcModeGroup(PModeGroupInAtomicSwcInstanceRef newSwcModeGroup) {
        if (newSwcModeGroup != this.swcModeGroup) {
            NotificationChain msgs = null;
            if (this.swcModeGroup != null) {
                msgs = ((InternalEObject)this.swcModeGroup).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newSwcModeGroup != null) {
                msgs = ((InternalEObject)newSwcModeGroup).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetSwcModeGroup(newSwcModeGroup, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newSwcModeGroup, (Object)newSwcModeGroup));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwcBswMapping((SwcBswMapping)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwcBswMapping(null, msgs);
            }
            case 6: {
                return this.basicSetSwcModeGroup(null, msgs);
            }
            case 7: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 25, SwcBswMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwcBswMapping();
            }
            case 5: {
                if (resolve) {
                    return this.getBswModeGroup();
                }
                return this.basicGetBswModeGroup();
            }
            case 6: {
                return this.getSwcModeGroup();
            }
            case 7: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwcBswMapping((SwcBswMapping)newValue);
                return;
            }
            case 5: {
                this.setBswModeGroup((ModeDeclarationGroupPrototype)newValue);
                return;
            }
            case 6: {
                this.setSwcModeGroup((PModeGroupInAtomicSwcInstanceRef)newValue);
                return;
            }
            case 7: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwcBswMapping(null);
                return;
            }
            case 5: {
                this.setBswModeGroup(null);
                return;
            }
            case 6: {
                this.setSwcModeGroup(null);
                return;
            }
            case 7: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwcBswMapping() != null;
            }
            case 5: {
                return this.bswModeGroup != null;
            }
            case 6: {
                return this.swcModeGroup != null;
            }
            case 7: {
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

