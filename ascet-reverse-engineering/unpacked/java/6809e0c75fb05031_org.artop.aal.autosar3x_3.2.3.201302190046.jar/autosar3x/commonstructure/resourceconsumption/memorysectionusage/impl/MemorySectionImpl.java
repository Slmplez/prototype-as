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
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar3x.commonstructure.resourceconsumption.memorysectionusage.impl;

import autosar3x.commonstructure.auxillaryobjects.SwAddrMethod;
import autosar3x.commonstructure.resourceconsumption.ResourceConsumption;
import autosar3x.commonstructure.resourceconsumption.memorysectionusage.MemorySection;
import autosar3x.commonstructure.resourceconsumption.memorysectionusage.MemorySectionType;
import autosar3x.commonstructure.resourceconsumption.memorysectionusage.MemorysectionusagePackage;
import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
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
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MemorySectionImpl
extends IdentifiableImpl
implements MemorySection,
IReferringClass {
    protected static final Integer ALIGNMENT_EDEFAULT = new Integer(0);
    protected Integer alignment = ALIGNMENT_EDEFAULT;
    protected boolean alignmentESet;
    protected EList<String> options;
    protected static final String SECTION_NAME_EDEFAULT = "";
    protected String sectionName = "";
    protected boolean sectionNameESet;
    protected static final MemorySectionType SECTION_TYPE_EDEFAULT = MemorySectionType.CODE;
    protected MemorySectionType sectionType = SECTION_TYPE_EDEFAULT;
    protected boolean sectionTypeESet;
    protected static final Integer SIZE_EDEFAULT = new Integer(0);
    protected Integer size = SIZE_EDEFAULT;
    protected boolean sizeESet;
    protected EList<SwAddrMethod> swAddrMethods;

    protected MemorySectionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return MemorysectionusagePackage.Literals.MEMORY_SECTION;
    }

    @Override
    public ResourceConsumption getResourceConsumption() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (ResourceConsumption)this.eContainer();
    }

    public NotificationChain basicSetResourceConsumption(ResourceConsumption newResourceConsumption, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newResourceConsumption, 17, msgs);
        return msgs;
    }

    @Override
    public void setResourceConsumption(ResourceConsumption newResourceConsumption) {
        if (newResourceConsumption != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newResourceConsumption != null) {
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newResourceConsumption, (Object)newResourceConsumption));
        }
    }

    @Override
    public Integer getAlignment() {
        return this.alignment;
    }

    @Override
    public void setAlignment(Integer newAlignment) {
        Integer oldAlignment = this.alignment;
        this.alignment = newAlignment;
        boolean oldAlignmentESet = this.alignmentESet;
        this.alignmentESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldAlignment, (Object)this.alignment, !oldAlignmentESet));
        }
    }

    @Override
    public void unsetAlignment() {
        Integer oldAlignment = this.alignment;
        boolean oldAlignmentESet = this.alignmentESet;
        this.alignment = ALIGNMENT_EDEFAULT;
        this.alignmentESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldAlignment, (Object)ALIGNMENT_EDEFAULT, oldAlignmentESet));
        }
    }

    @Override
    public boolean isSetAlignment() {
        return this.alignmentESet;
    }

    @Override
    public EList<String> getOptions() {
        if (this.options == null) {
            this.options = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 19);
        }
        return this.options;
    }

    @Override
    public void unsetOptions() {
        if (this.options != null) {
            ((InternalEList.Unsettable)this.options).unset();
        }
    }

    @Override
    public boolean isSetOptions() {
        return this.options != null && ((InternalEList.Unsettable)this.options).isSet();
    }

    @Override
    public String getSectionName() {
        return this.sectionName;
    }

    @Override
    public void setSectionName(String newSectionName) {
        String oldSectionName = this.sectionName;
        this.sectionName = newSectionName;
        boolean oldSectionNameESet = this.sectionNameESet;
        this.sectionNameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldSectionName, (Object)this.sectionName, !oldSectionNameESet));
        }
    }

    @Override
    public void unsetSectionName() {
        String oldSectionName = this.sectionName;
        boolean oldSectionNameESet = this.sectionNameESet;
        this.sectionName = SECTION_NAME_EDEFAULT;
        this.sectionNameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldSectionName, (Object)SECTION_NAME_EDEFAULT, oldSectionNameESet));
        }
    }

    @Override
    public boolean isSetSectionName() {
        return this.sectionNameESet;
    }

    @Override
    public MemorySectionType getSectionType() {
        return this.sectionType;
    }

    @Override
    public void setSectionType(MemorySectionType newSectionType) {
        MemorySectionType oldSectionType = this.sectionType;
        this.sectionType = newSectionType == null ? SECTION_TYPE_EDEFAULT : newSectionType;
        boolean oldSectionTypeESet = this.sectionTypeESet;
        this.sectionTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldSectionType, (Object)this.sectionType, !oldSectionTypeESet));
        }
    }

    @Override
    public void unsetSectionType() {
        MemorySectionType oldSectionType = this.sectionType;
        boolean oldSectionTypeESet = this.sectionTypeESet;
        this.sectionType = SECTION_TYPE_EDEFAULT;
        this.sectionTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldSectionType, (Object)SECTION_TYPE_EDEFAULT, oldSectionTypeESet));
        }
    }

    @Override
    public boolean isSetSectionType() {
        return this.sectionTypeESet;
    }

    @Override
    public Integer getSize() {
        return this.size;
    }

    @Override
    public void setSize(Integer newSize) {
        Integer oldSize = this.size;
        this.size = newSize;
        boolean oldSizeESet = this.sizeESet;
        this.sizeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldSize, (Object)this.size, !oldSizeESet));
        }
    }

    @Override
    public void unsetSize() {
        Integer oldSize = this.size;
        boolean oldSizeESet = this.sizeESet;
        this.size = SIZE_EDEFAULT;
        this.sizeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldSize, (Object)SIZE_EDEFAULT, oldSizeESet));
        }
    }

    @Override
    public boolean isSetSize() {
        return this.sizeESet;
    }

    @Override
    public EList<SwAddrMethod> getSwAddrMethods() {
        if (this.swAddrMethods == null) {
            this.swAddrMethods = new EObjectResolvingReferringEList(SwAddrMethod.class, (InternalEObject)this, 23);
        }
        return this.swAddrMethods;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetResourceConsumption((ResourceConsumption)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetResourceConsumption(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, ResourceConsumption.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getResourceConsumption();
            }
            case 18: {
                return this.getAlignment();
            }
            case 19: {
                return this.getOptions();
            }
            case 20: {
                return this.getSectionName();
            }
            case 21: {
                return this.getSectionType();
            }
            case 22: {
                return this.getSize();
            }
            case 23: {
                return this.getSwAddrMethods();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setResourceConsumption((ResourceConsumption)newValue);
                return;
            }
            case 18: {
                this.setAlignment((Integer)newValue);
                return;
            }
            case 19: {
                this.getOptions().clear();
                this.getOptions().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.setSectionName((String)newValue);
                return;
            }
            case 21: {
                this.setSectionType((MemorySectionType)((Object)newValue));
                return;
            }
            case 22: {
                this.setSize((Integer)newValue);
                return;
            }
            case 23: {
                this.getSwAddrMethods().clear();
                this.getSwAddrMethods().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setResourceConsumption(null);
                return;
            }
            case 18: {
                this.unsetAlignment();
                return;
            }
            case 19: {
                this.unsetOptions();
                return;
            }
            case 20: {
                this.unsetSectionName();
                return;
            }
            case 21: {
                this.unsetSectionType();
                return;
            }
            case 22: {
                this.unsetSize();
                return;
            }
            case 23: {
                this.getSwAddrMethods().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.getResourceConsumption() != null;
            }
            case 18: {
                return this.isSetAlignment();
            }
            case 19: {
                return this.isSetOptions();
            }
            case 20: {
                return this.isSetSectionName();
            }
            case 21: {
                return this.isSetSectionType();
            }
            case 22: {
                return this.isSetSize();
            }
            case 23: {
                return this.swAddrMethods != null && !this.swAddrMethods.isEmpty();
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

    @Override
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
        result.append(", options: ");
        result.append(this.options);
        result.append(", sectionName: ");
        if (this.sectionNameESet) {
            result.append(this.sectionName);
        } else {
            result.append("<unset>");
        }
        result.append(", sectionType: ");
        if (this.sectionTypeESet) {
            result.append((Object)this.sectionType);
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

