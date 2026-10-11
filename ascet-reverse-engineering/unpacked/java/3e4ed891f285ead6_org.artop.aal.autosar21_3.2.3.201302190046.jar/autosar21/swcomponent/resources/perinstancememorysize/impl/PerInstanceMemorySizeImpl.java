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
package autosar21.swcomponent.resources.perinstancememorysize.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.internalbehavior.perinstancememory.PerInstanceMemory;
import autosar21.swcomponent.resources.ResourceConsumption;
import autosar21.swcomponent.resources.perinstancememorysize.PerInstanceMemorySize;
import autosar21.swcomponent.resources.perinstancememorysize.PerinstancememorysizePackage;
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
    protected static final Integer ALIGNMENT_EDEFAULT = new Integer(0);
    protected Integer alignment = ALIGNMENT_EDEFAULT;
    protected boolean alignmentESet;
    protected PerInstanceMemory perInstanceMemory;
    protected static final Integer SIZE_EDEFAULT = new Integer(0);
    protected Integer size = SIZE_EDEFAULT;
    protected boolean sizeESet;

    protected PerInstanceMemorySizeImpl() {
    }

    protected EClass eStaticClass() {
        return PerinstancememorysizePackage.Literals.PER_INSTANCE_MEMORY_SIZE;
    }

    public ResourceConsumption getResourceConsumption() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ResourceConsumption)this.eContainer();
    }

    public NotificationChain basicSetResourceConsumption(ResourceConsumption newResourceConsumption, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newResourceConsumption, 4, msgs);
        return msgs;
    }

    public void setResourceConsumption(ResourceConsumption newResourceConsumption) {
        if (newResourceConsumption != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newResourceConsumption != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newResourceConsumption)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newResourceConsumption != null) {
                msgs = ((InternalEObject)newResourceConsumption).eInverseAdd((InternalEObject)this, 20, ResourceConsumption.class, msgs);
            }
            if ((msgs = this.basicSetResourceConsumption(newResourceConsumption, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newResourceConsumption, (Object)newResourceConsumption));
        }
    }

    public Integer getAlignment() {
        return this.alignment;
    }

    public void setAlignment(Integer newAlignment) {
        Integer oldAlignment = this.alignment;
        this.alignment = newAlignment;
        boolean oldAlignmentESet = this.alignmentESet;
        this.alignmentESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldAlignment, (Object)this.alignment, !oldAlignmentESet));
        }
    }

    public void unsetAlignment() {
        Integer oldAlignment = this.alignment;
        boolean oldAlignmentESet = this.alignmentESet;
        this.alignment = ALIGNMENT_EDEFAULT;
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

    public Integer getSize() {
        return this.size;
    }

    public void setSize(Integer newSize) {
        Integer oldSize = this.size;
        this.size = newSize;
        boolean oldSizeESet = this.sizeESet;
        this.sizeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSize, (Object)this.size, !oldSizeESet));
        }
    }

    public void unsetSize() {
        Integer oldSize = this.size;
        boolean oldSizeESet = this.sizeESet;
        this.size = SIZE_EDEFAULT;
        this.sizeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldSize, (Object)SIZE_EDEFAULT, oldSizeESet));
        }
    }

    public boolean isSetSize() {
        return this.sizeESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetResourceConsumption((ResourceConsumption)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetResourceConsumption(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, ResourceConsumption.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getResourceConsumption();
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
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setResourceConsumption((ResourceConsumption)newValue);
                return;
            }
            case 5: {
                this.setAlignment((Integer)newValue);
                return;
            }
            case 6: {
                this.setPerInstanceMemory((PerInstanceMemory)newValue);
                return;
            }
            case 7: {
                this.setSize((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setResourceConsumption(null);
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
                this.unsetSize();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getResourceConsumption() != null;
            }
            case 5: {
                return this.isSetAlignment();
            }
            case 6: {
                return this.perInstanceMemory != null;
            }
            case 7: {
                return this.isSetSize();
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
        result.append(", size: ");
        if (this.sizeESet) {
            result.append(this.size);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

