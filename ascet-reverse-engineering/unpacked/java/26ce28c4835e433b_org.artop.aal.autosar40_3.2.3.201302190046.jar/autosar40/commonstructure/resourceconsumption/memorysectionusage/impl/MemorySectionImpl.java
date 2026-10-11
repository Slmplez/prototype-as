/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
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
package autosar40.commonstructure.resourceconsumption.memorysectionusage.impl;

import autosar40.commonstructure.auxillaryobjects.SwAddrMethod;
import autosar40.commonstructure.internalbehavior.ExecutableEntity;
import autosar40.commonstructure.resourceconsumption.ResourceConsumption;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.MemorySection;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.MemorysectionusagePackage;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.SectionNamePrefix;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import java.util.Collection;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
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
public class MemorySectionImpl
extends IdentifiableImpl
implements MemorySection,
IReferringClass {
    protected static final String ALIGNMENT_EDEFAULT = "";
    protected String alignment = "";
    protected boolean alignmentESet;
    protected EList<ExecutableEntity> executableEntities;
    protected static final String OPTION_EDEFAULT = "";
    protected String option = "";
    protected boolean optionESet;
    protected SectionNamePrefix prefix;
    protected static final PositiveIntegerDatatype SIZE_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype size = SIZE_EDEFAULT.clone();
    protected boolean sizeESet;
    protected SwAddrMethod swAddrmethod;
    protected static final String SYMBOL_EDEFAULT = "";
    protected String symbol = "";
    protected boolean symbolESet;
    protected VariationPoint variationPoint;

    protected MemorySectionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return MemorysectionusagePackage.Literals.MEMORY_SECTION;
    }

    @Override
    public ResourceConsumption getResourceConsumption() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (ResourceConsumption)this.eContainer();
    }

    public NotificationChain basicSetResourceConsumption(ResourceConsumption newResourceConsumption, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newResourceConsumption, 18, msgs);
        return msgs;
    }

    @Override
    public void setResourceConsumption(ResourceConsumption newResourceConsumption) {
        if (newResourceConsumption != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newResourceConsumption != null) {
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newResourceConsumption, (Object)newResourceConsumption));
        }
    }

    @Override
    public String getAlignment() {
        return this.alignment;
    }

    @Override
    public void setAlignment(String newAlignment) {
        String oldAlignment = this.alignment;
        this.alignment = newAlignment;
        boolean oldAlignmentESet = this.alignmentESet;
        this.alignmentESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldAlignment, (Object)this.alignment, !oldAlignmentESet));
        }
    }

    @Override
    public void unsetAlignment() {
        String oldAlignment = this.alignment;
        boolean oldAlignmentESet = this.alignmentESet;
        this.alignment = "";
        this.alignmentESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldAlignment, (Object)"", oldAlignmentESet));
        }
    }

    @Override
    public boolean isSetAlignment() {
        return this.alignmentESet;
    }

    @Override
    public EList<ExecutableEntity> getExecutableEntities() {
        if (this.executableEntities == null) {
            this.executableEntities = new EObjectResolvingReferringEList(ExecutableEntity.class, (InternalEObject)this, 20);
        }
        return this.executableEntities;
    }

    @Override
    public String getOption() {
        return this.option;
    }

    @Override
    public void setOption(String newOption) {
        String oldOption = this.option;
        this.option = newOption;
        boolean oldOptionESet = this.optionESet;
        this.optionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldOption, (Object)this.option, !oldOptionESet));
        }
    }

    @Override
    public void unsetOption() {
        String oldOption = this.option;
        boolean oldOptionESet = this.optionESet;
        this.option = "";
        this.optionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldOption, (Object)"", oldOptionESet));
        }
    }

    @Override
    public boolean isSetOption() {
        return this.optionESet;
    }

    @Override
    public SectionNamePrefix getPrefix() {
        if (this.prefix != null && this.prefix.eIsProxy()) {
            InternalEObject oldPrefix = (InternalEObject)this.prefix;
            this.prefix = (SectionNamePrefix)this.eResolveProxy(oldPrefix);
            if (this.prefix != oldPrefix && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 22, (Object)oldPrefix, (Object)this.prefix));
            }
        }
        return this.prefix;
    }

    public SectionNamePrefix basicGetPrefix() {
        return this.prefix;
    }

    @Override
    public void setPrefix(SectionNamePrefix newPrefix) {
        SectionNamePrefix oldPrefix = this.prefix;
        this.prefix = newPrefix;
        AutosarObjectUtil.setDest((EObject)this, (int)22, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldPrefix, (Object)this.prefix));
        }
    }

    @Override
    public Long getSize() {
        return (Long)this.size.basicGetValue();
    }

    @Override
    public void setSize(Long newSize) {
        Long oldSize = (Long)this.size.basicGetValue();
        this.size.basicSetValue((Object)newSize);
        boolean oldSizeESet = this.sizeESet;
        this.sizeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldSize, (Object)newSize, !oldSizeESet));
        }
    }

    @Override
    public void unsetSize() {
        Long oldSize = (Long)this.size.basicGetValue();
        boolean oldSizeESet = this.sizeESet;
        this.size = SIZE_EDEFAULT.clone();
        this.sizeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldSize, (Object)SIZE_EDEFAULT, oldSizeESet));
        }
    }

    @Override
    public boolean isSetSize() {
        return this.sizeESet;
    }

    @Override
    public SwAddrMethod getSwAddrmethod() {
        if (this.swAddrmethod != null && this.swAddrmethod.eIsProxy()) {
            InternalEObject oldSwAddrmethod = (InternalEObject)this.swAddrmethod;
            this.swAddrmethod = (SwAddrMethod)this.eResolveProxy(oldSwAddrmethod);
            if (this.swAddrmethod != oldSwAddrmethod && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 24, (Object)oldSwAddrmethod, (Object)this.swAddrmethod));
            }
        }
        return this.swAddrmethod;
    }

    public SwAddrMethod basicGetSwAddrmethod() {
        return this.swAddrmethod;
    }

    @Override
    public void setSwAddrmethod(SwAddrMethod newSwAddrmethod) {
        SwAddrMethod oldSwAddrmethod = this.swAddrmethod;
        this.swAddrmethod = newSwAddrmethod;
        AutosarObjectUtil.setDest((EObject)this, (int)24, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldSwAddrmethod, (Object)this.swAddrmethod));
        }
    }

    @Override
    public String getSymbol() {
        return this.symbol;
    }

    @Override
    public void setSymbol(String newSymbol) {
        String oldSymbol = this.symbol;
        this.symbol = newSymbol;
        boolean oldSymbolESet = this.symbolESet;
        this.symbolESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldSymbol, (Object)this.symbol, !oldSymbolESet));
        }
    }

    @Override
    public void unsetSymbol() {
        String oldSymbol = this.symbol;
        boolean oldSymbolESet = this.symbolESet;
        this.symbol = "";
        this.symbolESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldSymbol, (Object)"", oldSymbolESet));
        }
    }

    @Override
    public boolean isSetSymbol() {
        return this.symbolESet;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -27, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -27, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    @Override
    public PositiveIntegerDatatype getSizeData() {
        return this.size.clone();
    }

    @Override
    public void setSizeData(PositiveIntegerDatatype newSize) {
        this.size.setRadix((int)newSize.getRadix());
        this.size.setNoOfDigits((int)newSize.getNoOfDigits());
        this.setSize(newSize.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
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
            case 18: {
                return this.basicSetResourceConsumption(null, msgs);
            }
            case 26: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, ResourceConsumption.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getResourceConsumption();
            }
            case 19: {
                return this.getAlignment();
            }
            case 20: {
                return this.getExecutableEntities();
            }
            case 21: {
                return this.getOption();
            }
            case 22: {
                if (resolve) {
                    return this.getPrefix();
                }
                return this.basicGetPrefix();
            }
            case 23: {
                return this.getSize();
            }
            case 24: {
                if (resolve) {
                    return this.getSwAddrmethod();
                }
                return this.basicGetSwAddrmethod();
            }
            case 25: {
                return this.getSymbol();
            }
            case 26: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setResourceConsumption((ResourceConsumption)newValue);
                return;
            }
            case 19: {
                this.setAlignment((String)newValue);
                return;
            }
            case 20: {
                this.getExecutableEntities().clear();
                this.getExecutableEntities().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.setOption((String)newValue);
                return;
            }
            case 22: {
                this.setPrefix((SectionNamePrefix)newValue);
                return;
            }
            case 23: {
                this.setSize((Long)newValue);
                return;
            }
            case 24: {
                this.setSwAddrmethod((SwAddrMethod)newValue);
                return;
            }
            case 25: {
                this.setSymbol((String)newValue);
                return;
            }
            case 26: {
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
                this.setResourceConsumption(null);
                return;
            }
            case 19: {
                this.unsetAlignment();
                return;
            }
            case 20: {
                this.getExecutableEntities().clear();
                return;
            }
            case 21: {
                this.unsetOption();
                return;
            }
            case 22: {
                this.setPrefix(null);
                return;
            }
            case 23: {
                this.unsetSize();
                return;
            }
            case 24: {
                this.setSwAddrmethod(null);
                return;
            }
            case 25: {
                this.unsetSymbol();
                return;
            }
            case 26: {
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
                return this.getResourceConsumption() != null;
            }
            case 19: {
                return this.isSetAlignment();
            }
            case 20: {
                return this.executableEntities != null && !this.executableEntities.isEmpty();
            }
            case 21: {
                return this.isSetOption();
            }
            case 22: {
                return this.prefix != null;
            }
            case 23: {
                return this.isSetSize();
            }
            case 24: {
                return this.swAddrmethod != null;
            }
            case 25: {
                return this.isSetSymbol();
            }
            case 26: {
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
        result.append(", option: ");
        if (this.optionESet) {
            result.append(this.option);
        } else {
            result.append("<unset>");
        }
        result.append(", size: ");
        if (this.sizeESet) {
            result.append(this.size);
        } else {
            result.append("<unset>");
        }
        result.append(", symbol: ");
        if (this.symbolESet) {
            result.append(this.symbol);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

