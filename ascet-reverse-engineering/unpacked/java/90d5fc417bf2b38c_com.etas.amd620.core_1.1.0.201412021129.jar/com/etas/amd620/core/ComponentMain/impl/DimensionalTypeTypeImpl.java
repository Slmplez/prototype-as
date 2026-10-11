/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.DimensionalAttributesT;
import com.etas.amd620.core.ComponentMain.DimensionalTypeType;
import com.etas.amd620.core.ComponentMain.TypeType1;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class DimensionalTypeTypeImpl
extends MinimalEObjectImpl.Container
implements DimensionalTypeType {
    protected DimensionalAttributesT dimensionalAttributes;
    protected static final String INTERPOLATION_EDEFAULT = null;
    protected String interpolation = INTERPOLATION_EDEFAULT;
    protected static final BigInteger MAX_SIZE_X_EDEFAULT = null;
    protected BigInteger maxSizeX = MAX_SIZE_X_EDEFAULT;
    protected static final BigInteger MAX_SIZE_Y_EDEFAULT = null;
    protected BigInteger maxSizeY = MAX_SIZE_Y_EDEFAULT;
    protected static final TypeType1 TYPE_EDEFAULT = TypeType1.NORMAL;
    protected TypeType1 type = TYPE_EDEFAULT;
    protected boolean typeESet;
    protected static final String XDISTRIBUTION_NAME_EDEFAULT = null;
    protected String xDistributionName = XDISTRIBUTION_NAME_EDEFAULT;
    protected static final String XDISTRIBUTION_OID_EDEFAULT = null;
    protected String xDistributionOID = XDISTRIBUTION_OID_EDEFAULT;
    protected static final String XSIZE_VARIANT_ELEMENT_NAME_EDEFAULT = null;
    protected String xSizeVariantElementName = XSIZE_VARIANT_ELEMENT_NAME_EDEFAULT;
    protected static final String XSIZE_VARIANT_ELEMENT_OID_EDEFAULT = null;
    protected String xSizeVariantElementOID = XSIZE_VARIANT_ELEMENT_OID_EDEFAULT;
    protected static final String YDISTRIBUTION_NAME_EDEFAULT = null;
    protected String yDistributionName = YDISTRIBUTION_NAME_EDEFAULT;
    protected static final String YDISTRIBUTION_OID_EDEFAULT = null;
    protected String yDistributionOID = YDISTRIBUTION_OID_EDEFAULT;
    protected static final String YSIZE_VARIANT_ELEMENT_NAME_EDEFAULT = null;
    protected String ySizeVariantElementName = YSIZE_VARIANT_ELEMENT_NAME_EDEFAULT;
    protected static final String YSIZE_VARIANT_ELEMENT_OID_EDEFAULT = null;
    protected String ySizeVariantElementOID = YSIZE_VARIANT_ELEMENT_OID_EDEFAULT;

    protected DimensionalTypeTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.DIMENSIONAL_TYPE_TYPE;
    }

    @Override
    public DimensionalAttributesT getDimensionalAttributes() {
        return this.dimensionalAttributes;
    }

    public NotificationChain basicSetDimensionalAttributes(DimensionalAttributesT newDimensionalAttributes, NotificationChain msgs) {
        DimensionalAttributesT oldDimensionalAttributes = this.dimensionalAttributes;
        this.dimensionalAttributes = newDimensionalAttributes;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldDimensionalAttributes, (Object)newDimensionalAttributes);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDimensionalAttributes(DimensionalAttributesT newDimensionalAttributes) {
        if (newDimensionalAttributes != this.dimensionalAttributes) {
            NotificationChain msgs = null;
            if (this.dimensionalAttributes != null) {
                msgs = ((InternalEObject)this.dimensionalAttributes).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newDimensionalAttributes != null) {
                msgs = ((InternalEObject)newDimensionalAttributes).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetDimensionalAttributes(newDimensionalAttributes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newDimensionalAttributes, (Object)newDimensionalAttributes));
        }
    }

    @Override
    public String getInterpolation() {
        return this.interpolation;
    }

    @Override
    public void setInterpolation(String newInterpolation) {
        String oldInterpolation = this.interpolation;
        this.interpolation = newInterpolation;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldInterpolation, (Object)this.interpolation));
        }
    }

    @Override
    public BigInteger getMaxSizeX() {
        return this.maxSizeX;
    }

    @Override
    public void setMaxSizeX(BigInteger newMaxSizeX) {
        BigInteger oldMaxSizeX = this.maxSizeX;
        this.maxSizeX = newMaxSizeX;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldMaxSizeX, (Object)this.maxSizeX));
        }
    }

    @Override
    public BigInteger getMaxSizeY() {
        return this.maxSizeY;
    }

    @Override
    public void setMaxSizeY(BigInteger newMaxSizeY) {
        BigInteger oldMaxSizeY = this.maxSizeY;
        this.maxSizeY = newMaxSizeY;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldMaxSizeY, (Object)this.maxSizeY));
        }
    }

    @Override
    public TypeType1 getType() {
        return this.type;
    }

    @Override
    public void setType(TypeType1 newType) {
        TypeType1 oldType = this.type;
        this.type = newType == null ? TYPE_EDEFAULT : newType;
        boolean oldTypeESet = this.typeESet;
        this.typeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldType, (Object)this.type, !oldTypeESet));
        }
    }

    @Override
    public void unsetType() {
        TypeType1 oldType = this.type;
        boolean oldTypeESet = this.typeESet;
        this.type = TYPE_EDEFAULT;
        this.typeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldType, (Object)TYPE_EDEFAULT, oldTypeESet));
        }
    }

    @Override
    public boolean isSetType() {
        return this.typeESet;
    }

    @Override
    public String getXDistributionName() {
        return this.xDistributionName;
    }

    @Override
    public void setXDistributionName(String newXDistributionName) {
        String oldXDistributionName = this.xDistributionName;
        this.xDistributionName = newXDistributionName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldXDistributionName, (Object)this.xDistributionName));
        }
    }

    @Override
    public String getXDistributionOID() {
        return this.xDistributionOID;
    }

    @Override
    public void setXDistributionOID(String newXDistributionOID) {
        String oldXDistributionOID = this.xDistributionOID;
        this.xDistributionOID = newXDistributionOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldXDistributionOID, (Object)this.xDistributionOID));
        }
    }

    @Override
    public String getXSizeVariantElementName() {
        return this.xSizeVariantElementName;
    }

    @Override
    public void setXSizeVariantElementName(String newXSizeVariantElementName) {
        String oldXSizeVariantElementName = this.xSizeVariantElementName;
        this.xSizeVariantElementName = newXSizeVariantElementName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldXSizeVariantElementName, (Object)this.xSizeVariantElementName));
        }
    }

    @Override
    public String getXSizeVariantElementOID() {
        return this.xSizeVariantElementOID;
    }

    @Override
    public void setXSizeVariantElementOID(String newXSizeVariantElementOID) {
        String oldXSizeVariantElementOID = this.xSizeVariantElementOID;
        this.xSizeVariantElementOID = newXSizeVariantElementOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldXSizeVariantElementOID, (Object)this.xSizeVariantElementOID));
        }
    }

    @Override
    public String getYDistributionName() {
        return this.yDistributionName;
    }

    @Override
    public void setYDistributionName(String newYDistributionName) {
        String oldYDistributionName = this.yDistributionName;
        this.yDistributionName = newYDistributionName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldYDistributionName, (Object)this.yDistributionName));
        }
    }

    @Override
    public String getYDistributionOID() {
        return this.yDistributionOID;
    }

    @Override
    public void setYDistributionOID(String newYDistributionOID) {
        String oldYDistributionOID = this.yDistributionOID;
        this.yDistributionOID = newYDistributionOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldYDistributionOID, (Object)this.yDistributionOID));
        }
    }

    @Override
    public String getYSizeVariantElementName() {
        return this.ySizeVariantElementName;
    }

    @Override
    public void setYSizeVariantElementName(String newYSizeVariantElementName) {
        String oldYSizeVariantElementName = this.ySizeVariantElementName;
        this.ySizeVariantElementName = newYSizeVariantElementName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldYSizeVariantElementName, (Object)this.ySizeVariantElementName));
        }
    }

    @Override
    public String getYSizeVariantElementOID() {
        return this.ySizeVariantElementOID;
    }

    @Override
    public void setYSizeVariantElementOID(String newYSizeVariantElementOID) {
        String oldYSizeVariantElementOID = this.ySizeVariantElementOID;
        this.ySizeVariantElementOID = newYSizeVariantElementOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldYSizeVariantElementOID, (Object)this.ySizeVariantElementOID));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetDimensionalAttributes(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getDimensionalAttributes();
            }
            case 1: {
                return this.getInterpolation();
            }
            case 2: {
                return this.getMaxSizeX();
            }
            case 3: {
                return this.getMaxSizeY();
            }
            case 4: {
                return this.getType();
            }
            case 5: {
                return this.getXDistributionName();
            }
            case 6: {
                return this.getXDistributionOID();
            }
            case 7: {
                return this.getXSizeVariantElementName();
            }
            case 8: {
                return this.getXSizeVariantElementOID();
            }
            case 9: {
                return this.getYDistributionName();
            }
            case 10: {
                return this.getYDistributionOID();
            }
            case 11: {
                return this.getYSizeVariantElementName();
            }
            case 12: {
                return this.getYSizeVariantElementOID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setDimensionalAttributes((DimensionalAttributesT)newValue);
                return;
            }
            case 1: {
                this.setInterpolation((String)newValue);
                return;
            }
            case 2: {
                this.setMaxSizeX((BigInteger)newValue);
                return;
            }
            case 3: {
                this.setMaxSizeY((BigInteger)newValue);
                return;
            }
            case 4: {
                this.setType((TypeType1)((Object)newValue));
                return;
            }
            case 5: {
                this.setXDistributionName((String)newValue);
                return;
            }
            case 6: {
                this.setXDistributionOID((String)newValue);
                return;
            }
            case 7: {
                this.setXSizeVariantElementName((String)newValue);
                return;
            }
            case 8: {
                this.setXSizeVariantElementOID((String)newValue);
                return;
            }
            case 9: {
                this.setYDistributionName((String)newValue);
                return;
            }
            case 10: {
                this.setYDistributionOID((String)newValue);
                return;
            }
            case 11: {
                this.setYSizeVariantElementName((String)newValue);
                return;
            }
            case 12: {
                this.setYSizeVariantElementOID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setDimensionalAttributes(null);
                return;
            }
            case 1: {
                this.setInterpolation(INTERPOLATION_EDEFAULT);
                return;
            }
            case 2: {
                this.setMaxSizeX(MAX_SIZE_X_EDEFAULT);
                return;
            }
            case 3: {
                this.setMaxSizeY(MAX_SIZE_Y_EDEFAULT);
                return;
            }
            case 4: {
                this.unsetType();
                return;
            }
            case 5: {
                this.setXDistributionName(XDISTRIBUTION_NAME_EDEFAULT);
                return;
            }
            case 6: {
                this.setXDistributionOID(XDISTRIBUTION_OID_EDEFAULT);
                return;
            }
            case 7: {
                this.setXSizeVariantElementName(XSIZE_VARIANT_ELEMENT_NAME_EDEFAULT);
                return;
            }
            case 8: {
                this.setXSizeVariantElementOID(XSIZE_VARIANT_ELEMENT_OID_EDEFAULT);
                return;
            }
            case 9: {
                this.setYDistributionName(YDISTRIBUTION_NAME_EDEFAULT);
                return;
            }
            case 10: {
                this.setYDistributionOID(YDISTRIBUTION_OID_EDEFAULT);
                return;
            }
            case 11: {
                this.setYSizeVariantElementName(YSIZE_VARIANT_ELEMENT_NAME_EDEFAULT);
                return;
            }
            case 12: {
                this.setYSizeVariantElementOID(YSIZE_VARIANT_ELEMENT_OID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.dimensionalAttributes != null;
            }
            case 1: {
                return INTERPOLATION_EDEFAULT == null ? this.interpolation != null : !INTERPOLATION_EDEFAULT.equals(this.interpolation);
            }
            case 2: {
                return MAX_SIZE_X_EDEFAULT == null ? this.maxSizeX != null : !MAX_SIZE_X_EDEFAULT.equals(this.maxSizeX);
            }
            case 3: {
                return MAX_SIZE_Y_EDEFAULT == null ? this.maxSizeY != null : !MAX_SIZE_Y_EDEFAULT.equals(this.maxSizeY);
            }
            case 4: {
                return this.isSetType();
            }
            case 5: {
                return XDISTRIBUTION_NAME_EDEFAULT == null ? this.xDistributionName != null : !XDISTRIBUTION_NAME_EDEFAULT.equals(this.xDistributionName);
            }
            case 6: {
                return XDISTRIBUTION_OID_EDEFAULT == null ? this.xDistributionOID != null : !XDISTRIBUTION_OID_EDEFAULT.equals(this.xDistributionOID);
            }
            case 7: {
                return XSIZE_VARIANT_ELEMENT_NAME_EDEFAULT == null ? this.xSizeVariantElementName != null : !XSIZE_VARIANT_ELEMENT_NAME_EDEFAULT.equals(this.xSizeVariantElementName);
            }
            case 8: {
                return XSIZE_VARIANT_ELEMENT_OID_EDEFAULT == null ? this.xSizeVariantElementOID != null : !XSIZE_VARIANT_ELEMENT_OID_EDEFAULT.equals(this.xSizeVariantElementOID);
            }
            case 9: {
                return YDISTRIBUTION_NAME_EDEFAULT == null ? this.yDistributionName != null : !YDISTRIBUTION_NAME_EDEFAULT.equals(this.yDistributionName);
            }
            case 10: {
                return YDISTRIBUTION_OID_EDEFAULT == null ? this.yDistributionOID != null : !YDISTRIBUTION_OID_EDEFAULT.equals(this.yDistributionOID);
            }
            case 11: {
                return YSIZE_VARIANT_ELEMENT_NAME_EDEFAULT == null ? this.ySizeVariantElementName != null : !YSIZE_VARIANT_ELEMENT_NAME_EDEFAULT.equals(this.ySizeVariantElementName);
            }
            case 12: {
                return YSIZE_VARIANT_ELEMENT_OID_EDEFAULT == null ? this.ySizeVariantElementOID != null : !YSIZE_VARIANT_ELEMENT_OID_EDEFAULT.equals(this.ySizeVariantElementOID);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (interpolation: ");
        result.append(this.interpolation);
        result.append(", maxSizeX: ");
        result.append(this.maxSizeX);
        result.append(", maxSizeY: ");
        result.append(this.maxSizeY);
        result.append(", type: ");
        if (this.typeESet) {
            result.append((Object)this.type);
        } else {
            result.append("<unset>");
        }
        result.append(", xDistributionName: ");
        result.append(this.xDistributionName);
        result.append(", xDistributionOID: ");
        result.append(this.xDistributionOID);
        result.append(", xSizeVariantElementName: ");
        result.append(this.xSizeVariantElementName);
        result.append(", xSizeVariantElementOID: ");
        result.append(this.xSizeVariantElementOID);
        result.append(", yDistributionName: ");
        result.append(this.yDistributionName);
        result.append(", yDistributionOID: ");
        result.append(this.yDistributionOID);
        result.append(", ySizeVariantElementName: ");
        result.append(this.ySizeVariantElementName);
        result.append(", ySizeVariantElementOID: ");
        result.append(this.ySizeVariantElementOID);
        result.append(')');
        return result.toString();
    }
}

