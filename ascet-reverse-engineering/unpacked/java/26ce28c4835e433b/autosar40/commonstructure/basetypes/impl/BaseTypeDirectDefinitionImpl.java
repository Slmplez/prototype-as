/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeDirectDefinition
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeSizeDefinition
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gprimitivetypes.GByteOrderEnum
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.basetypes.impl;

import autosar40.commonstructure.basetypes.BaseTypeDirectDefinition;
import autosar40.commonstructure.basetypes.BaseTypeSizeDefinition;
import autosar40.commonstructure.basetypes.BasetypesPackage;
import autosar40.commonstructure.basetypes.impl.BaseTypeDefinitionImpl;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.ByteOrderEnum;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeDirectDefinition;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeSizeDefinition;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gprimitivetypes.GByteOrderEnum;
import org.artop.aal.common.datatypes.IntegerDatatype;
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
    protected BaseTypeSizeDefinition baseTypeSizeDefintionType;
    protected static final String BASE_TYPE_ENCODING_EDEFAULT = "";
    protected String baseTypeEncoding = "";
    protected boolean baseTypeEncodingESet;
    protected static final IntegerDatatype MEM_ALIGNMENT_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype memAlignment = MEM_ALIGNMENT_EDEFAULT.clone();
    protected boolean memAlignmentESet;
    protected static final ByteOrderEnum BYTE_ORDER_EDEFAULT = ByteOrderEnum.MOST_SIGNIFICANT_BYTE_FIRST;
    protected ByteOrderEnum byteOrder = BYTE_ORDER_EDEFAULT;
    protected boolean byteOrderESet;
    protected static final String NATIVE_DECLARATION_EDEFAULT = "";
    protected String nativeDeclaration = "";
    protected boolean nativeDeclarationESet;

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
        this.setBaseTypeSizeDefintionType((BaseTypeSizeDefinition)newGBaseTypeSizeDefinitionType);
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
        Integer tgtFeatureValue = this.getMemAlignment();
        return tgtFeatureValue;
    }

    public void gSetMemAlignment(Integer newGMemAlignment) {
        this.setMemAlignment(newGMemAlignment);
    }

    public void gUnsetMemAlignment() {
        this.unsetMemAlignment();
    }

    public boolean gIsSetMemAlignment() {
        return this.isSetMemAlignment();
    }

    public GByteOrderEnum gGetByteOrder() {
        return GByteOrderEnum.getByName((String)this.getByteOrder().getName());
    }

    public void gSetByteOrder(GByteOrderEnum newGByteOrder) {
        this.setByteOrder(ByteOrderEnum.getByName(newGByteOrder.getName()));
    }

    public void gUnsetByteOrder() {
        this.unsetByteOrder();
    }

    public boolean gIsSetByteOrder() {
        return this.isSetByteOrder();
    }

    @Override
    public BaseTypeSizeDefinition getBaseTypeSizeDefintionType() {
        return this.baseTypeSizeDefintionType;
    }

    public NotificationChain basicSetBaseTypeSizeDefintionType(BaseTypeSizeDefinition newBaseTypeSizeDefintionType, NotificationChain msgs) {
        BaseTypeSizeDefinition oldBaseTypeSizeDefintionType = this.baseTypeSizeDefintionType;
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
    public void setBaseTypeSizeDefintionType(BaseTypeSizeDefinition newBaseTypeSizeDefintionType) {
        if (newBaseTypeSizeDefintionType != this.baseTypeSizeDefintionType) {
            NotificationChain msgs = null;
            if (this.baseTypeSizeDefintionType != null) {
                msgs = ((InternalEObject)this.baseTypeSizeDefintionType).eInverseRemove((InternalEObject)this, 4, BaseTypeSizeDefinition.class, msgs);
            }
            if (newBaseTypeSizeDefintionType != null) {
                msgs = ((InternalEObject)newBaseTypeSizeDefintionType).eInverseAdd((InternalEObject)this, 4, BaseTypeSizeDefinition.class, msgs);
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
    public Integer getMemAlignment() {
        return (Integer)this.memAlignment.basicGetValue();
    }

    @Override
    public void setMemAlignment(Integer newMemAlignment) {
        Integer oldMemAlignment = (Integer)this.memAlignment.basicGetValue();
        this.memAlignment.basicSetValue((Object)newMemAlignment);
        boolean oldMemAlignmentESet = this.memAlignmentESet;
        this.memAlignmentESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldMemAlignment, (Object)newMemAlignment, !oldMemAlignmentESet));
        }
    }

    @Override
    public void unsetMemAlignment() {
        Integer oldMemAlignment = (Integer)this.memAlignment.basicGetValue();
        boolean oldMemAlignmentESet = this.memAlignmentESet;
        this.memAlignment = MEM_ALIGNMENT_EDEFAULT.clone();
        this.memAlignmentESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldMemAlignment, (Object)MEM_ALIGNMENT_EDEFAULT, oldMemAlignmentESet));
        }
    }

    @Override
    public boolean isSetMemAlignment() {
        return this.memAlignmentESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldByteOrder, (Object)this.byteOrder, !oldByteOrderESet));
        }
    }

    @Override
    public void unsetByteOrder() {
        ByteOrderEnum oldByteOrder = this.byteOrder;
        boolean oldByteOrderESet = this.byteOrderESet;
        this.byteOrder = BYTE_ORDER_EDEFAULT;
        this.byteOrderESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldByteOrder, (Object)BYTE_ORDER_EDEFAULT, oldByteOrderESet));
        }
    }

    @Override
    public boolean isSetByteOrder() {
        return this.byteOrderESet;
    }

    @Override
    public String getNativeDeclaration() {
        return this.nativeDeclaration;
    }

    @Override
    public void setNativeDeclaration(String newNativeDeclaration) {
        String oldNativeDeclaration = this.nativeDeclaration;
        this.nativeDeclaration = newNativeDeclaration;
        boolean oldNativeDeclarationESet = this.nativeDeclarationESet;
        this.nativeDeclarationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldNativeDeclaration, (Object)this.nativeDeclaration, !oldNativeDeclarationESet));
        }
    }

    @Override
    public void unsetNativeDeclaration() {
        String oldNativeDeclaration = this.nativeDeclaration;
        boolean oldNativeDeclarationESet = this.nativeDeclarationESet;
        this.nativeDeclaration = "";
        this.nativeDeclarationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldNativeDeclaration, (Object)"", oldNativeDeclarationESet));
        }
    }

    @Override
    public boolean isSetNativeDeclaration() {
        return this.nativeDeclarationESet;
    }

    @Override
    public IntegerDatatype getMemAlignmentData() {
        return this.memAlignment.clone();
    }

    @Override
    public void setMemAlignmentData(IntegerDatatype newMemAlignment) {
        this.memAlignment.setRadix((int)newMemAlignment.getRadix());
        this.memAlignment.setNoOfDigits((int)newMemAlignment.getNoOfDigits());
        this.setMemAlignment(newMemAlignment.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                if (this.baseTypeSizeDefintionType != null) {
                    msgs = ((InternalEObject)this.baseTypeSizeDefintionType).eInverseRemove((InternalEObject)this, -9, null, msgs);
                }
                return this.basicSetBaseTypeSizeDefintionType((BaseTypeSizeDefinition)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                return this.basicSetBaseTypeSizeDefintionType(null, msgs);
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
            case 12: {
                return this.getNativeDeclaration();
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
                this.setBaseTypeSizeDefintionType((BaseTypeSizeDefinition)newValue);
                return;
            }
            case 9: {
                this.setBaseTypeEncoding((String)newValue);
                return;
            }
            case 10: {
                this.setMemAlignment((Integer)newValue);
                return;
            }
            case 11: {
                this.setByteOrder((ByteOrderEnum)((Object)newValue));
                return;
            }
            case 12: {
                this.setNativeDeclaration((String)newValue);
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
                this.unsetByteOrder();
                return;
            }
            case 12: {
                this.unsetNativeDeclaration();
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
                return this.isSetByteOrder();
            }
            case 12: {
                return this.isSetNativeDeclaration();
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
        result.append(", byteOrder: ");
        if (this.byteOrderESet) {
            result.append((Object)this.byteOrder);
        } else {
            result.append("<unset>");
        }
        result.append(", nativeDeclaration: ");
        if (this.nativeDeclarationESet) {
            result.append(this.nativeDeclaration);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

