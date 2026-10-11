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

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.FormattedTextT;
import com.etas.amd620.core.ComponentSpecification.PointT;
import com.etas.amd620.core.ComponentSpecification.TextT;
import com.etas.amd620.core.ComponentSpecification.ViewInfoT;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class TextTImpl
extends MinimalEObjectImpl.Container
implements TextT {
    protected ViewInfoT viewInfo;
    protected PointT position;
    protected PointT offset;
    protected FormattedTextT text;
    protected static final BigInteger GRAPHIC_OID_EDEFAULT = null;
    protected BigInteger graphicOID = GRAPHIC_OID_EDEFAULT;
    protected static final boolean VISIBLE_EDEFAULT = false;
    protected boolean visible = false;
    protected boolean visibleESet;

    protected TextTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getTextT();
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
    public PointT getPosition() {
        return this.position;
    }

    public NotificationChain basicSetPosition(PointT newPosition, NotificationChain msgs) {
        PointT oldPosition = this.position;
        this.position = newPosition;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldPosition, (Object)newPosition);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setPosition(PointT newPosition) {
        if (newPosition != this.position) {
            NotificationChain msgs = null;
            if (this.position != null) {
                msgs = ((InternalEObject)this.position).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newPosition != null) {
                msgs = ((InternalEObject)newPosition).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetPosition(newPosition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newPosition, (Object)newPosition));
        }
    }

    @Override
    public PointT getOffset() {
        return this.offset;
    }

    public NotificationChain basicSetOffset(PointT newOffset, NotificationChain msgs) {
        PointT oldOffset = this.offset;
        this.offset = newOffset;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldOffset, (Object)newOffset);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setOffset(PointT newOffset) {
        if (newOffset != this.offset) {
            NotificationChain msgs = null;
            if (this.offset != null) {
                msgs = ((InternalEObject)this.offset).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newOffset != null) {
                msgs = ((InternalEObject)newOffset).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetOffset(newOffset, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newOffset, (Object)newOffset));
        }
    }

    @Override
    public FormattedTextT getText() {
        return this.text;
    }

    public NotificationChain basicSetText(FormattedTextT newText, NotificationChain msgs) {
        FormattedTextT oldText = this.text;
        this.text = newText;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldText, (Object)newText);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setText(FormattedTextT newText) {
        if (newText != this.text) {
            NotificationChain msgs = null;
            if (this.text != null) {
                msgs = ((InternalEObject)this.text).eInverseRemove((InternalEObject)this, -4, null, msgs);
            }
            if (newText != null) {
                msgs = ((InternalEObject)newText).eInverseAdd((InternalEObject)this, -4, null, msgs);
            }
            if ((msgs = this.basicSetText(newText, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)newText, (Object)newText));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldGraphicOID, (Object)this.graphicOID));
        }
    }

    @Override
    public boolean isVisible() {
        return this.visible;
    }

    @Override
    public void setVisible(boolean newVisible) {
        boolean oldVisible = this.visible;
        this.visible = newVisible;
        boolean oldVisibleESet = this.visibleESet;
        this.visibleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, oldVisible, this.visible, !oldVisibleESet));
        }
    }

    @Override
    public void unsetVisible() {
        boolean oldVisible = this.visible;
        boolean oldVisibleESet = this.visibleESet;
        this.visible = false;
        this.visibleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, oldVisible, false, oldVisibleESet));
        }
    }

    @Override
    public boolean isSetVisible() {
        return this.visibleESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetViewInfo(null, msgs);
            }
            case 1: {
                return this.basicSetPosition(null, msgs);
            }
            case 2: {
                return this.basicSetOffset(null, msgs);
            }
            case 3: {
                return this.basicSetText(null, msgs);
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
                return this.getPosition();
            }
            case 2: {
                return this.getOffset();
            }
            case 3: {
                return this.getText();
            }
            case 4: {
                return this.getGraphicOID();
            }
            case 5: {
                return this.isVisible();
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
                this.setPosition((PointT)newValue);
                return;
            }
            case 2: {
                this.setOffset((PointT)newValue);
                return;
            }
            case 3: {
                this.setText((FormattedTextT)newValue);
                return;
            }
            case 4: {
                this.setGraphicOID((BigInteger)newValue);
                return;
            }
            case 5: {
                this.setVisible((Boolean)newValue);
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
                this.setPosition(null);
                return;
            }
            case 2: {
                this.setOffset(null);
                return;
            }
            case 3: {
                this.setText(null);
                return;
            }
            case 4: {
                this.setGraphicOID(GRAPHIC_OID_EDEFAULT);
                return;
            }
            case 5: {
                this.unsetVisible();
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
                return this.position != null;
            }
            case 2: {
                return this.offset != null;
            }
            case 3: {
                return this.text != null;
            }
            case 4: {
                return GRAPHIC_OID_EDEFAULT == null ? this.graphicOID != null : !GRAPHIC_OID_EDEFAULT.equals(this.graphicOID);
            }
            case 5: {
                return this.isSetVisible();
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
        result.append(", visible: ");
        if (this.visibleESet) {
            result.append(this.visible);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

