/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentData.impl;

import com.etas.amd620.core.ComponentData.ArrayT;
import com.etas.amd620.core.ComponentData.ComponentDataPackage;
import com.etas.amd620.core.ComponentData.CurveKindT;
import com.etas.amd620.core.ComponentData.DistributionInfoT;
import com.etas.amd620.core.ComponentData.ExtrapolationType;
import com.etas.amd620.core.ComponentData.OneDType;
import com.etas.amd620.core.ComponentData.impl.DimensionalDataTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class OneDTypeImpl
extends DimensionalDataTImpl
implements OneDType {
    protected ArrayT xAxis;
    protected DistributionInfoT xDistribution;
    protected ArrayT values;
    protected static final ExtrapolationType EXTRAPOLATION_EDEFAULT = ExtrapolationType.CONSTANT;
    protected ExtrapolationType extrapolation = EXTRAPOLATION_EDEFAULT;
    protected boolean extrapolationESet;
    protected static final String INTERPOLATION_EDEFAULT = null;
    protected String interpolation = INTERPOLATION_EDEFAULT;
    protected static final CurveKindT TYPE_EDEFAULT = CurveKindT.NORMAL;
    protected CurveKindT type = TYPE_EDEFAULT;
    protected boolean typeESet;

    protected OneDTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentDataPackage.Literals.ONE_DTYPE;
    }

    @Override
    public ArrayT getXAxis() {
        return this.xAxis;
    }

    public NotificationChain basicSetXAxis(ArrayT newXAxis, NotificationChain msgs) {
        ArrayT oldXAxis = this.xAxis;
        this.xAxis = newXAxis;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldXAxis, (Object)newXAxis);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setXAxis(ArrayT newXAxis) {
        if (newXAxis != this.xAxis) {
            NotificationChain msgs = null;
            if (this.xAxis != null) {
                msgs = ((InternalEObject)this.xAxis).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newXAxis != null) {
                msgs = ((InternalEObject)newXAxis).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetXAxis(newXAxis, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newXAxis, (Object)newXAxis));
        }
    }

    @Override
    public DistributionInfoT getXDistribution() {
        return this.xDistribution;
    }

    public NotificationChain basicSetXDistribution(DistributionInfoT newXDistribution, NotificationChain msgs) {
        DistributionInfoT oldXDistribution = this.xDistribution;
        this.xDistribution = newXDistribution;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldXDistribution, (Object)newXDistribution);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setXDistribution(DistributionInfoT newXDistribution) {
        if (newXDistribution != this.xDistribution) {
            NotificationChain msgs = null;
            if (this.xDistribution != null) {
                msgs = ((InternalEObject)this.xDistribution).eInverseRemove((InternalEObject)this, -4, null, msgs);
            }
            if (newXDistribution != null) {
                msgs = ((InternalEObject)newXDistribution).eInverseAdd((InternalEObject)this, -4, null, msgs);
            }
            if ((msgs = this.basicSetXDistribution(newXDistribution, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)newXDistribution, (Object)newXDistribution));
        }
    }

    @Override
    public ArrayT getValues() {
        return this.values;
    }

    public NotificationChain basicSetValues(ArrayT newValues, NotificationChain msgs) {
        ArrayT oldValues = this.values;
        this.values = newValues;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldValues, (Object)newValues);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setValues(ArrayT newValues) {
        if (newValues != this.values) {
            NotificationChain msgs = null;
            if (this.values != null) {
                msgs = ((InternalEObject)this.values).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newValues != null) {
                msgs = ((InternalEObject)newValues).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetValues(newValues, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newValues, (Object)newValues));
        }
    }

    @Override
    public ExtrapolationType getExtrapolation() {
        return this.extrapolation;
    }

    @Override
    public void setExtrapolation(ExtrapolationType newExtrapolation) {
        ExtrapolationType oldExtrapolation = this.extrapolation;
        this.extrapolation = newExtrapolation == null ? EXTRAPOLATION_EDEFAULT : newExtrapolation;
        boolean oldExtrapolationESet = this.extrapolationESet;
        this.extrapolationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldExtrapolation, (Object)this.extrapolation, !oldExtrapolationESet));
        }
    }

    @Override
    public void unsetExtrapolation() {
        ExtrapolationType oldExtrapolation = this.extrapolation;
        boolean oldExtrapolationESet = this.extrapolationESet;
        this.extrapolation = EXTRAPOLATION_EDEFAULT;
        this.extrapolationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldExtrapolation, (Object)EXTRAPOLATION_EDEFAULT, oldExtrapolationESet));
        }
    }

    @Override
    public boolean isSetExtrapolation() {
        return this.extrapolationESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldInterpolation, (Object)this.interpolation));
        }
    }

    @Override
    public CurveKindT getType() {
        return this.type;
    }

    @Override
    public void setType(CurveKindT newType) {
        CurveKindT oldType = this.type;
        this.type = newType == null ? TYPE_EDEFAULT : newType;
        boolean oldTypeESet = this.typeESet;
        this.typeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldType, (Object)this.type, !oldTypeESet));
        }
    }

    @Override
    public void unsetType() {
        CurveKindT oldType = this.type;
        boolean oldTypeESet = this.typeESet;
        this.type = TYPE_EDEFAULT;
        this.typeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldType, (Object)TYPE_EDEFAULT, oldTypeESet));
        }
    }

    @Override
    public boolean isSetType() {
        return this.typeESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 2: {
                return this.basicSetXAxis(null, msgs);
            }
            case 3: {
                return this.basicSetXDistribution(null, msgs);
            }
            case 4: {
                return this.basicSetValues(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 2: {
                return this.getXAxis();
            }
            case 3: {
                return this.getXDistribution();
            }
            case 4: {
                return this.getValues();
            }
            case 5: {
                return this.getExtrapolation();
            }
            case 6: {
                return this.getInterpolation();
            }
            case 7: {
                return this.getType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 2: {
                this.setXAxis((ArrayT)newValue);
                return;
            }
            case 3: {
                this.setXDistribution((DistributionInfoT)newValue);
                return;
            }
            case 4: {
                this.setValues((ArrayT)newValue);
                return;
            }
            case 5: {
                this.setExtrapolation((ExtrapolationType)((Object)newValue));
                return;
            }
            case 6: {
                this.setInterpolation((String)newValue);
                return;
            }
            case 7: {
                this.setType((CurveKindT)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 2: {
                this.setXAxis(null);
                return;
            }
            case 3: {
                this.setXDistribution(null);
                return;
            }
            case 4: {
                this.setValues(null);
                return;
            }
            case 5: {
                this.unsetExtrapolation();
                return;
            }
            case 6: {
                this.setInterpolation(INTERPOLATION_EDEFAULT);
                return;
            }
            case 7: {
                this.unsetType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 2: {
                return this.xAxis != null;
            }
            case 3: {
                return this.xDistribution != null;
            }
            case 4: {
                return this.values != null;
            }
            case 5: {
                return this.isSetExtrapolation();
            }
            case 6: {
                return INTERPOLATION_EDEFAULT == null ? this.interpolation != null : !INTERPOLATION_EDEFAULT.equals(this.interpolation);
            }
            case 7: {
                return this.isSetType();
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
        result.append(" (extrapolation: ");
        if (this.extrapolationESet) {
            result.append((Object)this.extrapolation);
        } else {
            result.append("<unset>");
        }
        result.append(", interpolation: ");
        result.append(this.interpolation);
        result.append(", type: ");
        if (this.typeESet) {
            result.append((Object)this.type);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

