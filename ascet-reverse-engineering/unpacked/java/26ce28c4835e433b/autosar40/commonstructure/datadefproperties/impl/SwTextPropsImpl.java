/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
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
package autosar40.commonstructure.datadefproperties.impl;

import autosar40.commonstructure.basetypes.SwBaseType;
import autosar40.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar40.commonstructure.datadefproperties.SwDataDefPropsContent;
import autosar40.commonstructure.datadefproperties.SwTextProps;
import autosar40.commonstructure.implementationdatatypes.ArraySizeSemanticsEnum;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.IntegerValueVariationPoint;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SwTextPropsImpl
extends ARObjectImpl
implements SwTextProps,
IReferringClass {
    protected static final ArraySizeSemanticsEnum ARRAY_SIZE_SEMANTICS_EDEFAULT = ArraySizeSemanticsEnum.FIXED_SIZE;
    protected ArraySizeSemanticsEnum arraySizeSemantics = ARRAY_SIZE_SEMANTICS_EDEFAULT;
    protected boolean arraySizeSemanticsESet;
    protected IntegerValueVariationPoint swMaxTextSize;
    protected SwBaseType baseType;
    protected static final IntegerDatatype SW_FILL_CHARACTER_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype swFillCharacter = SW_FILL_CHARACTER_EDEFAULT.clone();
    protected boolean swFillCharacterESet;

    protected SwTextPropsImpl() {
    }

    protected EClass eStaticClass() {
        return DatadefpropertiesPackage.Literals.SW_TEXT_PROPS;
    }

    public SwDataDefPropsContent getSwDataDefPropsContent() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwDataDefPropsContent)this.eContainer();
    }

    public NotificationChain basicSetSwDataDefPropsContent(SwDataDefPropsContent newSwDataDefPropsContent, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwDataDefPropsContent, 4, msgs);
        return msgs;
    }

    public void setSwDataDefPropsContent(SwDataDefPropsContent newSwDataDefPropsContent) {
        if (newSwDataDefPropsContent != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwDataDefPropsContent != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwDataDefPropsContent)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwDataDefPropsContent != null) {
                msgs = ((InternalEObject)newSwDataDefPropsContent).eInverseAdd((InternalEObject)this, 12, SwDataDefPropsContent.class, msgs);
            }
            if ((msgs = this.basicSetSwDataDefPropsContent(newSwDataDefPropsContent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwDataDefPropsContent, (Object)newSwDataDefPropsContent));
        }
    }

    public ArraySizeSemanticsEnum getArraySizeSemantics() {
        return this.arraySizeSemantics;
    }

    public void setArraySizeSemantics(ArraySizeSemanticsEnum newArraySizeSemantics) {
        ArraySizeSemanticsEnum oldArraySizeSemantics = this.arraySizeSemantics;
        this.arraySizeSemantics = newArraySizeSemantics == null ? ARRAY_SIZE_SEMANTICS_EDEFAULT : newArraySizeSemantics;
        boolean oldArraySizeSemanticsESet = this.arraySizeSemanticsESet;
        this.arraySizeSemanticsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldArraySizeSemantics, (Object)this.arraySizeSemantics, !oldArraySizeSemanticsESet));
        }
    }

    public void unsetArraySizeSemantics() {
        ArraySizeSemanticsEnum oldArraySizeSemantics = this.arraySizeSemantics;
        boolean oldArraySizeSemanticsESet = this.arraySizeSemanticsESet;
        this.arraySizeSemantics = ARRAY_SIZE_SEMANTICS_EDEFAULT;
        this.arraySizeSemanticsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldArraySizeSemantics, (Object)ARRAY_SIZE_SEMANTICS_EDEFAULT, oldArraySizeSemanticsESet));
        }
    }

    public boolean isSetArraySizeSemantics() {
        return this.arraySizeSemanticsESet;
    }

    public IntegerValueVariationPoint getSwMaxTextSize() {
        return this.swMaxTextSize;
    }

    public NotificationChain basicSetSwMaxTextSize(IntegerValueVariationPoint newSwMaxTextSize, NotificationChain msgs) {
        IntegerValueVariationPoint oldSwMaxTextSize = this.swMaxTextSize;
        this.swMaxTextSize = newSwMaxTextSize;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSwMaxTextSize, (Object)newSwMaxTextSize);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwMaxTextSize(IntegerValueVariationPoint newSwMaxTextSize) {
        if (newSwMaxTextSize != this.swMaxTextSize) {
            NotificationChain msgs = null;
            if (this.swMaxTextSize != null) {
                msgs = ((InternalEObject)this.swMaxTextSize).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newSwMaxTextSize != null) {
                msgs = ((InternalEObject)newSwMaxTextSize).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetSwMaxTextSize(newSwMaxTextSize, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newSwMaxTextSize, (Object)newSwMaxTextSize));
        }
    }

    public SwBaseType getBaseType() {
        if (this.baseType != null && this.baseType.eIsProxy()) {
            InternalEObject oldBaseType = (InternalEObject)this.baseType;
            this.baseType = (SwBaseType)this.eResolveProxy(oldBaseType);
            if (this.baseType != oldBaseType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldBaseType, (Object)this.baseType));
            }
        }
        return this.baseType;
    }

    public SwBaseType basicGetBaseType() {
        return this.baseType;
    }

    public void setBaseType(SwBaseType newBaseType) {
        SwBaseType oldBaseType = this.baseType;
        this.baseType = newBaseType;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldBaseType, (Object)this.baseType));
        }
    }

    public Integer getSwFillCharacter() {
        return (Integer)this.swFillCharacter.basicGetValue();
    }

    public void setSwFillCharacter(Integer newSwFillCharacter) {
        Integer oldSwFillCharacter = (Integer)this.swFillCharacter.basicGetValue();
        this.swFillCharacter.basicSetValue((Object)newSwFillCharacter);
        boolean oldSwFillCharacterESet = this.swFillCharacterESet;
        this.swFillCharacterESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldSwFillCharacter, (Object)newSwFillCharacter, !oldSwFillCharacterESet));
        }
    }

    public void unsetSwFillCharacter() {
        Integer oldSwFillCharacter = (Integer)this.swFillCharacter.basicGetValue();
        boolean oldSwFillCharacterESet = this.swFillCharacterESet;
        this.swFillCharacter = SW_FILL_CHARACTER_EDEFAULT.clone();
        this.swFillCharacterESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldSwFillCharacter, (Object)SW_FILL_CHARACTER_EDEFAULT, oldSwFillCharacterESet));
        }
    }

    public boolean isSetSwFillCharacter() {
        return this.swFillCharacterESet;
    }

    public IntegerDatatype getSwFillCharacterData() {
        return this.swFillCharacter.clone();
    }

    public void setSwFillCharacterData(IntegerDatatype newSwFillCharacter) {
        this.swFillCharacter.setRadix((int)newSwFillCharacter.getRadix());
        this.swFillCharacter.setNoOfDigits((int)newSwFillCharacter.getNoOfDigits());
        this.setSwFillCharacter(newSwFillCharacter.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwDataDefPropsContent((SwDataDefPropsContent)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwDataDefPropsContent(null, msgs);
            }
            case 6: {
                return this.basicSetSwMaxTextSize(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 12, SwDataDefPropsContent.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwDataDefPropsContent();
            }
            case 5: {
                return this.getArraySizeSemantics();
            }
            case 6: {
                return this.getSwMaxTextSize();
            }
            case 7: {
                if (resolve) {
                    return this.getBaseType();
                }
                return this.basicGetBaseType();
            }
            case 8: {
                return this.getSwFillCharacter();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwDataDefPropsContent((SwDataDefPropsContent)newValue);
                return;
            }
            case 5: {
                this.setArraySizeSemantics((ArraySizeSemanticsEnum)((Object)newValue));
                return;
            }
            case 6: {
                this.setSwMaxTextSize((IntegerValueVariationPoint)newValue);
                return;
            }
            case 7: {
                this.setBaseType((SwBaseType)newValue);
                return;
            }
            case 8: {
                this.setSwFillCharacter((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwDataDefPropsContent(null);
                return;
            }
            case 5: {
                this.unsetArraySizeSemantics();
                return;
            }
            case 6: {
                this.setSwMaxTextSize(null);
                return;
            }
            case 7: {
                this.setBaseType(null);
                return;
            }
            case 8: {
                this.unsetSwFillCharacter();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwDataDefPropsContent() != null;
            }
            case 5: {
                return this.isSetArraySizeSemantics();
            }
            case 6: {
                return this.swMaxTextSize != null;
            }
            case 7: {
                return this.baseType != null;
            }
            case 8: {
                return this.isSetSwFillCharacter();
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
        result.append(" (arraySizeSemantics: ");
        if (this.arraySizeSemanticsESet) {
            result.append((Object)this.arraySizeSemantics);
        } else {
            result.append("<unset>");
        }
        result.append(", swFillCharacter: ");
        if (this.swFillCharacterESet) {
            result.append(this.swFillCharacter);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

