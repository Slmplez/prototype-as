/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.notify.impl.NotificationChainImpl
 *  org.eclipse.emf.common.util.BasicEMap$Entry
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.EMap
 */
package org.eclipse.emf.ecore.impl;

import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.notify.impl.NotificationChainImpl;
import org.eclipse.emf.common.util.BasicEMap;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.EClassImpl;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.ETypedElementImpl;
import org.eclipse.emf.ecore.util.BasicExtendedMetaData;
import org.eclipse.emf.ecore.util.BasicFeatureMap;
import org.eclipse.emf.ecore.util.EDataTypeEList;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EObjectEList;
import org.eclipse.emf.ecore.util.EObjectResolvingEList;
import org.eclipse.emf.ecore.util.EObjectWithInverseEList;
import org.eclipse.emf.ecore.util.EObjectWithInverseResolvingEList;
import org.eclipse.emf.ecore.util.EcoreEList;
import org.eclipse.emf.ecore.util.EcoreEMap;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class EStructuralFeatureImpl
extends ETypedElementImpl
implements EStructuralFeature,
EStructuralFeature.Internal,
BasicExtendedMetaData.EStructuralFeatureExtendedMetaData.Holder {
    protected int featureID = -1;
    protected Class<?> containerClass;
    protected Object defaultValue = null;
    protected EFactory defaultValueFactory = null;
    protected static final boolean CHANGEABLE_EDEFAULT = true;
    protected static final int CHANGEABLE_EFLAG = 1024;
    protected static final boolean VOLATILE_EDEFAULT = false;
    protected static final int VOLATILE_EFLAG = 2048;
    protected static final boolean TRANSIENT_EDEFAULT = false;
    protected static final int TRANSIENT_EFLAG = 4096;
    protected static final String DEFAULT_VALUE_LITERAL_EDEFAULT = null;
    protected String defaultValueLiteral = DEFAULT_VALUE_LITERAL_EDEFAULT;
    protected static final Object DEFAULT_VALUE_EDEFAULT = null;
    protected static final boolean UNSETTABLE_EDEFAULT = false;
    protected static final int UNSETTABLE_EFLAG = 8192;
    protected static final boolean DERIVED_EDEFAULT = false;
    protected static final int DERIVED_EFLAG = 16384;
    protected EStructuralFeature.Internal.SettingDelegate settingDelegate;
    protected EClassifier cachedEType;
    protected boolean cachedIsFeatureMap;
    protected FeatureMap.Entry.Internal prototypeFeatureMapEntry;
    protected BasicExtendedMetaData.EStructuralFeatureExtendedMetaData eStructuralFeatureExtendedMetaData;

    protected EStructuralFeatureImpl() {
        this.eFlags |= 0x400;
    }

    @Override
    protected EClass eStaticClass() {
        return EcorePackage.Literals.ESTRUCTURAL_FEATURE;
    }

    @Override
    public Object getDefaultValue() {
        EClassifier eType = this.getEType();
        String literal = this.getDefaultValueLiteral();
        if (literal == null && eType != null) {
            return this.isMany() ? null : eType.getDefaultValue();
        }
        if (eType instanceof EDataType) {
            EFactory factory = eType.getEPackage().getEFactoryInstance();
            if (factory != this.defaultValueFactory) {
                EDataType eDataType = (EDataType)eType;
                if (eDataType.isSerializable()) {
                    try {
                        this.defaultValue = factory.createFromString(eDataType, literal);
                    }
                    catch (Throwable e) {
                        this.defaultValue = null;
                    }
                }
                this.defaultValueFactory = factory;
            }
            return this.defaultValue;
        }
        return null;
    }

    @Override
    public void setDefaultValue(Object newDefaultValue) {
        EClassifier eType = this.getEType();
        if (eType instanceof EDataType) {
            EFactory factory = eType.getEPackage().getEFactoryInstance();
            String literal = factory.convertToString((EDataType)eType, newDefaultValue);
            this.defaultValueFactory = null;
            this.setDefaultValueLiteralGen(literal);
            return;
        }
        throw new IllegalStateException("Cannot serialize value to object without an EDataType eType");
    }

    @Override
    public void setDefaultValueLiteral(String newDefaultValueLiteral) {
        this.defaultValueFactory = null;
        this.setDefaultValueLiteralGen(newDefaultValueLiteral);
    }

    public void setDefaultValueLiteralGen(String newDefaultValueLiteral) {
        String oldDefaultValueLiteral = this.defaultValueLiteral;
        this.defaultValueLiteral = newDefaultValueLiteral;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldDefaultValueLiteral, (Object)this.defaultValueLiteral));
        }
    }

    @Override
    public boolean isUnsettable() {
        return (this.eFlags & 0x2000) != 0;
    }

    @Override
    public void setUnsettable(boolean newUnsettable) {
        boolean oldUnsettable;
        boolean bl = oldUnsettable = (this.eFlags & 0x2000) != 0;
        this.eFlags = newUnsettable ? (this.eFlags |= 0x2000) : (this.eFlags &= 0xFFFFDFFF);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, oldUnsettable, newUnsettable));
        }
    }

    @Override
    public boolean isDerived() {
        return (this.eFlags & 0x4000) != 0;
    }

    @Override
    public void setDerived(boolean newDerived) {
        boolean oldDerived;
        boolean bl = oldDerived = (this.eFlags & 0x4000) != 0;
        this.eFlags = newDerived ? (this.eFlags |= 0x4000) : (this.eFlags &= 0xFFFFBFFF);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, oldDerived, newDerived));
        }
    }

    @Override
    public EClass getEContainingClass() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (EClass)this.eContainer();
    }

    @Override
    public boolean isTransient() {
        return (this.eFlags & 0x1000) != 0;
    }

    @Override
    public void setTransient(boolean newTransient) {
        boolean oldTransient;
        boolean bl = oldTransient = (this.eFlags & 0x1000) != 0;
        this.eFlags = newTransient ? (this.eFlags |= 0x1000) : (this.eFlags &= 0xFFFFEFFF);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, oldTransient, newTransient));
        }
    }

    @Override
    public boolean isVolatile() {
        return (this.eFlags & 0x800) != 0;
    }

    @Override
    public void setVolatile(boolean newVolatile) {
        boolean oldVolatile;
        boolean bl = oldVolatile = (this.eFlags & 0x800) != 0;
        this.eFlags = newVolatile ? (this.eFlags |= 0x800) : (this.eFlags &= 0xFFFFF7FF);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, oldVolatile, newVolatile));
        }
    }

    @Override
    public boolean isChangeable() {
        return (this.eFlags & 0x400) != 0;
    }

    @Override
    public void setChangeable(boolean newChangeable) {
        boolean oldChangeable;
        boolean bl = oldChangeable = (this.eFlags & 0x400) != 0;
        this.eFlags = newChangeable ? (this.eFlags |= 0x400) : (this.eFlags &= 0xFFFFFBFF);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, oldChangeable, newChangeable));
        }
    }

    @Override
    public String getDefaultValueLiteral() {
        return this.defaultValueLiteral;
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (changeable: ");
        result.append((this.eFlags & 0x400) != 0);
        result.append(", volatile: ");
        result.append((this.eFlags & 0x800) != 0);
        result.append(", transient: ");
        result.append((this.eFlags & 0x1000) != 0);
        result.append(", defaultValueLiteral: ");
        result.append(this.defaultValueLiteral);
        result.append(", unsettable: ");
        result.append((this.eFlags & 0x2000) != 0);
        result.append(", derived: ");
        result.append((this.eFlags & 0x4000) != 0);
        result.append(')');
        return result.toString();
    }

    @Override
    public int getFeatureID() {
        return this.featureID;
    }

    public void setFeatureID(int featureID) {
        this.featureID = featureID;
    }

    @Override
    public Class<?> getContainerClass() {
        return this.containerClass;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getEAnnotations()).basicAdd(otherEnd, msgs);
            }
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.eBasicSetContainer(otherEnd, 17, msgs);
            }
        }
        return this.eDynamicInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getEAnnotations()).basicRemove(otherEnd, msgs);
            }
            case 9: {
                return this.basicUnsetEGenericType(msgs);
            }
            case 17: {
                return this.eBasicSetContainer(null, 17, msgs);
            }
        }
        return this.eDynamicInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove(this, 21, EClass.class, msgs);
            }
        }
        return this.eDynamicBasicRemoveFromContainer(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getEAnnotations();
            }
            case 1: {
                return this.getName();
            }
            case 2: {
                return this.isOrdered();
            }
            case 3: {
                return this.isUnique();
            }
            case 4: {
                return this.getLowerBound();
            }
            case 5: {
                return this.getUpperBound();
            }
            case 6: {
                return this.isMany();
            }
            case 7: {
                return this.isRequired();
            }
            case 8: {
                if (resolve) {
                    return this.getEType();
                }
                return this.basicGetEType();
            }
            case 9: {
                return this.getEGenericType();
            }
            case 10: {
                return this.isChangeable();
            }
            case 11: {
                return this.isVolatile();
            }
            case 12: {
                return this.isTransient();
            }
            case 13: {
                return this.getDefaultValueLiteral();
            }
            case 14: {
                return this.getDefaultValue();
            }
            case 15: {
                return this.isUnsettable();
            }
            case 16: {
                return this.isDerived();
            }
            case 17: {
                return this.getEContainingClass();
            }
        }
        return this.eDynamicGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.getEAnnotations().clear();
                this.getEAnnotations().addAll((Collection)newValue);
                return;
            }
            case 1: {
                this.setName((String)newValue);
                return;
            }
            case 2: {
                this.setOrdered((Boolean)newValue);
                return;
            }
            case 3: {
                this.setUnique((Boolean)newValue);
                return;
            }
            case 4: {
                this.setLowerBound((Integer)newValue);
                return;
            }
            case 5: {
                this.setUpperBound((Integer)newValue);
                return;
            }
            case 8: {
                this.setEType((EClassifier)newValue);
                return;
            }
            case 9: {
                this.setEGenericType((EGenericType)newValue);
                return;
            }
            case 10: {
                this.setChangeable((Boolean)newValue);
                return;
            }
            case 11: {
                this.setVolatile((Boolean)newValue);
                return;
            }
            case 12: {
                this.setTransient((Boolean)newValue);
                return;
            }
            case 13: {
                this.setDefaultValueLiteral((String)newValue);
                return;
            }
            case 15: {
                this.setUnsettable((Boolean)newValue);
                return;
            }
            case 16: {
                this.setDerived((Boolean)newValue);
                return;
            }
        }
        this.eDynamicSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getEAnnotations().clear();
                return;
            }
            case 1: {
                this.setName(NAME_EDEFAULT);
                return;
            }
            case 2: {
                this.setOrdered(true);
                return;
            }
            case 3: {
                this.setUnique(true);
                return;
            }
            case 4: {
                this.setLowerBound(0);
                return;
            }
            case 5: {
                this.setUpperBound(1);
                return;
            }
            case 8: {
                this.unsetEType();
                return;
            }
            case 9: {
                this.unsetEGenericType();
                return;
            }
            case 10: {
                this.setChangeable(true);
                return;
            }
            case 11: {
                this.setVolatile(false);
                return;
            }
            case 12: {
                this.setTransient(false);
                return;
            }
            case 13: {
                this.setDefaultValueLiteral(DEFAULT_VALUE_LITERAL_EDEFAULT);
                return;
            }
            case 15: {
                this.setUnsettable(false);
                return;
            }
            case 16: {
                this.setDerived(false);
                return;
            }
        }
        this.eDynamicUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.eAnnotations != null && !this.eAnnotations.isEmpty();
            }
            case 1: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
            case 2: {
                return (this.eFlags & 0x100) == 0;
            }
            case 3: {
                return (this.eFlags & 0x200) == 0;
            }
            case 4: {
                return this.lowerBound != 0;
            }
            case 5: {
                return this.upperBound != 1;
            }
            case 6: {
                return this.isMany();
            }
            case 7: {
                return this.isRequired();
            }
            case 8: {
                return this.isSetEType();
            }
            case 9: {
                return this.isSetEGenericType();
            }
            case 10: {
                return (this.eFlags & 0x400) == 0;
            }
            case 11: {
                return (this.eFlags & 0x800) != 0;
            }
            case 12: {
                return (this.eFlags & 0x1000) != 0;
            }
            case 13: {
                return DEFAULT_VALUE_LITERAL_EDEFAULT == null ? this.defaultValueLiteral != null : !DEFAULT_VALUE_LITERAL_EDEFAULT.equals(this.defaultValueLiteral);
            }
            case 14: {
                return DEFAULT_VALUE_EDEFAULT == null ? this.getDefaultValue() != null : !DEFAULT_VALUE_EDEFAULT.equals(this.getDefaultValue());
            }
            case 15: {
                return (this.eFlags & 0x2000) != 0;
            }
            case 16: {
                return (this.eFlags & 0x4000) != 0;
            }
            case 17: {
                return this.getEContainingClass() != null;
            }
        }
        return this.eDynamicIsSet(featureID);
    }

    @Override
    public Object eInvoke(int operationID, EList<?> arguments) throws InvocationTargetException {
        switch (operationID) {
            case 0: {
                return this.getEAnnotation((String)arguments.get(0));
            }
            case 1: {
                return this.getFeatureID();
            }
            case 2: {
                return this.getContainerClass();
            }
        }
        return this.eDynamicInvoke(operationID, arguments);
    }

    public void setContainerClass(Class<?> containerClass) {
        this.containerClass = containerClass;
    }

    @Override
    public boolean isResolveProxies() {
        return false;
    }

    @Override
    public boolean isContainer() {
        return false;
    }

    @Override
    public boolean isContainment() {
        return false;
    }

    @Override
    public EReference getEOpposite() {
        return null;
    }

    @Override
    public boolean isID() {
        return false;
    }

    @Override
    public EStructuralFeature.Internal.SettingDelegate getSettingDelegate() {
        if (this.settingDelegate == null) {
            EStructuralFeature featureMapFeature;
            EClass eClass = this.getEContainingClass();
            eClass.getFeatureCount();
            EReference eOpposite = this.getEOpposite();
            if (eOpposite != null) {
                eOpposite.getEContainingClass().getFeatureCount();
            }
            EClassifier eType = this.getEType();
            Class<?> dataClass = EcoreUtil.wrapperClassFor(eType.getInstanceClass());
            Object defaultValue = this.getDefaultValue();
            Object intrinsicDefaultValue = eType.getDefaultValue();
            EStructuralFeature.Internal.SettingDelegate.Factory settingDelegateFactory = EcoreUtil.getSettingDelegateFactory(this);
            this.settingDelegate = settingDelegateFactory != null ? settingDelegateFactory.createSettingDelegate(this) : (this.isDerived() && ((featureMapFeature = ExtendedMetaData.INSTANCE.getMixedFeature(eClass)) != null && featureMapFeature != this || (featureMapFeature = ExtendedMetaData.INSTANCE.getGroup(this)) != null) ? new InternalSettingDelegateFeatureMapDelegator(this, featureMapFeature) : (this.isMany() ? (this.isContainment() ? (eOpposite == null ? (this.isUnsettable() ? (dataClass == null ? (this.isResolveProxies() ? new InternalSettingDelegateMany(42, this) : new InternalSettingDelegateMany(0, this)) : (dataClass == Map.Entry.class ? new InternalSettingDelegateMany(50, BasicEMap.Entry.class, this) : (this.isResolveProxies() ? new InternalSettingDelegateMany(43, dataClass, this) : new InternalSettingDelegateMany(1, dataClass, this)))) : (dataClass == null ? (this.isResolveProxies() ? new InternalSettingDelegateMany(44, this) : new InternalSettingDelegateMany(2, this)) : (dataClass == Map.Entry.class ? new InternalSettingDelegateMany(41, BasicEMap.Entry.class, this) : (this.isResolveProxies() ? new InternalSettingDelegateMany(45, dataClass, this) : new InternalSettingDelegateMany(3, dataClass, this))))) : (this.isUnsettable() ? (dataClass == null ? (this.isResolveProxies() ? new InternalSettingDelegateMany(46, this, eOpposite) : new InternalSettingDelegateMany(4, this, eOpposite)) : (this.isResolveProxies() ? new InternalSettingDelegateMany(47, dataClass, this, eOpposite) : new InternalSettingDelegateMany(5, dataClass, this, eOpposite))) : (dataClass == null ? (this.isResolveProxies() ? new InternalSettingDelegateMany(48, this, eOpposite) : new InternalSettingDelegateMany(6, this, eOpposite)) : (this.isResolveProxies() ? new InternalSettingDelegateMany(49, dataClass, this, eOpposite) : new InternalSettingDelegateMany(7, dataClass, this, eOpposite))))) : (eType instanceof EDataType ? (dataClass == FeatureMap.Entry.class ? this.createFeatureMapSettingDelegate() : (this.isUnique() ? (this.isUnsettable() ? (dataClass == null ? new InternalSettingDelegateMany(8, this) : new InternalSettingDelegateMany(9, dataClass, this)) : (dataClass == null ? new InternalSettingDelegateMany(10, this) : new InternalSettingDelegateMany(11, dataClass, this))) : (this.isUnsettable() ? (dataClass == null ? new InternalSettingDelegateMany(12, this) : new InternalSettingDelegateMany(13, dataClass, this)) : (dataClass == null ? new InternalSettingDelegateMany(14, this) : new InternalSettingDelegateMany(15, dataClass, this))))) : (eOpposite == null ? (this.isResolveProxies() ? (this.isUnsettable() ? (dataClass == null ? new InternalSettingDelegateMany(16, this) : new InternalSettingDelegateMany(17, dataClass, this)) : (dataClass == null ? new InternalSettingDelegateMany(18, this) : new InternalSettingDelegateMany(19, dataClass, this))) : (this.isUnsettable() ? (dataClass == null ? new InternalSettingDelegateMany(20, this) : new InternalSettingDelegateMany(21, dataClass, this)) : (dataClass == null ? new InternalSettingDelegateMany(22, this) : new InternalSettingDelegateMany(23, dataClass, this)))) : (eOpposite.isMany() ? (this.isResolveProxies() ? (this.isUnsettable() ? (dataClass == null ? new InternalSettingDelegateMany(24, this, eOpposite) : new InternalSettingDelegateMany(25, dataClass, this, eOpposite)) : (dataClass == null ? new InternalSettingDelegateMany(26, this, eOpposite) : new InternalSettingDelegateMany(27, dataClass, this, eOpposite))) : (this.isUnsettable() ? (dataClass == null ? new InternalSettingDelegateMany(28, this, eOpposite) : new InternalSettingDelegateMany(29, dataClass, this, eOpposite)) : (dataClass == null ? new InternalSettingDelegateMany(30, this, eOpposite) : new InternalSettingDelegateMany(31, dataClass, this, eOpposite)))) : (this.isResolveProxies() ? (this.isUnsettable() ? (dataClass == null ? new InternalSettingDelegateMany(32, this, eOpposite) : new InternalSettingDelegateMany(33, dataClass, this, eOpposite)) : (dataClass == null ? new InternalSettingDelegateMany(34, this, eOpposite) : new InternalSettingDelegateMany(35, dataClass, this, eOpposite))) : (this.isUnsettable() ? (dataClass == null ? new InternalSettingDelegateMany(36, this, eOpposite) : new InternalSettingDelegateMany(37, dataClass, this, eOpposite)) : (dataClass == null ? new InternalSettingDelegateMany(38, this, eOpposite) : new InternalSettingDelegateMany(39, dataClass, this, eOpposite)))))))) : (this.isContainer() ? (this.isResolveProxies() ? new InternalSettingDelegateSingleContainerResolving((EClass)eType, this, eOpposite) : new InternalSettingDelegateSingleContainer((EClass)eType, this, eOpposite)) : (eType instanceof EDataType ? (dataClass == FeatureMap.Entry.class ? this.createFeatureMapSettingDelegate() : (this.isUnsettable() ? (dataClass == null ? new InternalSettingDelegateSingleDataUnsettableDynamic((EDataType)eType, defaultValue, intrinsicDefaultValue, this) : new InternalSettingDelegateSingleDataUnsettableStatic(dataClass, defaultValue, intrinsicDefaultValue, this)) : (dataClass == null ? new InternalSettingDelegateSingleDataDynamic((EDataType)eType, defaultValue, intrinsicDefaultValue, this) : new InternalSettingDelegateSingleDataStatic(dataClass, defaultValue, intrinsicDefaultValue, this)))) : (this.isContainment() ? (eOpposite == null ? (this.isUnsettable() ? (this.isResolveProxies() ? new InternalSettingDelegateSingleEObjectContainmentUnsettableResolving((EClass)eType, this) : new InternalSettingDelegateSingleEObjectContainmentUnsettable((EClass)eType, this)) : (this.isResolveProxies() ? new InternalSettingDelegateSingleEObjectContainmentResolving((EClass)eType, this) : new InternalSettingDelegateSingleEObjectContainment((EClass)eType, this))) : (this.isUnsettable() ? (this.isResolveProxies() ? new InternalSettingDelegateSingleEObjectContainmentWithInverseUnsettableResolving((EClass)eType, this, eOpposite) : new InternalSettingDelegateSingleEObjectContainmentWithInverseUnsettable((EClass)eType, this, eOpposite)) : (this.isResolveProxies() ? new InternalSettingDelegateSingleEObjectContainmentWithInverseResolving((EClass)eType, this, eOpposite) : new InternalSettingDelegateSingleEObjectContainmentWithInverse((EClass)eType, this, eOpposite)))) : (this.isResolveProxies() ? (eOpposite == null ? (this.isUnsettable() ? new InternalSettingDelegateSingleEObjectResolvingUnsettable((EClass)eType, this) : new InternalSettingDelegateSingleEObjectResolving((EClass)eType, this)) : (this.isUnsettable() ? new InternalSettingDelegateSingleEObjectResolvingWithInverseUnsettable((EClass)eType, this, eOpposite) : new InternalSettingDelegateSingleEObjectResolvingWithInverse((EClass)eType, this, eOpposite))) : (eOpposite == null ? (this.isUnsettable() ? new InternalSettingDelegateSingleEObjectUnsettable((EClass)eType, this) : new InternalSettingDelegateSingleEObject((EClass)eType, this)) : (this.isUnsettable() ? new InternalSettingDelegateSingleEObjectWithInverseUnsettable((EClass)eType, this, eOpposite) : new InternalSettingDelegateSingleEObjectWithInverse((EClass)eType, this, eOpposite)))))))));
        }
        return this.settingDelegate;
    }

    protected EStructuralFeature.Internal.SettingDelegate createFeatureMapSettingDelegate() {
        return new InternalSettingDelegateMany(40, this);
    }

    @Override
    public void setSettingDelegate(EStructuralFeature.Internal.SettingDelegate settingDelegate) {
        this.settingDelegate = settingDelegate;
    }

    @Override
    public boolean isFeatureMap() {
        if (this.cachedEType != this.eType) {
            this.cachedEType = this.getEType();
            this.cachedIsFeatureMap = this.eType != null && this.eType.getInstanceClassName() == "org.eclipse.emf.ecore.util.FeatureMap$Entry";
        }
        return this.cachedIsFeatureMap;
    }

    @Override
    public FeatureMap.Entry.Internal getFeatureMapEntryPrototype() {
        if (this.prototypeFeatureMapEntry == null) {
            EReference eOpposite = this.getEOpposite();
            this.prototypeFeatureMapEntry = eOpposite != null ? new InverseUpdatingFeatureMapEntry(this, null) : (this.isContainment() ? new ContainmentUpdatingFeatureMapEntry(this, null) : (ExtendedMetaData.INSTANCE.getFeatureKind(this) == 1 ? new SimpleContentFeatureMapEntry(this) : new SimpleFeatureMapEntry(this, null)));
        }
        return this.prototypeFeatureMapEntry;
    }

    @Override
    public void setFeatureMapEntryPrototype(FeatureMap.Entry.Internal prototype) {
        this.prototypeFeatureMapEntry = prototype;
    }

    @Override
    public BasicExtendedMetaData.EStructuralFeatureExtendedMetaData getExtendedMetaData() {
        return this.eStructuralFeatureExtendedMetaData;
    }

    @Override
    public void setExtendedMetaData(BasicExtendedMetaData.EStructuralFeatureExtendedMetaData eStructuralFeatureExtendedMetaData) {
        this.eStructuralFeatureExtendedMetaData = eStructuralFeatureExtendedMetaData;
    }

    @Override
    public void setName(String newName) {
        if (this.eContainer instanceof EClassImpl) {
            ((EClassImpl)this.eContainer).getESuperAdapter().setFlags(4);
        }
        super.setName(newName);
    }

    public static abstract class BasicFeatureMapEntry
    implements FeatureMap.Entry.Internal {
        protected final EStructuralFeature.Internal eStructuralFeature;

        BasicFeatureMapEntry(EStructuralFeature.Internal eStructuralFeature) {
            this.eStructuralFeature = eStructuralFeature;
        }

        public final EStructuralFeature getEStructuralFeature() {
            return this.eStructuralFeature;
        }

        public void validate(Object value) {
            if (value != null && !this.eStructuralFeature.getEType().isInstance(value)) {
                String valueClass = value instanceof EObject ? ((EObject)value).eClass().getName() : value.getClass().getName();
                throw new ClassCastException("The feature '" + this.eStructuralFeature.getName() + "'s type '" + this.eStructuralFeature.getEType().getName() + "' does not permit a value of type '" + valueClass + "'");
            }
        }

        public FeatureMap.Entry.Internal createEntry(Object value) {
            return this.createEntry((InternalEObject)value);
        }

        public FeatureMap.Entry.Internal createEntry(InternalEObject value) {
            return this.createEntry((Object)value);
        }

        public boolean equals(Object that) {
            if (this == that) {
                return true;
            }
            if (!(that instanceof FeatureMap.Entry)) {
                return false;
            }
            FeatureMap.Entry entry = (FeatureMap.Entry)that;
            if (entry.getEStructuralFeature() == this.getEStructuralFeature()) {
                Object value = this.getValue();
                return value == null ? entry.getValue() == null : value.equals(entry.getValue());
            }
            return false;
        }

        public int hashCode() {
            Object value = this.getValue();
            return this.getEStructuralFeature().hashCode() ^ (value == null ? 0 : value.hashCode());
        }

        public String toString() {
            EStructuralFeature eStructuralFeature = this.getEStructuralFeature();
            String prefix = eStructuralFeature.getEContainingClass().getEPackage().getNsPrefix();
            eStructuralFeature.getName();
            return String.valueOf(prefix != null && prefix.length() != 0 ? String.valueOf(prefix) + ":" + eStructuralFeature.getName() : eStructuralFeature.getName()) + "=" + this.getValue();
        }
    }

    public static final class ContainmentUpdatingFeatureMapEntry
    extends BasicFeatureMapEntry {
        protected final InternalEObject value;

        public ContainmentUpdatingFeatureMapEntry(EStructuralFeature.Internal eStructuralFeature, InternalEObject value) {
            super(eStructuralFeature);
            this.value = value;
        }

        public final Object getValue() {
            return this.value;
        }

        public final FeatureMap.Entry.Internal createEntry(InternalEObject value) {
            return new ContainmentUpdatingFeatureMapEntry(this.eStructuralFeature, value);
        }

        public final NotificationChain inverseAdd(InternalEObject owner, int featureID, NotificationChain notifications) {
            return this.inverseAdd(owner, this.value, featureID, notifications);
        }

        public final NotificationChain inverseRemove(InternalEObject owner, int featureID, NotificationChain notifications) {
            return this.inverseRemove(owner, this.value, featureID, notifications);
        }

        public final NotificationChain inverseAdd(InternalEObject owner, Object otherEnd, int featureID, NotificationChain notifications) {
            return this.inverseAdd(owner, (InternalEObject)otherEnd, featureID, notifications);
        }

        public final NotificationChain inverseRemove(InternalEObject owner, Object otherEnd, int featureID, NotificationChain notifications) {
            return this.inverseRemove(owner, (InternalEObject)otherEnd, featureID, notifications);
        }

        protected final NotificationChain inverseAdd(InternalEObject owner, InternalEObject otherEnd, int featureID, NotificationChain notifications) {
            if (otherEnd != null) {
                int containmentFeatureID = owner.eClass().getFeatureID(this.eStructuralFeature);
                notifications = otherEnd.eInverseAdd(owner, -1 - (containmentFeatureID == -1 ? featureID : containmentFeatureID), null, notifications);
            }
            return notifications;
        }

        protected final NotificationChain inverseRemove(InternalEObject owner, InternalEObject otherEnd, int featureID, NotificationChain notifications) {
            if (otherEnd != null) {
                int containmentFeatureID = owner.eClass().getFeatureID(this.eStructuralFeature);
                notifications = otherEnd.eInverseRemove(owner, -1 - (containmentFeatureID == -1 ? featureID : containmentFeatureID), null, notifications);
            }
            return notifications;
        }
    }

    public static class InternalSettingDelegateFeatureMapDelegator
    implements EStructuralFeature.Internal.SettingDelegate {
        protected EStructuralFeature feature;
        protected EStructuralFeature featureMapFeature;

        public InternalSettingDelegateFeatureMapDelegator(EStructuralFeature feature, EStructuralFeature featureMapFeature) {
            this.feature = feature;
            this.featureMapFeature = featureMapFeature;
        }

        protected EStructuralFeature.Setting createDynamicSetting(InternalEObject owner) {
            return ((FeatureMap.Internal)owner.eGet(this.featureMapFeature)).setting(this.feature);
        }

        public EStructuralFeature.Setting dynamicSetting(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index) {
            return this.createDynamicSetting(owner);
        }

        public Object dynamicGet(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index, boolean resolve, boolean coreType) {
            FeatureMap.Internal featureMap = (FeatureMap.Internal)owner.eGet(this.featureMapFeature);
            return featureMap.setting(this.feature).get(resolve);
        }

        public void dynamicSet(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index, Object newValue) {
            FeatureMap.Internal featureMap = (FeatureMap.Internal)owner.eGet(this.featureMapFeature);
            featureMap.setting(this.feature).set(newValue);
        }

        public void dynamicUnset(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index) {
            FeatureMap.Internal featureMap = (FeatureMap.Internal)owner.eGet(this.featureMapFeature);
            featureMap.setting(this.feature).unset();
        }

        public boolean dynamicIsSet(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index) {
            FeatureMap.Internal featureMap = (FeatureMap.Internal)owner.eGet(this.featureMapFeature);
            return featureMap.setting(this.feature).isSet();
        }

        public NotificationChain dynamicInverseAdd(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index, InternalEObject otherEnd, NotificationChain notifications) {
            FeatureMap.Internal featureMap = (FeatureMap.Internal)owner.eGet(this.featureMapFeature);
            return featureMap.basicAdd(this.feature, otherEnd, notifications);
        }

        public NotificationChain dynamicInverseRemove(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index, InternalEObject otherEnd, NotificationChain notifications) {
            FeatureMap.Internal featureMap = (FeatureMap.Internal)owner.eGet(this.featureMapFeature);
            return featureMap.basicRemove(this.feature, otherEnd, notifications);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class InternalSettingDelegateMany
    implements EStructuralFeature.Internal.SettingDelegate {
        public static final int CONTAINMENT_UNSETTABLE_DYNAMIC = 0;
        public static final int CONTAINMENT_UNSETTABLE = 1;
        public static final int CONTAINMENT_DYNAMIC = 2;
        public static final int CONTAINMENT = 3;
        public static final int CONTAINMENT_INVERSE_UNSETTABLE_DYNAMIC = 4;
        public static final int CONTAINMENT_INVERSE_UNSETTABLE = 5;
        public static final int CONTAINMENT_INVERSE_DYNAMIC = 6;
        public static final int CONTAINMENT_INVERSE = 7;
        public static final int DATA_UNIQUE_UNSETTABLE_DYNAMIC = 8;
        public static final int DATA_UNIQUE_UNSETTABLE = 9;
        public static final int DATA_UNIQUE_DYNAMIC = 10;
        public static final int DATA_UNIQUE = 11;
        public static final int DATA_UNSETTABLE_DYNAMIC = 12;
        public static final int DATA_UNSETTABLE = 13;
        public static final int DATA_DYNAMIC = 14;
        public static final int DATA = 15;
        public static final int EOBJECT_RESOLVE_UNSETTABLE_DYNAMIC = 16;
        public static final int EOBJECT_RESOLVE_UNSETTABLE = 17;
        public static final int EOBJECT_RESOLVE_DYNAMIC = 18;
        public static final int EOBJECT_RESOLVE = 19;
        public static final int EOBJECT_UNSETTABLE_DYNAMIC = 20;
        public static final int EOBJECT_UNSETTABLE = 21;
        public static final int EOBJECT_DYNAMIC = 22;
        public static final int EOBJECT = 23;
        public static final int MANY_INVERSE_RESOLVE_UNSETTABLE_DYNAMIC = 24;
        public static final int MANY_INVERSE_RESOLVE_UNSETTABLE = 25;
        public static final int MANY_INVERSE_RESOLVE_DYNAMIC = 26;
        public static final int MANY_INVERSE_RESOLVE = 27;
        public static final int MANY_INVERSE_UNSETTABLE_DYNAMIC = 28;
        public static final int MANY_INVERSE_UNSETTABLE = 29;
        public static final int MANY_INVERSE_DYNAMIC = 30;
        public static final int MANY_INVERSE = 31;
        public static final int INVERSE_RESOLVE_UNSETTABLE_DYNAMIC = 32;
        public static final int INVERSE_RESOLVE_UNSETTABLE = 33;
        public static final int INVERSE_RESOLVE_DYNAMIC = 34;
        public static final int INVERSE_RESOLVE = 35;
        public static final int INVERSE_UNSETTABLE_DYNAMIC = 36;
        public static final int INVERSE_UNSETTABLE = 37;
        public static final int INVERSE_DYNAMIC = 38;
        public static final int INVERSE = 39;
        public static final int FEATURE_MAP = 40;
        public static final int EMAP = 41;
        public static final int CONTAINMENT_UNSETTABLE_DYNAMIC_RESOLVE = 42;
        public static final int CONTAINMENT_UNSETTABLE_RESOLVE = 43;
        public static final int CONTAINMENT_DYNAMIC_RESOLVE = 44;
        public static final int CONTAINMENT_RESOLVE = 45;
        public static final int CONTAINMENT_INVERSE_UNSETTABLE_DYNAMIC_RESOLVE = 46;
        public static final int CONTAINMENT_INVERSE_UNSETTABLE_RESOLVE = 47;
        public static final int CONTAINMENT_INVERSE_DYNAMIC_RESOLVE = 48;
        public static final int CONTAINMENT_INVERSE_RESOLVE = 49;
        public static final int EMAP_UNSETTABLE = 50;
        protected int style;
        protected int dynamicKind;
        protected Class<?> dataClass;
        protected EStructuralFeature feature;
        protected EReference inverseFeature;

        public InternalSettingDelegateMany(int style, Class<?> dataClass, EStructuralFeature feature) {
            this.style = style;
            this.dataClass = dataClass;
            this.feature = feature;
        }

        public InternalSettingDelegateMany(int style, EStructuralFeature feature) {
            this.style = style;
            this.dataClass = Object.class;
            this.dynamicKind = EcoreEList.Generic.kind(feature);
            this.feature = feature;
        }

        public InternalSettingDelegateMany(int style, Class<?> dataClass, EStructuralFeature feature, EReference inverseFeature) {
            this.style = style;
            this.dataClass = dataClass;
            this.feature = feature;
            this.inverseFeature = inverseFeature;
        }

        public InternalSettingDelegateMany(int style, EStructuralFeature feature, EReference inverseFeature) {
            this.style = style;
            this.dataClass = Object.class;
            this.dynamicKind = EcoreEList.Generic.kind(feature);
            this.feature = feature;
            this.inverseFeature = inverseFeature;
        }

        protected EStructuralFeature.Setting createDynamicSetting(InternalEObject owner) {
            switch (this.style) {
                case 0: 
                case 2: 
                case 4: 
                case 6: 
                case 8: 
                case 10: 
                case 12: 
                case 14: 
                case 16: 
                case 18: 
                case 20: 
                case 22: 
                case 24: 
                case 26: 
                case 28: 
                case 30: 
                case 32: 
                case 34: 
                case 36: 
                case 38: 
                case 42: 
                case 44: 
                case 46: 
                case 48: {
                    return new EcoreEList.Dynamic(this.dynamicKind, this.dataClass, owner, this.feature);
                }
                case 1: {
                    return new EObjectContainmentEList.Unsettable(this.dataClass, owner, owner.eClass().getFeatureID(this.feature));
                }
                case 43: {
                    return new EObjectContainmentEList.Unsettable.Resolving(this.dataClass, owner, owner.eClass().getFeatureID(this.feature));
                }
                case 3: {
                    return new EObjectContainmentEList(this.dataClass, owner, owner.eClass().getFeatureID(this.feature));
                }
                case 45: {
                    return new EObjectContainmentEList.Resolving(this.dataClass, owner, owner.eClass().getFeatureID(this.feature));
                }
                case 41: {
                    return new EcoreEMap((EClass)this.feature.getEType(), this.dataClass, owner, owner.eClass().getFeatureID(this.feature));
                }
                case 50: {
                    return new EcoreEMap.Unsettable((EClass)this.feature.getEType(), this.dataClass, owner, owner.eClass().getFeatureID(this.feature));
                }
                case 5: {
                    return new EObjectContainmentWithInverseEList.Unsettable(this.dataClass, owner, owner.eClass().getFeatureID(this.feature), this.inverseFeature.getFeatureID());
                }
                case 47: {
                    return new EObjectContainmentWithInverseEList.Unsettable.Resolving(this.dataClass, owner, owner.eClass().getFeatureID(this.feature), this.inverseFeature.getFeatureID());
                }
                case 7: {
                    return new EObjectContainmentWithInverseEList(this.dataClass, owner, owner.eClass().getFeatureID(this.feature), this.inverseFeature.getFeatureID());
                }
                case 49: {
                    return new EObjectContainmentWithInverseEList.Resolving(this.dataClass, owner, owner.eClass().getFeatureID(this.feature), this.inverseFeature.getFeatureID());
                }
                case 9: {
                    return new EDataTypeUniqueEList.Unsettable(this.dataClass, owner, owner.eClass().getFeatureID(this.feature));
                }
                case 11: {
                    return new EDataTypeUniqueEList(this.dataClass, owner, owner.eClass().getFeatureID(this.feature));
                }
                case 13: {
                    return new EDataTypeEList.Unsettable(this.dataClass, owner, owner.eClass().getFeatureID(this.feature));
                }
                case 15: {
                    return new EDataTypeEList(this.dataClass, owner, owner.eClass().getFeatureID(this.feature));
                }
                case 17: {
                    return new EObjectResolvingEList.Unsettable(this.dataClass, owner, owner.eClass().getFeatureID(this.feature));
                }
                case 19: {
                    return new EObjectResolvingEList(this.dataClass, owner, owner.eClass().getFeatureID(this.feature));
                }
                case 21: {
                    return new EObjectEList.Unsettable(this.dataClass, owner, owner.eClass().getFeatureID(this.feature));
                }
                case 23: {
                    return new EObjectEList(this.dataClass, owner, owner.eClass().getFeatureID(this.feature));
                }
                case 25: {
                    return new EObjectWithInverseResolvingEList.Unsettable.ManyInverse(this.dataClass, owner, owner.eClass().getFeatureID(this.feature), this.inverseFeature.getFeatureID());
                }
                case 27: {
                    return new EObjectWithInverseResolvingEList.ManyInverse(this.dataClass, owner, owner.eClass().getFeatureID(this.feature), this.inverseFeature.getFeatureID());
                }
                case 29: {
                    return new EObjectWithInverseEList.Unsettable.ManyInverse(this.dataClass, owner, owner.eClass().getFeatureID(this.feature), this.inverseFeature.getFeatureID());
                }
                case 31: {
                    return new EObjectWithInverseEList.ManyInverse(this.dataClass, owner, owner.eClass().getFeatureID(this.feature), this.inverseFeature.getFeatureID());
                }
                case 33: {
                    return new EObjectWithInverseResolvingEList.Unsettable(this.dataClass, owner, owner.eClass().getFeatureID(this.feature), this.inverseFeature.getFeatureID());
                }
                case 35: {
                    return new EObjectWithInverseResolvingEList(this.dataClass, owner, owner.eClass().getFeatureID(this.feature), this.inverseFeature.getFeatureID());
                }
                case 37: {
                    return new EObjectWithInverseEList.Unsettable(this.dataClass, owner, owner.eClass().getFeatureID(this.feature), this.inverseFeature.getFeatureID());
                }
                case 39: {
                    return new EObjectWithInverseEList(this.dataClass, owner, owner.eClass().getFeatureID(this.feature), this.inverseFeature.getFeatureID());
                }
                case 40: {
                    return new BasicFeatureMap(owner, owner.eClass().getFeatureID(this.feature));
                }
            }
            throw new RuntimeException("Unknown feature style: " + this.style);
        }

        @Override
        public EStructuralFeature.Setting dynamicSetting(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index) {
            Object setting = settings.dynamicGet(index);
            if (setting == null) {
                setting = this.createDynamicSetting(owner);
                settings.dynamicSet(index, setting);
            }
            if (setting instanceof EStructuralFeature.Setting) {
                return (EStructuralFeature.Setting)setting;
            }
            List result = (List)settings.dynamicGet(index);
            return new SettingMany(owner, this.feature, result);
        }

        @Override
        public Object dynamicGet(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index, boolean resolve, boolean coreType) {
            Object result = settings.dynamicGet(index);
            if (result == null) {
                result = this.createDynamicSetting(owner);
                settings.dynamicSet(index, result);
            }
            if (!coreType) {
                switch (this.style) {
                    case 41: 
                    case 50: {
                        return ((EMap)result).map();
                    }
                    case 40: {
                        return ((FeatureMap.Internal)result).getWrapper();
                    }
                }
            }
            return result;
        }

        @Override
        public void dynamicSet(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index, Object newValue) {
            EStructuralFeature.Setting setting = (EStructuralFeature.Setting)settings.dynamicGet(index);
            if (setting == null) {
                setting = this.createDynamicSetting(owner);
                settings.dynamicSet(index, setting);
            }
            setting.set(newValue);
        }

        @Override
        public void dynamicUnset(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index) {
            EStructuralFeature.Setting setting = (EStructuralFeature.Setting)settings.dynamicGet(index);
            if (setting == null) {
                setting = this.createDynamicSetting(owner);
                settings.dynamicSet(index, setting);
            }
            setting.unset();
        }

        @Override
        public boolean dynamicIsSet(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index) {
            Object setting = settings.dynamicGet(index);
            if (setting == null) {
                return false;
            }
            return ((EStructuralFeature.Setting)setting).isSet();
        }

        @Override
        public NotificationChain dynamicInverseAdd(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index, InternalEObject otherEnd, NotificationChain notifications) {
            Object setting = settings.dynamicGet(index);
            if (setting == null) {
                setting = this.createDynamicSetting(owner);
                settings.dynamicSet(index, setting);
            }
            NotificationChain result = ((InternalEList)setting).basicAdd(otherEnd, notifications);
            return result;
        }

        @Override
        public NotificationChain dynamicInverseRemove(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index, InternalEObject otherEnd, NotificationChain notifications) {
            Object setting = settings.dynamicGet(index);
            if (setting != null) {
                notifications = ((InternalEList)setting).basicRemove(otherEnd, notifications);
            }
            return notifications;
        }
    }

    public static abstract class InternalSettingDelegateSingle
    implements EStructuralFeature.Internal.SettingDelegate {
        public static final Object NIL = EStructuralFeature.Internal.DynamicValueHolder.NIL;
        protected EStructuralFeature feature;

        public InternalSettingDelegateSingle(EStructuralFeature feature) {
            this.feature = feature;
        }

        public EStructuralFeature.Setting dynamicSetting(final InternalEObject owner, final EStructuralFeature.Internal.DynamicValueHolder settings, final int index) {
            return new EStructuralFeature.Setting(){

                public EObject getEObject() {
                    return owner;
                }

                public EStructuralFeature getEStructuralFeature() {
                    return InternalSettingDelegateSingle.this.feature;
                }

                public Object get(boolean resolve) {
                    return InternalSettingDelegateSingle.this.dynamicGet(owner, settings, index, resolve, true);
                }

                public void set(Object newValue) {
                    InternalSettingDelegateSingle.this.dynamicSet(owner, settings, index, newValue);
                }

                public boolean isSet() {
                    return InternalSettingDelegateSingle.this.dynamicIsSet(owner, settings, index);
                }

                public void unset() {
                    InternalSettingDelegateSingle.this.dynamicUnset(owner, settings, index);
                }
            };
        }

        public NotificationChain dynamicInverseAdd(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index, InternalEObject otherEnd, NotificationChain notifications) {
            throw new UnsupportedOperationException();
        }

        public NotificationChain dynamicInverseRemove(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index, InternalEObject otherEnd, NotificationChain notifications) {
            throw new UnsupportedOperationException();
        }
    }

    public static class InternalSettingDelegateSingleContainer
    extends InternalSettingDelegateSingle {
        protected EClass eClass;
        protected EReference inverseFeature;

        public InternalSettingDelegateSingleContainer(EClass eClass, EStructuralFeature feature, EReference inverseFeature) {
            super(feature);
            this.eClass = eClass;
            this.inverseFeature = inverseFeature;
        }

        public Object dynamicGet(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index, boolean resolve, boolean coreType) {
            return owner.eContainmentFeature() == this.inverseFeature ? (this.isResolveProxies() && resolve ? owner.eContainer() : owner.eInternalContainer()) : null;
        }

        protected boolean isResolveProxies() {
            return false;
        }

        public void dynamicSet(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index, Object newValue) {
            if (newValue != null && !this.eClass.isInstance(newValue)) {
                throw new ClassCastException("The value of type '" + (newValue instanceof EObject ? ((EObject)newValue).eClass().toString() : newValue.getClass().toString()) + "' must be of type '" + this.eClass + "'");
            }
            InternalEObject eContainer = owner.eInternalContainer();
            int featureID = owner.eClass().getFeatureID(this.feature);
            if (newValue != eContainer || owner.eContainerFeatureID() != featureID && newValue != null) {
                if (EcoreUtil.isAncestor(owner, (EObject)newValue)) {
                    throw new IllegalArgumentException("Recursive containment not allowed for " + owner.toString());
                }
                NotificationChain notifications = null;
                if (eContainer != null) {
                    notifications = owner.eBasicRemoveFromContainer(notifications);
                }
                InternalEObject internalEObject = (InternalEObject)newValue;
                if (newValue != null) {
                    notifications = internalEObject.eInverseAdd(owner, internalEObject.eClass().getFeatureID(this.inverseFeature), null, notifications);
                }
                if ((notifications = owner.eBasicSetContainer(internalEObject, featureID, notifications)) != null) {
                    notifications.dispatch();
                }
            } else if (owner.eNotificationRequired()) {
                owner.eNotify((Notification)new ENotificationImpl(owner, 1, featureID, newValue, newValue));
            }
        }

        public void dynamicUnset(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index) {
            InternalEObject eContainer = owner.eInternalContainer();
            if (eContainer != null) {
                NotificationChain notifications = owner.eBasicRemoveFromContainer(null);
                int featureID = owner.eClass().getFeatureID(this.feature);
                notifications = owner.eBasicSetContainer(null, featureID, notifications);
                if (notifications != null) {
                    notifications.dispatch();
                }
            } else if (owner.eNotificationRequired()) {
                owner.eNotify((Notification)new ENotificationImpl(owner, 1, this.feature, null, null));
            }
        }

        public boolean dynamicIsSet(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index) {
            int featureID = owner.eClass().getFeatureID(this.feature);
            return owner.eInternalContainer() != null && owner.eContainerFeatureID() == featureID;
        }

        public NotificationChain dynamicInverseAdd(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index, InternalEObject otherEnd, NotificationChain notifications) {
            if (owner.eInternalContainer() != null) {
                notifications = owner.eBasicRemoveFromContainer(notifications);
            }
            int featureID = owner.eClass().getFeatureID(this.feature);
            return owner.eBasicSetContainer(otherEnd, featureID, notifications);
        }

        public NotificationChain dynamicInverseRemove(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index, InternalEObject otherEnd, NotificationChain notifications) {
            int featureID = owner.eClass().getFeatureID(this.feature);
            return owner.eBasicSetContainer(null, featureID, notifications);
        }
    }

    public static class InternalSettingDelegateSingleContainerResolving
    extends InternalSettingDelegateSingleContainer {
        public InternalSettingDelegateSingleContainerResolving(EClass eClass, EStructuralFeature feature, EReference inverseFeature) {
            super(eClass, feature, inverseFeature);
        }

        protected boolean isResolveProxies() {
            return true;
        }
    }

    public static class InternalSettingDelegateSingleData
    extends InternalSettingDelegateSingle {
        protected Object defaultValue;
        protected Object intrinsicDefaultValue;

        public InternalSettingDelegateSingleData(Object defaultValue, Object intrinsicDefaultValue, EStructuralFeature feature) {
            super(feature);
            this.defaultValue = defaultValue;
            this.intrinsicDefaultValue = intrinsicDefaultValue;
        }

        protected void validate(Object object) {
            throw new ClassCastException();
        }

        public Object dynamicGet(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index, boolean resolve, boolean coreType) {
            Object result = settings.dynamicGet(index);
            if (result == null) {
                return this.defaultValue;
            }
            if (result == NIL) {
                return null;
            }
            return result;
        }

        public void dynamicSet(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index, Object newValue) {
            if (owner.eNotificationRequired()) {
                Object oldValue = this.dynamicGet(owner, settings, index, false, true);
                if (newValue == null) {
                    if (this.intrinsicDefaultValue != null) {
                        settings.dynamicSet(index, null);
                        newValue = this.defaultValue;
                    } else if (this.defaultValue != null) {
                        settings.dynamicSet(index, NIL);
                    } else {
                        settings.dynamicSet(index, null);
                    }
                } else {
                    this.validate(newValue);
                    settings.dynamicSet(index, newValue);
                }
                owner.eNotify((Notification)new ENotificationImpl(owner, 1, this.feature, oldValue, newValue));
            } else if (newValue == null) {
                if (this.intrinsicDefaultValue != null) {
                    settings.dynamicSet(index, null);
                } else if (this.defaultValue != null) {
                    settings.dynamicSet(index, NIL);
                } else {
                    settings.dynamicSet(index, null);
                }
            } else {
                this.validate(newValue);
                settings.dynamicSet(index, newValue);
            }
        }

        public void dynamicUnset(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index) {
            if (owner.eNotificationRequired()) {
                Object oldValue = this.dynamicGet(owner, settings, index, false, true);
                settings.dynamicUnset(index);
                owner.eNotify((Notification)new ENotificationImpl(owner, 1, this.feature, oldValue, this.defaultValue));
            } else {
                settings.dynamicUnset(index);
            }
        }

        public boolean dynamicIsSet(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index) {
            Object setting = settings.dynamicGet(index);
            if (setting == null) {
                return false;
            }
            if (setting == NIL) {
                return true;
            }
            return !setting.equals(this.defaultValue);
        }
    }

    public static class InternalSettingDelegateSingleDataDynamic
    extends InternalSettingDelegateSingleData {
        protected EDataType eDataType;

        public InternalSettingDelegateSingleDataDynamic(EDataType eDataType, Object defaultValue, Object intrinsicDefaultValue, EStructuralFeature feature) {
            super(defaultValue, intrinsicDefaultValue, feature);
            this.eDataType = eDataType;
        }

        protected void validate(Object object) {
            if (!this.eDataType.isInstance(object)) {
                throw new ClassCastException("The value of type '" + object.getClass() + "' must be of type '" + this.eDataType + "'");
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class InternalSettingDelegateSingleDataStatic
    extends InternalSettingDelegateSingleData {
        protected Class<?> dataClass;

        public InternalSettingDelegateSingleDataStatic(Class<?> dataClass, Object defaultValue, Object intrinsicDefaultValue, EStructuralFeature feature) {
            super(defaultValue, intrinsicDefaultValue, feature);
            this.dataClass = dataClass;
        }

        @Override
        protected void validate(Object object) {
            if (!this.dataClass.isInstance(object)) {
                throw new ClassCastException("The value of type '" + object.getClass() + "' must be of type '" + this.dataClass + "'");
            }
        }
    }

    public static class InternalSettingDelegateSingleDataUnsettable
    extends InternalSettingDelegateSingleData {
        public InternalSettingDelegateSingleDataUnsettable(Object defaultValue, Object intrinsicDefaultValue, EStructuralFeature feature) {
            super(defaultValue, intrinsicDefaultValue, feature);
        }

        public void dynamicSet(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index, Object newValue) {
            if (owner.eNotificationRequired()) {
                boolean oldIsSet = true;
                Object oldValue = settings.dynamicGet(index);
                if (oldValue == null) {
                    oldIsSet = false;
                    oldValue = this.defaultValue;
                } else if (oldValue == NIL) {
                    oldValue = null;
                }
                if (newValue == null) {
                    if (this.intrinsicDefaultValue != null) {
                        settings.dynamicSet(index, null);
                        newValue = this.defaultValue;
                    } else {
                        settings.dynamicSet(index, NIL);
                    }
                } else {
                    this.validate(newValue);
                    settings.dynamicSet(index, newValue);
                }
                owner.eNotify((Notification)new ENotificationImpl(owner, 1, this.feature, oldValue, newValue, !oldIsSet));
            } else if (newValue == null) {
                if (this.intrinsicDefaultValue != null) {
                    settings.dynamicSet(index, null);
                } else {
                    settings.dynamicSet(index, NIL);
                }
            } else {
                this.validate(newValue);
                settings.dynamicSet(index, newValue);
            }
        }

        public void dynamicUnset(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index) {
            if (owner.eNotificationRequired()) {
                boolean oldIsSet = true;
                Object oldValue = settings.dynamicGet(index);
                if (oldValue == null) {
                    oldIsSet = false;
                    oldValue = this.defaultValue;
                } else if (oldValue == NIL) {
                    oldValue = null;
                }
                settings.dynamicUnset(index);
                owner.eNotify((Notification)new ENotificationImpl(owner, 2, this.feature, oldValue, this.defaultValue, oldIsSet));
            } else {
                settings.dynamicUnset(index);
            }
        }

        public boolean dynamicIsSet(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index) {
            Object setting = settings.dynamicGet(index);
            return setting != null;
        }
    }

    public static class InternalSettingDelegateSingleDataUnsettableDynamic
    extends InternalSettingDelegateSingleDataUnsettable {
        protected EDataType eDataType;

        public InternalSettingDelegateSingleDataUnsettableDynamic(EDataType eDataType, Object defaultValue, Object intrinsicDefaultValue, EStructuralFeature feature) {
            super(defaultValue, intrinsicDefaultValue, feature);
            this.eDataType = eDataType;
        }

        protected void validate(Object object) {
            if (!this.eDataType.isInstance(object)) {
                throw new ClassCastException("The value of type '" + object.getClass() + "' must be of type '" + this.eDataType + "'");
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class InternalSettingDelegateSingleDataUnsettableStatic
    extends InternalSettingDelegateSingleDataUnsettable {
        protected Class<?> dataClass;

        public InternalSettingDelegateSingleDataUnsettableStatic(Class<?> dataClass, Object defaultValue, Object intrinsicDefaultValue, EStructuralFeature feature) {
            super(defaultValue, intrinsicDefaultValue, feature);
            this.dataClass = dataClass;
        }

        @Override
        protected void validate(Object object) {
            if (!this.dataClass.isInstance(object)) {
                throw new ClassCastException("The value of type '" + object.getClass() + "' must be of type '" + this.dataClass + "'");
            }
        }
    }

    public static class InternalSettingDelegateSingleEObject
    extends InternalSettingDelegateSingle {
        protected EClass eClass;
        protected EReference inverseFeature;

        public InternalSettingDelegateSingleEObject(EClass eClass, EStructuralFeature feature) {
            super(feature);
            this.eClass = eClass;
        }

        public InternalSettingDelegateSingleEObject(EClass eClass, EStructuralFeature feature, EReference inverseFeature) {
            super(feature);
            this.eClass = eClass;
            this.inverseFeature = inverseFeature;
        }

        protected boolean isUnsettable() {
            return false;
        }

        protected boolean hasInverse() {
            return false;
        }

        protected boolean isContainment() {
            return false;
        }

        protected boolean isResolveProxies() {
            return false;
        }

        public Object dynamicGet(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index, boolean resolve, boolean coreType) {
            Object result = settings.dynamicGet(index);
            if (this.isUnsettable() && result == NIL) {
                return null;
            }
            if (this.isResolveProxies() && resolve && result != null) {
                EObject resolvedEObject;
                InternalEObject oldEObject = (InternalEObject)result;
                if (oldEObject.eIsProxy() && oldEObject != (resolvedEObject = owner.eResolveProxy(oldEObject))) {
                    if (!this.eClass.isInstance(resolvedEObject)) {
                        throw new ClassCastException("The value of type '" + resolvedEObject.getClass() + "' must be of type '" + this.eClass + "'");
                    }
                    result = resolvedEObject;
                    settings.dynamicSet(index, result);
                    if (this.isContainment()) {
                        InternalEObject newEObject = (InternalEObject)resolvedEObject;
                        NotificationChain notificationChain = oldEObject.eInverseRemove(owner, this.inverseFeature == null ? -1 - owner.eClass().getFeatureID(this.feature) : oldEObject.eClass().getFeatureID(this.inverseFeature), null, null);
                        if (newEObject.eInternalContainer() == null) {
                            notificationChain = newEObject.eInverseAdd(owner, this.inverseFeature == null ? -1 - owner.eClass().getFeatureID(this.feature) : newEObject.eClass().getFeatureID(this.inverseFeature), null, notificationChain);
                        }
                        if (notificationChain != null) {
                            notificationChain.dispatch();
                        }
                    }
                    if (owner.eNotificationRequired()) {
                        owner.eNotify((Notification)new ENotificationImpl(owner, 9, this.feature, (Object)oldEObject, (Object)resolvedEObject));
                    }
                }
                return result;
            }
            return result;
        }

        public void dynamicSet(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index, Object newValue) {
            boolean oldIsSet;
            Object oldValue = settings.dynamicGet(index);
            boolean bl = oldIsSet = oldValue != null;
            if (this.isUnsettable() && oldValue == NIL) {
                oldValue = null;
            }
            NotificationChain notifications = null;
            if (this.hasInverse()) {
                if (oldValue != newValue) {
                    InternalEObject internalEObject;
                    if (oldValue != null) {
                        internalEObject = (InternalEObject)oldValue;
                        notifications = internalEObject.eInverseRemove(owner, internalEObject.eClass().getFeatureID(this.inverseFeature), null, notifications);
                    }
                    if (newValue != null) {
                        internalEObject = (InternalEObject)newValue;
                        notifications = internalEObject.eInverseAdd(owner, internalEObject.eClass().getFeatureID(this.inverseFeature), null, notifications);
                    }
                }
            } else if (this.isContainment() && oldValue != newValue) {
                if (oldValue != null) {
                    notifications = ((InternalEObject)oldValue).eInverseRemove(owner, -1 - owner.eClass().getFeatureID(this.feature), null, notifications);
                }
                if (newValue != null) {
                    notifications = ((InternalEObject)newValue).eInverseAdd(owner, -1 - owner.eClass().getFeatureID(this.feature), null, notifications);
                }
            }
            if (newValue == null && this.isUnsettable()) {
                settings.dynamicSet(index, NIL);
            } else {
                settings.dynamicSet(index, newValue);
            }
            if (owner.eNotificationRequired()) {
                ENotificationImpl notification = new ENotificationImpl(owner, 1, this.feature, oldValue, newValue, this.isUnsettable() && !oldIsSet);
                if (notifications == null) {
                    owner.eNotify((Notification)notification);
                } else {
                    notifications.add((Notification)notification);
                    notifications.dispatch();
                }
            } else if (notifications != null) {
                notifications.dispatch();
            }
        }

        public void dynamicUnset(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index) {
            Object oldValue = settings.dynamicGet(index);
            if (this.isUnsettable() && oldValue == NIL) {
                oldValue = null;
            }
            NotificationChain notifications = null;
            if (oldValue != null) {
                if (this.hasInverse()) {
                    InternalEObject internalEObject = (InternalEObject)oldValue;
                    notifications = internalEObject.eInverseRemove(owner, internalEObject.eClass().getFeatureID(this.inverseFeature), null, notifications);
                } else if (this.isContainment()) {
                    notifications = ((InternalEObject)oldValue).eInverseRemove(owner, -1 - owner.eClass().getFeatureID(this.feature), null, notifications);
                }
            }
            settings.dynamicUnset(index);
            if (owner.eNotificationRequired()) {
                ENotificationImpl notification = new ENotificationImpl(owner, this.isUnsettable() ? 2 : 1, this.feature, oldValue, null);
                if (notifications == null) {
                    owner.eNotify((Notification)notification);
                } else {
                    notifications.add((Notification)notification);
                    notifications.dispatch();
                }
            } else if (notifications != null) {
                notifications.dispatch();
            }
        }

        public boolean dynamicIsSet(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index) {
            Object setting = settings.dynamicGet(index);
            return setting != null;
        }

        public NotificationChain dynamicInverseAdd(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index, InternalEObject otherEnd, NotificationChain notifications) {
            Object oldValue = settings.dynamicGet(index);
            if (oldValue == NIL) {
                oldValue = null;
            }
            settings.dynamicSet(index, otherEnd);
            if (this.hasInverse()) {
                if (oldValue != otherEnd && oldValue != null) {
                    InternalEObject internalEObject = (InternalEObject)oldValue;
                    notifications = internalEObject.eInverseRemove(owner, internalEObject.eClass().getFeatureID(this.inverseFeature), null, notifications);
                }
            } else if (this.isContainment() && oldValue != null) {
                notifications = ((InternalEObject)oldValue).eInverseRemove(owner, -1 - owner.eClass().getFeatureID(this.feature), null, notifications);
            }
            if (owner.eNotificationRequired()) {
                if (notifications == null) {
                    notifications = new NotificationChainImpl(4);
                }
                notifications.add((Notification)new ENotificationImpl(owner, 1, this.feature, oldValue, (Object)otherEnd));
            }
            return notifications;
        }

        public NotificationChain dynamicInverseRemove(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int index, InternalEObject otherEnd, NotificationChain notifications) {
            Object oldValue = settings.dynamicGet(index);
            if (oldValue == NIL) {
                oldValue = null;
            }
            settings.dynamicUnset(index);
            if (owner.eNotificationRequired()) {
                if (notifications == null) {
                    notifications = new NotificationChainImpl(4);
                }
                if (this.isUnsettable()) {
                    notifications.add((Notification)new ENotificationImpl(owner, 2, this.feature, oldValue, null));
                } else {
                    notifications.add((Notification)new ENotificationImpl(owner, 1, this.feature, oldValue, null));
                }
            }
            return notifications;
        }
    }

    public static class InternalSettingDelegateSingleEObjectContainment
    extends InternalSettingDelegateSingleEObject {
        public InternalSettingDelegateSingleEObjectContainment(EClass eClass, EStructuralFeature feature) {
            super(eClass, feature);
        }

        public InternalSettingDelegateSingleEObjectContainment(EClass eClass, EStructuralFeature feature, EReference inverseFeature) {
            super(eClass, feature, inverseFeature);
        }

        protected boolean isContainment() {
            return true;
        }
    }

    public static class InternalSettingDelegateSingleEObjectContainmentResolving
    extends InternalSettingDelegateSingleEObjectContainment {
        public InternalSettingDelegateSingleEObjectContainmentResolving(EClass eClass, EStructuralFeature feature) {
            super(eClass, feature);
        }

        protected boolean isResolveProxies() {
            return true;
        }
    }

    public static class InternalSettingDelegateSingleEObjectContainmentUnsettable
    extends InternalSettingDelegateSingleEObjectContainment {
        public InternalSettingDelegateSingleEObjectContainmentUnsettable(EClass eClass, EStructuralFeature feature) {
            super(eClass, feature);
        }

        protected boolean isUnsettable() {
            return true;
        }
    }

    public static class InternalSettingDelegateSingleEObjectContainmentUnsettableResolving
    extends InternalSettingDelegateSingleEObjectContainmentUnsettable {
        public InternalSettingDelegateSingleEObjectContainmentUnsettableResolving(EClass eClass, EStructuralFeature feature) {
            super(eClass, feature);
        }

        protected boolean isResolveProxies() {
            return true;
        }
    }

    public static class InternalSettingDelegateSingleEObjectContainmentWithInverse
    extends InternalSettingDelegateSingleEObjectContainment {
        public InternalSettingDelegateSingleEObjectContainmentWithInverse(EClass eClass, EStructuralFeature feature, EReference inverseFeature) {
            super(eClass, feature, inverseFeature);
        }

        protected boolean hasInverse() {
            return true;
        }
    }

    public static class InternalSettingDelegateSingleEObjectContainmentWithInverseResolving
    extends InternalSettingDelegateSingleEObjectContainmentWithInverse {
        public InternalSettingDelegateSingleEObjectContainmentWithInverseResolving(EClass eClass, EStructuralFeature feature, EReference inverseFeature) {
            super(eClass, feature, inverseFeature);
        }

        protected boolean isResolveProxies() {
            return true;
        }
    }

    public static class InternalSettingDelegateSingleEObjectContainmentWithInverseUnsettable
    extends InternalSettingDelegateSingleEObjectContainmentWithInverse {
        public InternalSettingDelegateSingleEObjectContainmentWithInverseUnsettable(EClass eClass, EStructuralFeature feature, EReference inverseFeature) {
            super(eClass, feature, inverseFeature);
        }

        protected boolean isUnsettable() {
            return true;
        }
    }

    public static class InternalSettingDelegateSingleEObjectContainmentWithInverseUnsettableResolving
    extends InternalSettingDelegateSingleEObjectContainmentWithInverseUnsettable {
        public InternalSettingDelegateSingleEObjectContainmentWithInverseUnsettableResolving(EClass eClass, EStructuralFeature feature, EReference inverseFeature) {
            super(eClass, feature, inverseFeature);
        }

        protected boolean isResolveProxies() {
            return true;
        }
    }

    public static class InternalSettingDelegateSingleEObjectResolving
    extends InternalSettingDelegateSingleEObject {
        public InternalSettingDelegateSingleEObjectResolving(EClass eClass, EStructuralFeature feature) {
            super(eClass, feature);
        }

        public InternalSettingDelegateSingleEObjectResolving(EClass eClass, EStructuralFeature feature, EReference inverseFeature) {
            super(eClass, feature, inverseFeature);
        }

        protected boolean isResolveProxies() {
            return true;
        }
    }

    public static class InternalSettingDelegateSingleEObjectResolvingUnsettable
    extends InternalSettingDelegateSingleEObjectResolving {
        public InternalSettingDelegateSingleEObjectResolvingUnsettable(EClass eClass, EStructuralFeature feature) {
            super(eClass, feature);
        }

        protected boolean isUnsettable() {
            return true;
        }
    }

    public static class InternalSettingDelegateSingleEObjectResolvingWithInverse
    extends InternalSettingDelegateSingleEObjectResolving {
        public InternalSettingDelegateSingleEObjectResolvingWithInverse(EClass eClass, EStructuralFeature feature, EReference inverseFeature) {
            super(eClass, feature, inverseFeature);
        }

        protected boolean hasInverse() {
            return true;
        }
    }

    public static class InternalSettingDelegateSingleEObjectResolvingWithInverseUnsettable
    extends InternalSettingDelegateSingleEObjectResolvingWithInverse {
        public InternalSettingDelegateSingleEObjectResolvingWithInverseUnsettable(EClass eClass, EStructuralFeature feature, EReference inverseFeature) {
            super(eClass, feature, inverseFeature);
        }

        protected boolean isUnsettable() {
            return true;
        }
    }

    public static class InternalSettingDelegateSingleEObjectUnsettable
    extends InternalSettingDelegateSingleEObject {
        public InternalSettingDelegateSingleEObjectUnsettable(EClass eClass, EStructuralFeature feature) {
            super(eClass, feature);
        }

        protected boolean isUnsettable() {
            return true;
        }
    }

    public static class InternalSettingDelegateSingleEObjectWithInverse
    extends InternalSettingDelegateSingleEObject {
        public InternalSettingDelegateSingleEObjectWithInverse(EClass eClass, EStructuralFeature feature, EReference inverseFeature) {
            super(eClass, feature, inverseFeature);
        }

        protected boolean hasInverse() {
            return true;
        }
    }

    public static class InternalSettingDelegateSingleEObjectWithInverseUnsettable
    extends InternalSettingDelegateSingleEObjectWithInverse {
        public InternalSettingDelegateSingleEObjectWithInverseUnsettable(EClass eClass, EStructuralFeature feature, EReference inverseFeature) {
            super(eClass, feature, inverseFeature);
        }

        protected boolean isUnsettable() {
            return true;
        }
    }

    public final class InverseUpdatingFeatureMapEntry
    extends BasicFeatureMapEntry {
        protected final InternalEObject value;

        public InverseUpdatingFeatureMapEntry(EStructuralFeature.Internal eStructuralFeature, InternalEObject value) {
            super(eStructuralFeature);
            this.value = value;
        }

        public final Object getValue() {
            return this.value;
        }

        public FeatureMap.Entry.Internal createEntry(InternalEObject value) {
            return new InverseUpdatingFeatureMapEntry(this.eStructuralFeature, value);
        }

        public final NotificationChain inverseAdd(InternalEObject owner, int featureID, NotificationChain notifications) {
            return this.inverseAdd(owner, this.value, featureID, notifications);
        }

        public final NotificationChain inverseRemove(InternalEObject owner, int featureID, NotificationChain notifications) {
            return this.inverseRemove(owner, this.value, featureID, notifications);
        }

        public final NotificationChain inverseAdd(InternalEObject owner, Object otherEnd, int featureID, NotificationChain notifications) {
            return this.inverseAdd(owner, this.value, featureID, notifications);
        }

        public final NotificationChain inverseRemove(InternalEObject owner, Object otherEnd, int featureID, NotificationChain notifications) {
            return this.inverseRemove(owner, this.value, featureID, notifications);
        }

        protected final NotificationChain inverseAdd(InternalEObject owner, InternalEObject otherEnd, int featureID, NotificationChain notifications) {
            if (otherEnd != null) {
                notifications = otherEnd.eInverseAdd(owner, otherEnd.eClass().getFeatureID(this.eStructuralFeature.getEOpposite()), null, notifications);
            }
            return notifications;
        }

        protected final NotificationChain inverseRemove(InternalEObject owner, InternalEObject otherEnd, int featureID, NotificationChain notifications) {
            if (otherEnd != null) {
                notifications = otherEnd.eInverseRemove(owner, otherEnd.eClass().getFeatureID(this.eStructuralFeature.getEOpposite()), null, notifications);
            }
            return notifications;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class SettingMany
    implements EStructuralFeature.Setting {
        protected EObject owner;
        protected EStructuralFeature eStructuralFeature;
        protected List<Object> list;

        public SettingMany(EObject owner, EStructuralFeature eStructuralFeature, List<Object> list) {
            this.list = list;
        }

        @Override
        public EObject getEObject() {
            return this.owner;
        }

        @Override
        public EStructuralFeature getEStructuralFeature() {
            return this.eStructuralFeature;
        }

        @Override
        public Object get(boolean resolve) {
            return this.list;
        }

        @Override
        public void set(Object newValue) {
            this.list.clear();
            this.list.addAll((List)newValue);
        }

        @Override
        public boolean isSet() {
            return this.list instanceof InternalEList.Unsettable ? ((InternalEList.Unsettable)((Object)this.list)).isSet() : !this.list.isEmpty();
        }

        @Override
        public void unset() {
            if (this.list instanceof InternalEList.Unsettable) {
                ((InternalEList.Unsettable)((Object)this.list)).unset();
            } else {
                this.list.clear();
            }
        }
    }

    public static final class SimpleContentFeatureMapEntry
    extends BasicFeatureMapEntry {
        protected EFactory eFactory;
        protected EDataType eDataType;

        public SimpleContentFeatureMapEntry(EStructuralFeature.Internal eStructuralFeature) {
            super(eStructuralFeature);
            this.eDataType = (EDataType)eStructuralFeature.getEType();
            this.eFactory = this.eDataType.getEPackage().getEFactoryInstance();
        }

        public final Object getValue() {
            return null;
        }

        public FeatureMap.Entry.Internal createEntry(Object value) {
            return new SimpleFeatureMapEntry((EStructuralFeature.Internal)((Object)XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__TEXT), this.eFactory.convertToString(this.eDataType, value));
        }

        public final NotificationChain inverseAdd(InternalEObject owner, int featureID, NotificationChain notifications) {
            return notifications;
        }

        public final NotificationChain inverseRemove(InternalEObject owner, int featureID, NotificationChain notifications) {
            return notifications;
        }

        public final NotificationChain inverseAdd(InternalEObject owner, Object otherEnd, int featureID, NotificationChain notifications) {
            return notifications;
        }

        public final NotificationChain inverseRemove(InternalEObject owner, Object otherEnd, int featureID, NotificationChain notifications) {
            return notifications;
        }
    }

    public static final class SimpleFeatureMapEntry
    extends BasicFeatureMapEntry {
        protected final Object value;

        public SimpleFeatureMapEntry(EStructuralFeature.Internal eStructuralFeature, Object value) {
            super(eStructuralFeature);
            this.value = value;
        }

        public final Object getValue() {
            return this.value;
        }

        public FeatureMap.Entry.Internal createEntry(Object value) {
            return new SimpleFeatureMapEntry(this.eStructuralFeature, value);
        }

        public final NotificationChain inverseAdd(InternalEObject owner, int featureID, NotificationChain notifications) {
            return notifications;
        }

        public final NotificationChain inverseRemove(InternalEObject owner, int featureID, NotificationChain notifications) {
            return notifications;
        }

        public final NotificationChain inverseAdd(InternalEObject owner, Object otherEnd, int featureID, NotificationChain notifications) {
            return notifications;
        }

        public final NotificationChain inverseRemove(InternalEObject owner, Object otherEnd, int featureID, NotificationChain notifications) {
            return notifications;
        }
    }
}

