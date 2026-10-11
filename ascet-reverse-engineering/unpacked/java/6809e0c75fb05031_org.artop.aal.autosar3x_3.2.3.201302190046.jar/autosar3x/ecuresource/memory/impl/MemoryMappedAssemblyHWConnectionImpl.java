/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar3x.ecuresource.memory.impl;

import autosar3x.ecuresource.impl.AssemblyHWConnectionImpl;
import autosar3x.ecuresource.memory.MemoryAccess;
import autosar3x.ecuresource.memory.MemoryMappedAssemblyHWConnection;
import autosar3x.ecuresource.memory.MemoryPackage;
import autosar3x.ecuresource.memory.MemorySegmentUsageEnum;
import autosar3x.genericstructure.commonpatterns.enumerations.ByteOrderEnum;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MemoryMappedAssemblyHWConnectionImpl
extends AssemblyHWConnectionImpl
implements MemoryMappedAssemblyHWConnection {
    protected static final Integer BASE_ADDRESS_EDEFAULT = new Integer(0);
    protected Integer baseAddress = BASE_ADDRESS_EDEFAULT;
    protected boolean baseAddressESet;
    protected static final ByteOrderEnum BYTE_ORDER_EDEFAULT = ByteOrderEnum.MOST_SIGNIFICANT_BYTE_LAST;
    protected ByteOrderEnum byteOrder = BYTE_ORDER_EDEFAULT;
    protected boolean byteOrderESet;
    protected static final Boolean CACHABLE_EDEFAULT = Boolean.FALSE;
    protected Boolean cachable = CACHABLE_EDEFAULT;
    protected boolean cachableESet;
    protected EList<MemoryAccess> hwConnectionAccess;
    protected EList<MemorySegmentUsageEnum> segmentUsages;

    protected MemoryMappedAssemblyHWConnectionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return MemoryPackage.Literals.MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION;
    }

    @Override
    public Integer getBaseAddress() {
        return this.baseAddress;
    }

    @Override
    public void setBaseAddress(Integer newBaseAddress) {
        Integer oldBaseAddress = this.baseAddress;
        this.baseAddress = newBaseAddress;
        boolean oldBaseAddressESet = this.baseAddressESet;
        this.baseAddressESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldBaseAddress, (Object)this.baseAddress, !oldBaseAddressESet));
        }
    }

    @Override
    public void unsetBaseAddress() {
        Integer oldBaseAddress = this.baseAddress;
        boolean oldBaseAddressESet = this.baseAddressESet;
        this.baseAddress = BASE_ADDRESS_EDEFAULT;
        this.baseAddressESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldBaseAddress, (Object)BASE_ADDRESS_EDEFAULT, oldBaseAddressESet));
        }
    }

    @Override
    public boolean isSetBaseAddress() {
        return this.baseAddressESet;
    }

    @Override
    public ByteOrderEnum getByteOrder() {
        return this.byteOrder;
    }

    @Override
    public void setByteOrder(ByteOrderEnum newByteOrder) {
        ByteOrderEnum oldByteOrder = this.byteOrder;
        this.byteOrder = newByteOrder == null ? BYTE_ORDER_EDEFAULT : newByteOrder;
        boolean oldByteOrderESet = this.byteOrderESet;
        this.byteOrderESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldByteOrder, (Object)this.byteOrder, !oldByteOrderESet));
        }
    }

    @Override
    public void unsetByteOrder() {
        ByteOrderEnum oldByteOrder = this.byteOrder;
        boolean oldByteOrderESet = this.byteOrderESet;
        this.byteOrder = BYTE_ORDER_EDEFAULT;
        this.byteOrderESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldByteOrder, (Object)BYTE_ORDER_EDEFAULT, oldByteOrderESet));
        }
    }

    @Override
    public boolean isSetByteOrder() {
        return this.byteOrderESet;
    }

    @Override
    public Boolean getCachable() {
        return this.cachable;
    }

    @Override
    public void setCachable(Boolean newCachable) {
        Boolean oldCachable = this.cachable;
        this.cachable = newCachable;
        boolean oldCachableESet = this.cachableESet;
        this.cachableESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldCachable, (Object)this.cachable, !oldCachableESet));
        }
    }

    @Override
    public void unsetCachable() {
        Boolean oldCachable = this.cachable;
        boolean oldCachableESet = this.cachableESet;
        this.cachable = CACHABLE_EDEFAULT;
        this.cachableESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldCachable, (Object)CACHABLE_EDEFAULT, oldCachableESet));
        }
    }

    @Override
    public boolean isSetCachable() {
        return this.cachableESet;
    }

    @Override
    public EList<MemoryAccess> getHwConnectionAccess() {
        if (this.hwConnectionAccess == null) {
            this.hwConnectionAccess = new EObjectContainmentWithInverseEList(MemoryAccess.class, (InternalEObject)this, 23, 4);
        }
        return this.hwConnectionAccess;
    }

    @Override
    public EList<MemorySegmentUsageEnum> getSegmentUsages() {
        if (this.segmentUsages == null) {
            this.segmentUsages = new EDataTypeUniqueEList.Unsettable(MemorySegmentUsageEnum.class, (InternalEObject)this, 24);
        }
        return this.segmentUsages;
    }

    @Override
    public void unsetSegmentUsages() {
        if (this.segmentUsages != null) {
            ((InternalEList.Unsettable)this.segmentUsages).unset();
        }
    }

    @Override
    public boolean isSetSegmentUsages() {
        return this.segmentUsages != null && ((InternalEList.Unsettable)this.segmentUsages).isSet();
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getHwConnectionAccess()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getHwConnectionAccess()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.getBaseAddress();
            }
            case 21: {
                return this.getByteOrder();
            }
            case 22: {
                return this.getCachable();
            }
            case 23: {
                return this.getHwConnectionAccess();
            }
            case 24: {
                return this.getSegmentUsages();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.setBaseAddress((Integer)newValue);
                return;
            }
            case 21: {
                this.setByteOrder((ByteOrderEnum)((Object)newValue));
                return;
            }
            case 22: {
                this.setCachable((Boolean)newValue);
                return;
            }
            case 23: {
                this.getHwConnectionAccess().clear();
                this.getHwConnectionAccess().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.getSegmentUsages().clear();
                this.getSegmentUsages().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.unsetBaseAddress();
                return;
            }
            case 21: {
                this.unsetByteOrder();
                return;
            }
            case 22: {
                this.unsetCachable();
                return;
            }
            case 23: {
                this.getHwConnectionAccess().clear();
                return;
            }
            case 24: {
                this.unsetSegmentUsages();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.isSetBaseAddress();
            }
            case 21: {
                return this.isSetByteOrder();
            }
            case 22: {
                return this.isSetCachable();
            }
            case 23: {
                return this.hwConnectionAccess != null && !this.hwConnectionAccess.isEmpty();
            }
            case 24: {
                return this.isSetSegmentUsages();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (baseAddress: ");
        if (this.baseAddressESet) {
            result.append(this.baseAddress);
        } else {
            result.append("<unset>");
        }
        result.append(", byteOrder: ");
        if (this.byteOrderESet) {
            result.append((Object)this.byteOrder);
        } else {
            result.append("<unset>");
        }
        result.append(", cachable: ");
        if (this.cachableESet) {
            result.append(this.cachable);
        } else {
            result.append("<unset>");
        }
        result.append(", segmentUsages: ");
        result.append(this.segmentUsages);
        result.append(')');
        return result.toString();
    }
}

