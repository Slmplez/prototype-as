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
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.IconT;
import com.etas.amd620.core.ComponentSpecification.InterfacesType7;
import com.etas.amd620.core.ComponentSpecification.LayoutT;
import com.etas.amd620.core.ComponentSpecification.PointT;
import com.etas.amd620.core.ComponentSpecification.SizeT;
import com.etas.amd620.core.ComponentSpecification.SymbolT;
import com.etas.amd620.core.ComponentSpecification.impl.GraphicObjectTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class LayoutTImpl
extends GraphicObjectTImpl
implements LayoutT {
    protected PointT position;
    protected PointT labelPosition;
    protected InterfacesType7 interfaces;
    protected SizeT size;
    protected IconT icon;
    protected SymbolT symbol;
    protected static final boolean FLEXIBLE_CREATED_EDEFAULT = false;
    protected boolean flexibleCreated = false;
    protected boolean flexibleCreatedESet;
    protected static final boolean HIDE_CLASS_NAME_EDEFAULT = false;
    protected boolean hideClassName = false;
    protected boolean hideClassNameESet;
    protected static final boolean HIDE_ICON_EDEFAULT = false;
    protected boolean hideIcon = false;
    protected boolean hideIconESet;
    protected static final boolean HIDE_NAME_EDEFAULT = false;
    protected boolean hideName = false;
    protected boolean hideNameESet;
    protected static final boolean HIDE_PIN_NAMES_EDEFAULT = false;
    protected boolean hidePinNames = false;
    protected boolean hidePinNamesESet;
    protected static final boolean HIDE_UNCONNECTED_PORTS_EDEFAULT = false;
    protected boolean hideUnconnectedPorts = false;
    protected boolean hideUnconnectedPortsESet;

    protected LayoutTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getLayoutT();
    }

    @Override
    public PointT getPosition() {
        return this.position;
    }

    public NotificationChain basicSetPosition(PointT newPosition, NotificationChain msgs) {
        PointT oldPosition = this.position;
        this.position = newPosition;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldPosition, (Object)newPosition);
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
                msgs = ((InternalEObject)this.position).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newPosition != null) {
                msgs = ((InternalEObject)newPosition).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetPosition(newPosition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newPosition, (Object)newPosition));
        }
    }

    @Override
    public PointT getLabelPosition() {
        return this.labelPosition;
    }

    public NotificationChain basicSetLabelPosition(PointT newLabelPosition, NotificationChain msgs) {
        PointT oldLabelPosition = this.labelPosition;
        this.labelPosition = newLabelPosition;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldLabelPosition, (Object)newLabelPosition);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setLabelPosition(PointT newLabelPosition) {
        if (newLabelPosition != this.labelPosition) {
            NotificationChain msgs = null;
            if (this.labelPosition != null) {
                msgs = ((InternalEObject)this.labelPosition).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newLabelPosition != null) {
                msgs = ((InternalEObject)newLabelPosition).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetLabelPosition(newLabelPosition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newLabelPosition, (Object)newLabelPosition));
        }
    }

    @Override
    public InterfacesType7 getInterfaces() {
        return this.interfaces;
    }

    public NotificationChain basicSetInterfaces(InterfacesType7 newInterfaces, NotificationChain msgs) {
        InterfacesType7 oldInterfaces = this.interfaces;
        this.interfaces = newInterfaces;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldInterfaces, (Object)newInterfaces);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setInterfaces(InterfacesType7 newInterfaces) {
        if (newInterfaces != this.interfaces) {
            NotificationChain msgs = null;
            if (this.interfaces != null) {
                msgs = ((InternalEObject)this.interfaces).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newInterfaces != null) {
                msgs = ((InternalEObject)newInterfaces).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetInterfaces(newInterfaces, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newInterfaces, (Object)newInterfaces));
        }
    }

    @Override
    public SizeT getSize() {
        return this.size;
    }

    public NotificationChain basicSetSize(SizeT newSize, NotificationChain msgs) {
        SizeT oldSize = this.size;
        this.size = newSize;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSize, (Object)newSize);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSize(SizeT newSize) {
        if (newSize != this.size) {
            NotificationChain msgs = null;
            if (this.size != null) {
                msgs = ((InternalEObject)this.size).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newSize != null) {
                msgs = ((InternalEObject)newSize).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetSize(newSize, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newSize, (Object)newSize));
        }
    }

    @Override
    public IconT getIcon() {
        return this.icon;
    }

    public NotificationChain basicSetIcon(IconT newIcon, NotificationChain msgs) {
        IconT oldIcon = this.icon;
        this.icon = newIcon;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldIcon, (Object)newIcon);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setIcon(IconT newIcon) {
        if (newIcon != this.icon) {
            NotificationChain msgs = null;
            if (this.icon != null) {
                msgs = ((InternalEObject)this.icon).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newIcon != null) {
                msgs = ((InternalEObject)newIcon).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetIcon(newIcon, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newIcon, (Object)newIcon));
        }
    }

    @Override
    public SymbolT getSymbol() {
        return this.symbol;
    }

    public NotificationChain basicSetSymbol(SymbolT newSymbol, NotificationChain msgs) {
        SymbolT oldSymbol = this.symbol;
        this.symbol = newSymbol;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldSymbol, (Object)newSymbol);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSymbol(SymbolT newSymbol) {
        if (newSymbol != this.symbol) {
            NotificationChain msgs = null;
            if (this.symbol != null) {
                msgs = ((InternalEObject)this.symbol).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newSymbol != null) {
                msgs = ((InternalEObject)newSymbol).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetSymbol(newSymbol, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newSymbol, (Object)newSymbol));
        }
    }

    @Override
    public boolean isFlexibleCreated() {
        return this.flexibleCreated;
    }

    @Override
    public void setFlexibleCreated(boolean newFlexibleCreated) {
        boolean oldFlexibleCreated = this.flexibleCreated;
        this.flexibleCreated = newFlexibleCreated;
        boolean oldFlexibleCreatedESet = this.flexibleCreatedESet;
        this.flexibleCreatedESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, oldFlexibleCreated, this.flexibleCreated, !oldFlexibleCreatedESet));
        }
    }

    @Override
    public void unsetFlexibleCreated() {
        boolean oldFlexibleCreated = this.flexibleCreated;
        boolean oldFlexibleCreatedESet = this.flexibleCreatedESet;
        this.flexibleCreated = false;
        this.flexibleCreatedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, oldFlexibleCreated, false, oldFlexibleCreatedESet));
        }
    }

    @Override
    public boolean isSetFlexibleCreated() {
        return this.flexibleCreatedESet;
    }

    @Override
    public boolean isHideClassName() {
        return this.hideClassName;
    }

    @Override
    public void setHideClassName(boolean newHideClassName) {
        boolean oldHideClassName = this.hideClassName;
        this.hideClassName = newHideClassName;
        boolean oldHideClassNameESet = this.hideClassNameESet;
        this.hideClassNameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, oldHideClassName, this.hideClassName, !oldHideClassNameESet));
        }
    }

    @Override
    public void unsetHideClassName() {
        boolean oldHideClassName = this.hideClassName;
        boolean oldHideClassNameESet = this.hideClassNameESet;
        this.hideClassName = false;
        this.hideClassNameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, oldHideClassName, false, oldHideClassNameESet));
        }
    }

    @Override
    public boolean isSetHideClassName() {
        return this.hideClassNameESet;
    }

    @Override
    public boolean isHideIcon() {
        return this.hideIcon;
    }

    @Override
    public void setHideIcon(boolean newHideIcon) {
        boolean oldHideIcon = this.hideIcon;
        this.hideIcon = newHideIcon;
        boolean oldHideIconESet = this.hideIconESet;
        this.hideIconESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, oldHideIcon, this.hideIcon, !oldHideIconESet));
        }
    }

    @Override
    public void unsetHideIcon() {
        boolean oldHideIcon = this.hideIcon;
        boolean oldHideIconESet = this.hideIconESet;
        this.hideIcon = false;
        this.hideIconESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, oldHideIcon, false, oldHideIconESet));
        }
    }

    @Override
    public boolean isSetHideIcon() {
        return this.hideIconESet;
    }

    @Override
    public boolean isHideName() {
        return this.hideName;
    }

    @Override
    public void setHideName(boolean newHideName) {
        boolean oldHideName = this.hideName;
        this.hideName = newHideName;
        boolean oldHideNameESet = this.hideNameESet;
        this.hideNameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, oldHideName, this.hideName, !oldHideNameESet));
        }
    }

    @Override
    public void unsetHideName() {
        boolean oldHideName = this.hideName;
        boolean oldHideNameESet = this.hideNameESet;
        this.hideName = false;
        this.hideNameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, oldHideName, false, oldHideNameESet));
        }
    }

    @Override
    public boolean isSetHideName() {
        return this.hideNameESet;
    }

    @Override
    public boolean isHidePinNames() {
        return this.hidePinNames;
    }

    @Override
    public void setHidePinNames(boolean newHidePinNames) {
        boolean oldHidePinNames = this.hidePinNames;
        this.hidePinNames = newHidePinNames;
        boolean oldHidePinNamesESet = this.hidePinNamesESet;
        this.hidePinNamesESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, oldHidePinNames, this.hidePinNames, !oldHidePinNamesESet));
        }
    }

    @Override
    public void unsetHidePinNames() {
        boolean oldHidePinNames = this.hidePinNames;
        boolean oldHidePinNamesESet = this.hidePinNamesESet;
        this.hidePinNames = false;
        this.hidePinNamesESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, oldHidePinNames, false, oldHidePinNamesESet));
        }
    }

    @Override
    public boolean isSetHidePinNames() {
        return this.hidePinNamesESet;
    }

    @Override
    public boolean isHideUnconnectedPorts() {
        return this.hideUnconnectedPorts;
    }

    @Override
    public void setHideUnconnectedPorts(boolean newHideUnconnectedPorts) {
        boolean oldHideUnconnectedPorts = this.hideUnconnectedPorts;
        this.hideUnconnectedPorts = newHideUnconnectedPorts;
        boolean oldHideUnconnectedPortsESet = this.hideUnconnectedPortsESet;
        this.hideUnconnectedPortsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, oldHideUnconnectedPorts, this.hideUnconnectedPorts, !oldHideUnconnectedPortsESet));
        }
    }

    @Override
    public void unsetHideUnconnectedPorts() {
        boolean oldHideUnconnectedPorts = this.hideUnconnectedPorts;
        boolean oldHideUnconnectedPortsESet = this.hideUnconnectedPortsESet;
        this.hideUnconnectedPorts = false;
        this.hideUnconnectedPortsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 15, oldHideUnconnectedPorts, false, oldHideUnconnectedPortsESet));
        }
    }

    @Override
    public boolean isSetHideUnconnectedPorts() {
        return this.hideUnconnectedPortsESet;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetPosition(null, msgs);
            }
            case 5: {
                return this.basicSetLabelPosition(null, msgs);
            }
            case 6: {
                return this.basicSetInterfaces(null, msgs);
            }
            case 7: {
                return this.basicSetSize(null, msgs);
            }
            case 8: {
                return this.basicSetIcon(null, msgs);
            }
            case 9: {
                return this.basicSetSymbol(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getPosition();
            }
            case 5: {
                return this.getLabelPosition();
            }
            case 6: {
                return this.getInterfaces();
            }
            case 7: {
                return this.getSize();
            }
            case 8: {
                return this.getIcon();
            }
            case 9: {
                return this.getSymbol();
            }
            case 10: {
                return this.isFlexibleCreated();
            }
            case 11: {
                return this.isHideClassName();
            }
            case 12: {
                return this.isHideIcon();
            }
            case 13: {
                return this.isHideName();
            }
            case 14: {
                return this.isHidePinNames();
            }
            case 15: {
                return this.isHideUnconnectedPorts();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setPosition((PointT)newValue);
                return;
            }
            case 5: {
                this.setLabelPosition((PointT)newValue);
                return;
            }
            case 6: {
                this.setInterfaces((InterfacesType7)newValue);
                return;
            }
            case 7: {
                this.setSize((SizeT)newValue);
                return;
            }
            case 8: {
                this.setIcon((IconT)newValue);
                return;
            }
            case 9: {
                this.setSymbol((SymbolT)newValue);
                return;
            }
            case 10: {
                this.setFlexibleCreated((Boolean)newValue);
                return;
            }
            case 11: {
                this.setHideClassName((Boolean)newValue);
                return;
            }
            case 12: {
                this.setHideIcon((Boolean)newValue);
                return;
            }
            case 13: {
                this.setHideName((Boolean)newValue);
                return;
            }
            case 14: {
                this.setHidePinNames((Boolean)newValue);
                return;
            }
            case 15: {
                this.setHideUnconnectedPorts((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setPosition(null);
                return;
            }
            case 5: {
                this.setLabelPosition(null);
                return;
            }
            case 6: {
                this.setInterfaces(null);
                return;
            }
            case 7: {
                this.setSize(null);
                return;
            }
            case 8: {
                this.setIcon(null);
                return;
            }
            case 9: {
                this.setSymbol(null);
                return;
            }
            case 10: {
                this.unsetFlexibleCreated();
                return;
            }
            case 11: {
                this.unsetHideClassName();
                return;
            }
            case 12: {
                this.unsetHideIcon();
                return;
            }
            case 13: {
                this.unsetHideName();
                return;
            }
            case 14: {
                this.unsetHidePinNames();
                return;
            }
            case 15: {
                this.unsetHideUnconnectedPorts();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.position != null;
            }
            case 5: {
                return this.labelPosition != null;
            }
            case 6: {
                return this.interfaces != null;
            }
            case 7: {
                return this.size != null;
            }
            case 8: {
                return this.icon != null;
            }
            case 9: {
                return this.symbol != null;
            }
            case 10: {
                return this.isSetFlexibleCreated();
            }
            case 11: {
                return this.isSetHideClassName();
            }
            case 12: {
                return this.isSetHideIcon();
            }
            case 13: {
                return this.isSetHideName();
            }
            case 14: {
                return this.isSetHidePinNames();
            }
            case 15: {
                return this.isSetHideUnconnectedPorts();
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
        result.append(" (flexibleCreated: ");
        if (this.flexibleCreatedESet) {
            result.append(this.flexibleCreated);
        } else {
            result.append("<unset>");
        }
        result.append(", hideClassName: ");
        if (this.hideClassNameESet) {
            result.append(this.hideClassName);
        } else {
            result.append("<unset>");
        }
        result.append(", hideIcon: ");
        if (this.hideIconESet) {
            result.append(this.hideIcon);
        } else {
            result.append("<unset>");
        }
        result.append(", hideName: ");
        if (this.hideNameESet) {
            result.append(this.hideName);
        } else {
            result.append("<unset>");
        }
        result.append(", hidePinNames: ");
        if (this.hidePinNamesESet) {
            result.append(this.hidePinNames);
        } else {
            result.append("<unset>");
        }
        result.append(", hideUnconnectedPorts: ");
        if (this.hideUnconnectedPortsESet) {
            result.append(this.hideUnconnectedPorts);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

