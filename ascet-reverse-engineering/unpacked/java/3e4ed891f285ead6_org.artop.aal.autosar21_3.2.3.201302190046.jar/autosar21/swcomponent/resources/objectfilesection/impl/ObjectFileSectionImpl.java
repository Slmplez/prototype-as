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
package autosar21.swcomponent.resources.objectfilesection.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.swcomponent.resources.ResourceConsumption;
import autosar21.swcomponent.resources.objectfilesection.ObjectFileSection;
import autosar21.swcomponent.resources.objectfilesection.ObjectfilesectionPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ObjectFileSectionImpl
extends IdentifiableImpl
implements ObjectFileSection {
    protected static final Integer ALIGNMENT_EDEFAULT = new Integer(0);
    protected Integer alignment = ALIGNMENT_EDEFAULT;
    protected boolean alignmentESet;
    protected static final Boolean EXECUTABLE_EDEFAULT = Boolean.FALSE;
    protected Boolean executable = EXECUTABLE_EDEFAULT;
    protected boolean executableESet;
    protected static final String SECTION_NAME_EDEFAULT = "";
    protected String sectionName = "";
    protected boolean sectionNameESet;
    protected static final Integer SIZE_EDEFAULT = new Integer(0);
    protected Integer size = SIZE_EDEFAULT;
    protected boolean sizeESet;
    protected static final Boolean WRITABLE_EDEFAULT = Boolean.FALSE;
    protected Boolean writable = WRITABLE_EDEFAULT;
    protected boolean writableESet;

    protected ObjectFileSectionImpl() {
    }

    protected EClass eStaticClass() {
        return ObjectfilesectionPackage.Literals.OBJECT_FILE_SECTION;
    }

    public ResourceConsumption getResourceConsumption() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (ResourceConsumption)this.eContainer();
    }

    public NotificationChain basicSetResourceConsumption(ResourceConsumption newResourceConsumption, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newResourceConsumption, 16, msgs);
        return msgs;
    }

    public void setResourceConsumption(ResourceConsumption newResourceConsumption) {
        if (newResourceConsumption != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newResourceConsumption != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newResourceConsumption)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newResourceConsumption != null) {
                msgs = ((InternalEObject)newResourceConsumption).eInverseAdd((InternalEObject)this, 19, ResourceConsumption.class, msgs);
            }
            if ((msgs = this.basicSetResourceConsumption(newResourceConsumption, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newResourceConsumption, (Object)newResourceConsumption));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldAlignment, (Object)this.alignment, !oldAlignmentESet));
        }
    }

    public void unsetAlignment() {
        Integer oldAlignment = this.alignment;
        boolean oldAlignmentESet = this.alignmentESet;
        this.alignment = ALIGNMENT_EDEFAULT;
        this.alignmentESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldAlignment, (Object)ALIGNMENT_EDEFAULT, oldAlignmentESet));
        }
    }

    public boolean isSetAlignment() {
        return this.alignmentESet;
    }

    public Boolean getExecutable() {
        return this.executable;
    }

    public void setExecutable(Boolean newExecutable) {
        Boolean oldExecutable = this.executable;
        this.executable = newExecutable;
        boolean oldExecutableESet = this.executableESet;
        this.executableESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldExecutable, (Object)this.executable, !oldExecutableESet));
        }
    }

    public void unsetExecutable() {
        Boolean oldExecutable = this.executable;
        boolean oldExecutableESet = this.executableESet;
        this.executable = EXECUTABLE_EDEFAULT;
        this.executableESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldExecutable, (Object)EXECUTABLE_EDEFAULT, oldExecutableESet));
        }
    }

    public boolean isSetExecutable() {
        return this.executableESet;
    }

    public String getSectionName() {
        return this.sectionName;
    }

    public void setSectionName(String newSectionName) {
        String oldSectionName = this.sectionName;
        this.sectionName = newSectionName;
        boolean oldSectionNameESet = this.sectionNameESet;
        this.sectionNameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldSectionName, (Object)this.sectionName, !oldSectionNameESet));
        }
    }

    public void unsetSectionName() {
        String oldSectionName = this.sectionName;
        boolean oldSectionNameESet = this.sectionNameESet;
        this.sectionName = SECTION_NAME_EDEFAULT;
        this.sectionNameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldSectionName, (Object)SECTION_NAME_EDEFAULT, oldSectionNameESet));
        }
    }

    public boolean isSetSectionName() {
        return this.sectionNameESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldSize, (Object)this.size, !oldSizeESet));
        }
    }

    public void unsetSize() {
        Integer oldSize = this.size;
        boolean oldSizeESet = this.sizeESet;
        this.size = SIZE_EDEFAULT;
        this.sizeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldSize, (Object)SIZE_EDEFAULT, oldSizeESet));
        }
    }

    public boolean isSetSize() {
        return this.sizeESet;
    }

    public Boolean getWritable() {
        return this.writable;
    }

    public void setWritable(Boolean newWritable) {
        Boolean oldWritable = this.writable;
        this.writable = newWritable;
        boolean oldWritableESet = this.writableESet;
        this.writableESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldWritable, (Object)this.writable, !oldWritableESet));
        }
    }

    public void unsetWritable() {
        Boolean oldWritable = this.writable;
        boolean oldWritableESet = this.writableESet;
        this.writable = WRITABLE_EDEFAULT;
        this.writableESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldWritable, (Object)WRITABLE_EDEFAULT, oldWritableESet));
        }
    }

    public boolean isSetWritable() {
        return this.writableESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
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
            case 16: {
                return this.basicSetResourceConsumption(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, ResourceConsumption.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getResourceConsumption();
            }
            case 17: {
                return this.getAlignment();
            }
            case 18: {
                return this.getExecutable();
            }
            case 19: {
                return this.getSectionName();
            }
            case 20: {
                return this.getSize();
            }
            case 21: {
                return this.getWritable();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setResourceConsumption((ResourceConsumption)newValue);
                return;
            }
            case 17: {
                this.setAlignment((Integer)newValue);
                return;
            }
            case 18: {
                this.setExecutable((Boolean)newValue);
                return;
            }
            case 19: {
                this.setSectionName((String)newValue);
                return;
            }
            case 20: {
                this.setSize((Integer)newValue);
                return;
            }
            case 21: {
                this.setWritable((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setResourceConsumption(null);
                return;
            }
            case 17: {
                this.unsetAlignment();
                return;
            }
            case 18: {
                this.unsetExecutable();
                return;
            }
            case 19: {
                this.unsetSectionName();
                return;
            }
            case 20: {
                this.unsetSize();
                return;
            }
            case 21: {
                this.unsetWritable();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getResourceConsumption() != null;
            }
            case 17: {
                return this.isSetAlignment();
            }
            case 18: {
                return this.isSetExecutable();
            }
            case 19: {
                return this.isSetSectionName();
            }
            case 20: {
                return this.isSetSize();
            }
            case 21: {
                return this.isSetWritable();
            }
        }
        return super.eIsSet(featureID);
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
        result.append(", executable: ");
        if (this.executableESet) {
            result.append(this.executable);
        } else {
            result.append("<unset>");
        }
        result.append(", sectionName: ");
        if (this.sectionNameESet) {
            result.append(this.sectionName);
        } else {
            result.append("<unset>");
        }
        result.append(", size: ");
        if (this.sizeESet) {
            result.append(this.size);
        } else {
            result.append("<unset>");
        }
        result.append(", writable: ");
        if (this.writableESet) {
            result.append(this.writable);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

