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
import com.etas.amd620.core.ComponentSpecification.ContentsComplexType;
import com.etas.amd620.core.ComponentSpecification.HierarchyT;
import com.etas.amd620.core.ComponentSpecification.IconT;
import com.etas.amd620.core.ComponentSpecification.InterfacesType3;
import com.etas.amd620.core.ComponentSpecification.PointT;
import com.etas.amd620.core.ComponentSpecification.SizeT;
import com.etas.amd620.core.ComponentSpecification.impl.GraphicObjectTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class HierarchyTImpl
extends GraphicObjectTImpl
implements HierarchyT {
    protected SizeT size;
    protected PointT position;
    protected InterfacesType3 interfaces;
    protected PointT labelPosition;
    protected IconT icon;
    protected ContentsComplexType contents;
    protected static final String NAME_EDEFAULT = null;
    protected String name = NAME_EDEFAULT;
    protected static final boolean NAME_VISIBILITY_EDEFAULT = false;
    protected boolean nameVisibility = false;
    protected boolean nameVisibilityESet;

    protected HierarchyTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getHierarchyT();
    }

    @Override
    public SizeT getSize() {
        return this.size;
    }

    public NotificationChain basicSetSize(SizeT newSize, NotificationChain msgs) {
        SizeT oldSize = this.size;
        this.size = newSize;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldSize, (Object)newSize);
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
                msgs = ((InternalEObject)this.size).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newSize != null) {
                msgs = ((InternalEObject)newSize).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetSize(newSize, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSize, (Object)newSize));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldPosition, (Object)newPosition);
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
                msgs = ((InternalEObject)this.position).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newPosition != null) {
                msgs = ((InternalEObject)newPosition).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetPosition(newPosition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newPosition, (Object)newPosition));
        }
    }

    @Override
    public InterfacesType3 getInterfaces() {
        return this.interfaces;
    }

    public NotificationChain basicSetInterfaces(InterfacesType3 newInterfaces, NotificationChain msgs) {
        InterfacesType3 oldInterfaces = this.interfaces;
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
    public void setInterfaces(InterfacesType3 newInterfaces) {
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
    public PointT getLabelPosition() {
        return this.labelPosition;
    }

    public NotificationChain basicSetLabelPosition(PointT newLabelPosition, NotificationChain msgs) {
        PointT oldLabelPosition = this.labelPosition;
        this.labelPosition = newLabelPosition;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldLabelPosition, (Object)newLabelPosition);
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
                msgs = ((InternalEObject)this.labelPosition).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newLabelPosition != null) {
                msgs = ((InternalEObject)newLabelPosition).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetLabelPosition(newLabelPosition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newLabelPosition, (Object)newLabelPosition));
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
    public ContentsComplexType getContents() {
        return this.contents;
    }

    public NotificationChain basicSetContents(ContentsComplexType newContents, NotificationChain msgs) {
        ContentsComplexType oldContents = this.contents;
        this.contents = newContents;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldContents, (Object)newContents);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setContents(ContentsComplexType newContents) {
        if (newContents != this.contents) {
            NotificationChain msgs = null;
            if (this.contents != null) {
                msgs = ((InternalEObject)this.contents).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newContents != null) {
                msgs = ((InternalEObject)newContents).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetContents(newContents, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newContents, (Object)newContents));
        }
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public void setName(String newName) {
        String oldName = this.name;
        this.name = newName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldName, (Object)this.name));
        }
    }

    @Override
    public boolean isNameVisibility() {
        return this.nameVisibility;
    }

    @Override
    public void setNameVisibility(boolean newNameVisibility) {
        boolean oldNameVisibility = this.nameVisibility;
        this.nameVisibility = newNameVisibility;
        boolean oldNameVisibilityESet = this.nameVisibilityESet;
        this.nameVisibilityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, oldNameVisibility, this.nameVisibility, !oldNameVisibilityESet));
        }
    }

    @Override
    public void unsetNameVisibility() {
        boolean oldNameVisibility = this.nameVisibility;
        boolean oldNameVisibilityESet = this.nameVisibilityESet;
        this.nameVisibility = false;
        this.nameVisibilityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, oldNameVisibility, false, oldNameVisibilityESet));
        }
    }

    @Override
    public boolean isSetNameVisibility() {
        return this.nameVisibilityESet;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSize(null, msgs);
            }
            case 5: {
                return this.basicSetPosition(null, msgs);
            }
            case 6: {
                return this.basicSetInterfaces(null, msgs);
            }
            case 7: {
                return this.basicSetLabelPosition(null, msgs);
            }
            case 8: {
                return this.basicSetIcon(null, msgs);
            }
            case 9: {
                return this.basicSetContents(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSize();
            }
            case 5: {
                return this.getPosition();
            }
            case 6: {
                return this.getInterfaces();
            }
            case 7: {
                return this.getLabelPosition();
            }
            case 8: {
                return this.getIcon();
            }
            case 9: {
                return this.getContents();
            }
            case 10: {
                return this.getName();
            }
            case 11: {
                return this.isNameVisibility();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSize((SizeT)newValue);
                return;
            }
            case 5: {
                this.setPosition((PointT)newValue);
                return;
            }
            case 6: {
                this.setInterfaces((InterfacesType3)newValue);
                return;
            }
            case 7: {
                this.setLabelPosition((PointT)newValue);
                return;
            }
            case 8: {
                this.setIcon((IconT)newValue);
                return;
            }
            case 9: {
                this.setContents((ContentsComplexType)newValue);
                return;
            }
            case 10: {
                this.setName((String)newValue);
                return;
            }
            case 11: {
                this.setNameVisibility((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSize(null);
                return;
            }
            case 5: {
                this.setPosition(null);
                return;
            }
            case 6: {
                this.setInterfaces(null);
                return;
            }
            case 7: {
                this.setLabelPosition(null);
                return;
            }
            case 8: {
                this.setIcon(null);
                return;
            }
            case 9: {
                this.setContents(null);
                return;
            }
            case 10: {
                this.setName(NAME_EDEFAULT);
                return;
            }
            case 11: {
                this.unsetNameVisibility();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.size != null;
            }
            case 5: {
                return this.position != null;
            }
            case 6: {
                return this.interfaces != null;
            }
            case 7: {
                return this.labelPosition != null;
            }
            case 8: {
                return this.icon != null;
            }
            case 9: {
                return this.contents != null;
            }
            case 10: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
            case 11: {
                return this.isSetNameVisibility();
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
        result.append(" (name: ");
        result.append(this.name);
        result.append(", nameVisibility: ");
        if (this.nameVisibilityESet) {
            result.append(this.nameVisibility);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

