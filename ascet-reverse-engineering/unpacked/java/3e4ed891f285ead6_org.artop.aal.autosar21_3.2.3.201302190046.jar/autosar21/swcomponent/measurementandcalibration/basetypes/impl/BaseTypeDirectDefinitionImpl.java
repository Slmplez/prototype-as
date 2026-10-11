/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeDirectDefinition
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeSizeDefinition
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gprimitivetypes.GByteOrderEnum
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.measurementandcalibration.basetypes.impl;

import autosar21.genericstructure.commonpatterns.enumerations.ByteOrderEnum;
import autosar21.swcomponent.measurementandcalibration.basetypes.BaseTypeDirectDefinition;
import autosar21.swcomponent.measurementandcalibration.basetypes.BaseTypeSizeDefintion;
import autosar21.swcomponent.measurementandcalibration.basetypes.BasetypesPackage;
import autosar21.swcomponent.measurementandcalibration.basetypes.impl.BaseTypeDefinitionImpl;
import autosar21.swcomponent.measurementandcalibration.byteorder.ByteOrder;
import autosar21.util.Autosar21Factory;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeDirectDefinition;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeSizeDefinition;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gprimitivetypes.GByteOrderEnum;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BaseTypeDirectDefinitionImpl
extends BaseTypeDefinitionImpl
implements BaseTypeDirectDefinition {
    protected static final String GBASE_TYPE_ENCODING_EDEFAULT = null;
    protected static final Integer GMEM_ALIGNMENT_EDEFAULT = null;
    protected static final GByteOrderEnum GBYTE_ORDER_EDEFAULT = GByteOrderEnum.MOST_SIGNIFICANT_BYTE_FIRST;
    protected BaseTypeSizeDefintion baseTypeSizeDefintionType;
    protected static final String BASE_TYPE_ENCODING_EDEFAULT = "";
    protected String baseTypeEncoding = "";
    protected boolean baseTypeEncodingESet;
    protected static final String MEM_ALIGNMENT_EDEFAULT = "";
    protected String memAlignment = "";
    protected boolean memAlignmentESet;
    protected ByteOrder byteOrder;

    protected BaseTypeDirectDefinitionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BasetypesPackage.Literals.BASE_TYPE_DIRECT_DEFINITION;
    }

    public GBaseTypeSizeDefinition gGetBaseTypeSizeDefinitionType() {
        return this.getBaseTypeSizeDefintionType();
    }

    public void gSetBaseTypeSizeDefinitionType(GBaseTypeSizeDefinition newGBaseTypeSizeDefinitionType) {
        this.setBaseTypeSizeDefintionType((BaseTypeSizeDefintion)newGBaseTypeSizeDefinitionType);
    }

    public String gGetBaseTypeEncoding() {
        String tgtFeatureValue = this.getBaseTypeEncoding();
        return tgtFeatureValue;
    }

    public void gSetBaseTypeEncoding(String newGBaseTypeEncoding) {
        this.setBaseTypeEncoding(newGBaseTypeEncoding);
    }

    public void gUnsetBaseTypeEncoding() {
        this.unsetBaseTypeEncoding();
    }

    public boolean gIsSetBaseTypeEncoding() {
        return this.isSetBaseTypeEncoding();
    }

    public Integer gGetMemAlignment() {
        String tgtFeatureValue = this.getMemAlignment();
        return new Integer(tgtFeatureValue);
    }

    public void gSetMemAlignment(Integer newGMemAlignment) {
        this.setMemAlignment(Integer.toString(newGMemAlignment));
    }

    public void gUnsetMemAlignment() {
        this.unsetMemAlignment();
    }

    public boolean gIsSetMemAlignment() {
        return this.isSetMemAlignment();
    }

    public GByteOrderEnum gGetByteOrder() {
        ByteOrder byteOrder = this.getByteOrder();
        if (byteOrder == null) {
            byteOrder = Autosar21Factory.eINSTANCE.createByteOrder();
        }
        return GByteOrderEnum.getByName((String)byteOrder.getContent().getName());
    }

    public void gSetByteOrder(GByteOrderEnum newGByteOrder) {
        ByteOrder byteOrder = this.getByteOrder();
        if (byteOrder == null) {
            byteOrder = Autosar21Factory.eINSTANCE.createByteOrder();
            this.setByteOrder(byteOrder);
        }
        byteOrder.setContent(ByteOrderEnum.getByName(newGByteOrder.getName()));
    }

    public void gUnsetByteOrder() {
        ByteOrder byteOrder = this.getByteOrder();
        if (byteOrder == null) {
            byteOrder = Autosar21Factory.eINSTANCE.createByteOrder();
        }
        byteOrder.unsetContent();
    }

    public boolean gIsSetByteOrder() {
        ByteOrder byteOrder = this.getByteOrder();
        if (byteOrder == null) {
            byteOrder = Autosar21Factory.eINSTANCE.createByteOrder();
        }
        return byteOrder.isSetContent();
    }

    @Override
    public BaseTypeSizeDefintion getBaseTypeSizeDefintionType() {
        return this.baseTypeSizeDefintionType;
    }

    public NotificationChain basicSetBaseTypeSizeDefintionType(BaseTypeSizeDefintion newBaseTypeSizeDefintionType, NotificationChain msgs) {
        BaseTypeSizeDefintion oldBaseTypeSizeDefintionType = this.baseTypeSizeDefintionType;
        this.baseTypeSizeDefintionType = newBaseTypeSizeDefintionType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldBaseTypeSizeDefintionType, (Object)newBaseTypeSizeDefintionType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setBaseTypeSizeDefintionType(BaseTypeSizeDefintion newBaseTypeSizeDefintionType) {
        if (newBaseTypeSizeDefintionType != this.baseTypeSizeDefintionType) {
            NotificationChain msgs = null;
            if (this.baseTypeSizeDefintionType != null) {
                msgs = ((InternalEObject)this.baseTypeSizeDefintionType).eInverseRemove((InternalEObject)this, 4, BaseTypeSizeDefintion.class, msgs);
            }
            if (newBaseTypeSizeDefintionType != null) {
                msgs = ((InternalEObject)newBaseTypeSizeDefintionType).eInverseAdd((InternalEObject)this, 4, BaseTypeSizeDefintion.class, msgs);
            }
            if ((msgs = this.basicSetBaseTypeSizeDefintionType(newBaseTypeSizeDefintionType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newBaseTypeSizeDefintionType, (Object)newBaseTypeSizeDefintionType));
        }
    }

    @Override
    public String getBaseTypeEncoding() {
        return this.baseTypeEncoding;
    }

    @Override
    public void setBaseTypeEncoding(String newBaseTypeEncoding) {
        String oldBaseTypeEncoding = this.baseTypeEncoding;
        this.baseTypeEncoding = newBaseTypeEncoding;
        boolean oldBaseTypeEncodingESet = this.baseTypeEncodingESet;
        this.baseTypeEncodingESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldBaseTypeEncoding, (Object)this.baseTypeEncoding, !oldBaseTypeEncodingESet));
        }
    }

    @Override
    public void unsetBaseTypeEncoding() {
        String oldBaseTypeEncoding = this.baseTypeEncoding;
        boolean oldBaseTypeEncodingESet = this.baseTypeEncodingESet;
        this.baseTypeEncoding = "";
        this.baseTypeEncodingESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldBaseTypeEncoding, (Object)"", oldBaseTypeEncodingESet));
        }
    }

    @Override
    public boolean isSetBaseTypeEncoding() {
        return this.baseTypeEncodingESet;
    }

    @Override
    public String getMemAlignment() {
        return this.memAlignment;
    }

    @Override
    public void setMemAlignment(String newMemAlignment) {
        String oldMemAlignment = this.memAlignment;
        this.memAlignment = newMemAlignment;
        boolean oldMemAlignmentESet = this.memAlignmentESet;
        this.memAlignmentESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldMemAlignment, (Object)this.memAlignment, !oldMemAlignmentESet));
        }
    }

    @Override
    public void unsetMemAlignment() {
        String oldMemAlignment = this.memAlignment;
        boolean oldMemAlignmentESet = this.memAlignmentESet;
        this.memAlignment = "";
        this.memAlignmentESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldMemAlignment, (Object)"", oldMemAlignmentESet));
        }
    }

    @Override
    public boolean isSetMemAlignment() {
        return this.memAlignmentESet;
    }

    @Override
    public ByteOrder getByteOrder() {
        return this.byteOrder;
    }

    public NotificationChain basicSetByteOrder(ByteOrder newByteOrder, NotificationChain msgs) {
        ByteOrder oldByteOrder = this.byteOrder;
        this.byteOrder = newByteOrder;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldByteOrder, (Object)newByteOrder);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setByteOrder(ByteOrder newByteOrder) {
        if (newByteOrder != this.byteOrder) {
            NotificationChain msgs = null;
            if (this.byteOrder != null) {
                msgs = ((InternalEObject)this.byteOrder).eInverseRemove((InternalEObject)this, 4, ByteOrder.class, msgs);
            }
            if (newByteOrder != null) {
                msgs = ((InternalEObject)newByteOrder).eInverseAdd((InternalEObject)this, 4, ByteOrder.class, msgs);
            }
            if ((msgs = this.basicSetByteOrder(newByteOrder, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)newByteOrder, (Object)newByteOrder));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                if (this.baseTypeSizeDefintionType != null) {
                    msgs = ((InternalEObject)this.baseTypeSizeDefintionType).eInverseRemove((InternalEObject)this, -9, null, msgs);
                }
                return this.basicSetBaseTypeSizeDefintionType((BaseTypeSizeDefintion)otherEnd, msgs);
            }
            case 11: {
                if (this.byteOrder != null) {
                    msgs = ((InternalEObject)this.byteOrder).eInverseRemove((InternalEObject)this, -12, null, msgs);
                }
                return this.basicSetByteOrder((ByteOrder)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                return this.basicSetBaseTypeSizeDefintionType(null, msgs);
            }
            case 11: {
                return this.basicSetByteOrder(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.gGetBaseTypeSizeDefinitionType();
            }
            case 5: {
                return this.gGetBaseTypeEncoding();
            }
            case 6: {
                return this.gGetMemAlignment();
            }
            case 7: {
                return this.gGetByteOrder();
            }
            case 8: {
                return this.getBaseTypeSizeDefintionType();
            }
            case 9: {
                return this.getBaseTypeEncoding();
            }
            case 10: {
                return this.getMemAlignment();
            }
            case 11: {
                return this.getByteOrder();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.gSetBaseTypeSizeDefinitionType((GBaseTypeSizeDefinition)newValue);
                return;
            }
            case 5: {
                this.gSetBaseTypeEncoding((String)newValue);
                return;
            }
            case 6: {
                this.gSetMemAlignment((Integer)newValue);
                return;
            }
            case 7: {
                this.gSetByteOrder((GByteOrderEnum)newValue);
                return;
            }
            case 8: {
                this.setBaseTypeSizeDefintionType((BaseTypeSizeDefintion)newValue);
                return;
            }
            case 9: {
                this.setBaseTypeEncoding((String)newValue);
                return;
            }
            case 10: {
                this.setMemAlignment((String)newValue);
                return;
            }
            case 11: {
                this.setByteOrder((ByteOrder)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.gSetBaseTypeSizeDefinitionType(null);
                return;
            }
            case 5: {
                this.gUnsetBaseTypeEncoding();
                return;
            }
            case 6: {
                this.gUnsetMemAlignment();
                return;
            }
            case 7: {
                this.gUnsetByteOrder();
                return;
            }
            case 8: {
                this.setBaseTypeSizeDefintionType(null);
                return;
            }
            case 9: {
                this.unsetBaseTypeEncoding();
                return;
            }
            case 10: {
                this.unsetMemAlignment();
                return;
            }
            case 11: {
                this.setByteOrder(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.gGetBaseTypeSizeDefinitionType() != null;
            }
            case 5: {
                return this.gIsSetBaseTypeEncoding();
            }
            case 6: {
                return this.gIsSetMemAlignment();
            }
            case 7: {
                return this.gIsSetByteOrder();
            }
            case 8: {
                return this.baseTypeSizeDefintionType != null;
            }
            case 9: {
                return this.isSetBaseTypeEncoding();
            }
            case 10: {
                return this.isSetMemAlignment();
            }
            case 11: {
                return this.byteOrder != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GBaseTypeDirectDefinition.class) {
            switch (derivedFeatureID) {
                case 4: {
                    return 2;
                }
                case 5: {
                    return 3;
                }
                case 6: {
                    return 4;
                }
                case 7: {
                    return 5;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GBaseTypeDirectDefinition.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 4;
                }
                case 3: {
                    return 5;
                }
                case 4: {
                    return 6;
                }
                case 5: {
                    return 7;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (baseTypeEncoding: ");
        if (this.baseTypeEncodingESet) {
            result.append(this.baseTypeEncoding);
        } else {
            result.append("<unset>");
        }
        result.append(", memAlignment: ");
        if (this.memAlignmentESet) {
            result.append(this.memAlignment);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

