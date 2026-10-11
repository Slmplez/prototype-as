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
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ColorT;
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.LineStyleT;
import com.etas.amd620.core.ComponentSpecification.TypeType5;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class LineStyleTImpl
extends MinimalEObjectImpl.Container
implements LineStyleT {
    protected ColorT color;
    protected static final TypeType5 TYPE_EDEFAULT = TypeType5.LINE_SOLID;
    protected TypeType5 type = TYPE_EDEFAULT;
    protected boolean typeESet;
    protected static final BigInteger WIDTH_EDEFAULT = null;
    protected BigInteger width = WIDTH_EDEFAULT;

    protected LineStyleTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getLineStyleT();
    }

    @Override
    public ColorT getColor() {
        return this.color;
    }

    public NotificationChain basicSetColor(ColorT newColor, NotificationChain msgs) {
        ColorT oldColor = this.color;
        this.color = newColor;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldColor, (Object)newColor);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setColor(ColorT newColor) {
        if (newColor != this.color) {
            NotificationChain msgs = null;
            if (this.color != null) {
                msgs = ((InternalEObject)this.color).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newColor != null) {
                msgs = ((InternalEObject)newColor).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetColor(newColor, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newColor, (Object)newColor));
        }
    }

    @Override
    public TypeType5 getType() {
        return this.type;
    }

    @Override
    public void setType(TypeType5 newType) {
        TypeType5 oldType = this.type;
        this.type = newType == null ? TYPE_EDEFAULT : newType;
        boolean oldTypeESet = this.typeESet;
        this.typeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldType, (Object)this.type, !oldTypeESet));
        }
    }

    @Override
    public void unsetType() {
        TypeType5 oldType = this.type;
        boolean oldTypeESet = this.typeESet;
        this.type = TYPE_EDEFAULT;
        this.typeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 1, (Object)oldType, (Object)TYPE_EDEFAULT, oldTypeESet));
        }
    }

    @Override
    public boolean isSetType() {
        return this.typeESet;
    }

    @Override
    public BigInteger getWidth() {
        return this.width;
    }

    @Override
    public void setWidth(BigInteger newWidth) {
        BigInteger oldWidth = this.width;
        this.width = newWidth;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldWidth, (Object)this.width));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetColor(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getColor();
            }
            case 1: {
                return this.getType();
            }
            case 2: {
                return this.getWidth();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setColor((ColorT)newValue);
                return;
            }
            case 1: {
                this.setType((TypeType5)((Object)newValue));
                return;
            }
            case 2: {
                this.setWidth((BigInteger)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setColor(null);
                return;
            }
            case 1: {
                this.unsetType();
                return;
            }
            case 2: {
                this.setWidth(WIDTH_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.color != null;
            }
            case 1: {
                return this.isSetType();
            }
            case 2: {
                return WIDTH_EDEFAULT == null ? this.width != null : !WIDTH_EDEFAULT.equals(this.width);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (type: ");
        if (this.typeESet) {
            result.append((Object)this.type);
        } else {
            result.append("<unset>");
        }
        result.append(", width: ");
        result.append(this.width);
        result.append(')');
        return result.toString();
    }
}

