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
import com.etas.amd620.core.ComponentSpecification.GraphicObjectT;
import com.etas.amd620.core.ComponentSpecification.LineStyleT;
import com.etas.amd620.core.ComponentSpecification.ViewInfoT;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class GraphicObjectTImpl
extends MinimalEObjectImpl.Container
implements GraphicObjectT {
    protected ViewInfoT viewInfo;
    protected LineStyleT lineStyle;
    protected ColorT fillColor;
    protected static final BigInteger GRAPHIC_OID_EDEFAULT = null;
    protected BigInteger graphicOID = GRAPHIC_OID_EDEFAULT;

    protected GraphicObjectTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getGraphicObjectT();
    }

    @Override
    public ViewInfoT getViewInfo() {
        return this.viewInfo;
    }

    public NotificationChain basicSetViewInfo(ViewInfoT newViewInfo, NotificationChain msgs) {
        ViewInfoT oldViewInfo = this.viewInfo;
        this.viewInfo = newViewInfo;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldViewInfo, (Object)newViewInfo);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setViewInfo(ViewInfoT newViewInfo) {
        if (newViewInfo != this.viewInfo) {
            NotificationChain msgs = null;
            if (this.viewInfo != null) {
                msgs = ((InternalEObject)this.viewInfo).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newViewInfo != null) {
                msgs = ((InternalEObject)newViewInfo).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetViewInfo(newViewInfo, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newViewInfo, (Object)newViewInfo));
        }
    }

    @Override
    public LineStyleT getLineStyle() {
        return this.lineStyle;
    }

    public NotificationChain basicSetLineStyle(LineStyleT newLineStyle, NotificationChain msgs) {
        LineStyleT oldLineStyle = this.lineStyle;
        this.lineStyle = newLineStyle;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldLineStyle, (Object)newLineStyle);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setLineStyle(LineStyleT newLineStyle) {
        if (newLineStyle != this.lineStyle) {
            NotificationChain msgs = null;
            if (this.lineStyle != null) {
                msgs = ((InternalEObject)this.lineStyle).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newLineStyle != null) {
                msgs = ((InternalEObject)newLineStyle).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetLineStyle(newLineStyle, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newLineStyle, (Object)newLineStyle));
        }
    }

    @Override
    public ColorT getFillColor() {
        return this.fillColor;
    }

    public NotificationChain basicSetFillColor(ColorT newFillColor, NotificationChain msgs) {
        ColorT oldFillColor = this.fillColor;
        this.fillColor = newFillColor;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldFillColor, (Object)newFillColor);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setFillColor(ColorT newFillColor) {
        if (newFillColor != this.fillColor) {
            NotificationChain msgs = null;
            if (this.fillColor != null) {
                msgs = ((InternalEObject)this.fillColor).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newFillColor != null) {
                msgs = ((InternalEObject)newFillColor).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetFillColor(newFillColor, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newFillColor, (Object)newFillColor));
        }
    }

    @Override
    public BigInteger getGraphicOID() {
        return this.graphicOID;
    }

    @Override
    public void setGraphicOID(BigInteger newGraphicOID) {
        BigInteger oldGraphicOID = this.graphicOID;
        this.graphicOID = newGraphicOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldGraphicOID, (Object)this.graphicOID));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetViewInfo(null, msgs);
            }
            case 1: {
                return this.basicSetLineStyle(null, msgs);
            }
            case 2: {
                return this.basicSetFillColor(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getViewInfo();
            }
            case 1: {
                return this.getLineStyle();
            }
            case 2: {
                return this.getFillColor();
            }
            case 3: {
                return this.getGraphicOID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setViewInfo((ViewInfoT)newValue);
                return;
            }
            case 1: {
                this.setLineStyle((LineStyleT)newValue);
                return;
            }
            case 2: {
                this.setFillColor((ColorT)newValue);
                return;
            }
            case 3: {
                this.setGraphicOID((BigInteger)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setViewInfo(null);
                return;
            }
            case 1: {
                this.setLineStyle(null);
                return;
            }
            case 2: {
                this.setFillColor(null);
                return;
            }
            case 3: {
                this.setGraphicOID(GRAPHIC_OID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.viewInfo != null;
            }
            case 1: {
                return this.lineStyle != null;
            }
            case 2: {
                return this.fillColor != null;
            }
            case 3: {
                return GRAPHIC_OID_EDEFAULT == null ? this.graphicOID != null : !GRAPHIC_OID_EDEFAULT.equals(this.graphicOID);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (graphicOID: ");
        result.append(this.graphicOID);
        result.append(')');
        return result.toString();
    }
}

