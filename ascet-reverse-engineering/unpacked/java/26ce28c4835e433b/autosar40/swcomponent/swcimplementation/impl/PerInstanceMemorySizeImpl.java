/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
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
package autosar40.swcomponent.swcimplementation.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.PositiveIntegerValueVariationPoint;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.swcimplementation.PerInstanceMemorySize;
import autosar40.swcomponent.swcimplementation.SwcImplementation;
import autosar40.swcomponent.swcimplementation.SwcimplementationPackage;
import autosar40.swcomponent.swcinternalbehavior.perinstancememory.PerInstanceMemory;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class PerInstanceMemorySizeImpl
extends ARObjectImpl
implements PerInstanceMemorySize,
IReferringClass {
    protected static final PositiveIntegerDatatype ALIGNMENT_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype alignment = ALIGNMENT_EDEFAULT.clone();
    protected boolean alignmentESet;
    protected PerInstanceMemory perInstanceMemory;
    protected PositiveIntegerValueVariationPoint size;
    protected VariationPoint variationPoint;

    protected PerInstanceMemorySizeImpl() {
    }

    protected EClass eStaticClass() {
        return SwcimplementationPackage.Literals.PER_INSTANCE_MEMORY_SIZE;
    }

    public SwcImplementation getSwcImplementation() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwcImplementation)this.eContainer();
    }

    public NotificationChain basicSetSwcImplementation(SwcImplementation newSwcImplementation, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwcImplementation, 4, msgs);
        return msgs;
    }

    public void setSwcImplementation(SwcImplementation newSwcImplementation) {
        if (newSwcImplementation != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwcImplementation != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwcImplementation)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwcImplementation != null) {
                msgs = ((InternalEObject)newSwcImplementation).eInverseAdd((InternalEObject)this, 39, SwcImplementation.class, msgs);
            }
            if ((msgs = this.basicSetSwcImplementation(newSwcImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwcImplementation, (Object)newSwcImplementation));
        }
    }

    public Long getAlignment() {
        return (Long)this.alignment.basicGetValue();
    }

    public void setAlignment(Long newAlignment) {
        Long oldAlignment = (Long)this.alignment.basicGetValue();
        this.alignment.basicSetValue((Object)newAlignment);
        boolean oldAlignmentESet = this.alignmentESet;
        this.alignmentESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldAlignment, (Object)newAlignment, !oldAlignmentESet));
        }
    }

    public void unsetAlignment() {
        Long oldAlignment = (Long)this.alignment.basicGetValue();
        boolean oldAlignmentESet = this.alignmentESet;
        this.alignment = ALIGNMENT_EDEFAULT.clone();
        this.alignmentESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldAlignment, (Object)ALIGNMENT_EDEFAULT, oldAlignmentESet));
        }
    }

    public boolean isSetAlignment() {
        return this.alignmentESet;
    }

    public PerInstanceMemory getPerInstanceMemory() {
        if (this.perInstanceMemory != null && this.perInstanceMemory.eIsProxy()) {
            InternalEObject oldPerInstanceMemory = (InternalEObject)this.perInstanceMemory;
            this.perInstanceMemory = (PerInstanceMemory)this.eResolveProxy(oldPerInstanceMemory);
            if (this.perInstanceMemory != oldPerInstanceMemory && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldPerInstanceMemory, (Object)this.perInstanceMemory));
            }
        }
        return this.perInstanceMemory;
    }

    public PerInstanceMemory basicGetPerInstanceMemory() {
        return this.perInstanceMemory;
    }

    public void setPerInstanceMemory(PerInstanceMemory newPerInstanceMemory) {
        PerInstanceMemory oldPerInstanceMemory = this.perInstanceMemory;
        this.perInstanceMemory = newPerInstanceMemory;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldPerInstanceMemory, (Object)this.perInstanceMemory));
        }
    }

    public PositiveIntegerValueVariationPoint getSize() {
        return this.size;
    }

    public NotificationChain basicSetSize(PositiveIntegerValueVariationPoint newSize, NotificationChain msgs) {
        PositiveIntegerValueVariationPoint oldSize = this.size;
        this.size = newSize;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSize, (Object)newSize);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSize(PositiveIntegerValueVariationPoint newSize) {
        if (newSize != this.size) {
            NotificationChain msgs = null;
            if (this.size != null) {
                msgs = ((InternalEObject)this.size).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newSize != null) {
                msgs = ((InternalEObject)newSize).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetSize(newSize, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newSize, (Object)newSize));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public PositiveIntegerDatatype getAlignmentData() {
        return this.alignment.clone();
    }

    public void setAlignmentData(PositiveIntegerDatatype newAlignment) {
        this.alignment.setRadix((int)newAlignment.getRadix());
        this.alignment.setNoOfDigits((int)newAlignment.getNoOfDigits());
        this.setAlignment(newAlignment.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwcImplementation((SwcImplementation)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwcImplementation(null, msgs);
            }
            case 7: {
                return this.basicSetSize(null, msgs);
            }
            case 8: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 39, SwcImplementation.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwcImplementation();
            }
            case 5: {
                return this.getAlignment();
            }
            case 6: {
                if (resolve) {
                    return this.getPerInstanceMemory();
                }
                return this.basicGetPerInstanceMemory();
            }
            case 7: {
                return this.getSize();
            }
            case 8: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwcImplementation((SwcImplementation)newValue);
                return;
            }
            case 5: {
                this.setAlignment((Long)newValue);
                return;
            }
            case 6: {
                this.setPerInstanceMemory((PerInstanceMemory)newValue);
                return;
            }
            case 7: {
                this.setSize((PositiveIntegerValueVariationPoint)newValue);
                return;
            }
            case 8: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwcImplementation(null);
                return;
            }
            case 5: {
                this.unsetAlignment();
                return;
            }
            case 6: {
                this.setPerInstanceMemory(null);
                return;
            }
            case 7: {
                this.setSize(null);
                return;
            }
            case 8: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwcImplementation() != null;
            }
            case 5: {
                return this.isSetAlignment();
            }
            case 6: {
                return this.perInstanceMemory != null;
            }
            case 7: {
                return this.size != null;
            }
            case 8: {
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

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (alignment: ");
        if (this.alignmentESet) {
            result.append(this.alignment);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

