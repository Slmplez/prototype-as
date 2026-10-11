/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
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
package autosar3x.commonstructure.auxillaryobjects.impl;

import autosar3x.commonstructure.auxillaryobjects.AuxillaryobjectsPackage;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayout;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayoutGroupContent;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayoutV;
import autosar3x.commonstructure.basetypes.SwBaseType;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SwRecordLayoutVImpl
extends ARObjectImpl
implements SwRecordLayoutV,
IReferringClass {
    protected SwBaseType baseType;
    protected static final String SW_RECORD_LAYOUT_VAXIS_EDEFAULT = "";
    protected String swRecordLayoutVAxis = "";
    protected boolean swRecordLayoutVAxisESet;
    protected static final String SW_RECORD_LAYOUT_VPROP_EDEFAULT = "";
    protected String swRecordLayoutVProp = "";
    protected boolean swRecordLayoutVPropESet;
    protected static final String SW_RECORD_LAYOUT_VINDEX_EDEFAULT = "";
    protected String swRecordLayoutVIndex = "";
    protected boolean swRecordLayoutVIndexESet;
    protected static final Integer SW_RECORD_LAYOUT_VFIX_VALUE_EDEFAULT = new Integer(0);
    protected Integer swRecordLayoutVFixValue = SW_RECORD_LAYOUT_VFIX_VALUE_EDEFAULT;
    protected boolean swRecordLayoutVFixValueESet;
    protected SwRecordLayout swRecordLayout;

    protected SwRecordLayoutVImpl() {
    }

    protected EClass eStaticClass() {
        return AuxillaryobjectsPackage.Literals.SW_RECORD_LAYOUT_V;
    }

    public SwRecordLayoutGroupContent getSwRecordLayoutGroupContent() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwRecordLayoutGroupContent)this.eContainer();
    }

    public NotificationChain basicSetSwRecordLayoutGroupContent(SwRecordLayoutGroupContent newSwRecordLayoutGroupContent, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwRecordLayoutGroupContent, 4, msgs);
        return msgs;
    }

    public void setSwRecordLayoutGroupContent(SwRecordLayoutGroupContent newSwRecordLayoutGroupContent) {
        if (newSwRecordLayoutGroupContent != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwRecordLayoutGroupContent != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwRecordLayoutGroupContent)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwRecordLayoutGroupContent != null) {
                msgs = ((InternalEObject)newSwRecordLayoutGroupContent).eInverseAdd((InternalEObject)this, 6, SwRecordLayoutGroupContent.class, msgs);
            }
            if ((msgs = this.basicSetSwRecordLayoutGroupContent(newSwRecordLayoutGroupContent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwRecordLayoutGroupContent, (Object)newSwRecordLayoutGroupContent));
        }
    }

    public SwBaseType getBaseType() {
        if (this.baseType != null && this.baseType.eIsProxy()) {
            InternalEObject oldBaseType = (InternalEObject)this.baseType;
            this.baseType = (SwBaseType)this.eResolveProxy(oldBaseType);
            if (this.baseType != oldBaseType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldBaseType, (Object)this.baseType));
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
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldBaseType, (Object)this.baseType));
        }
    }

    public String getSwRecordLayoutVAxis() {
        return this.swRecordLayoutVAxis;
    }

    public void setSwRecordLayoutVAxis(String newSwRecordLayoutVAxis) {
        String oldSwRecordLayoutVAxis = this.swRecordLayoutVAxis;
        this.swRecordLayoutVAxis = newSwRecordLayoutVAxis;
        boolean oldSwRecordLayoutVAxisESet = this.swRecordLayoutVAxisESet;
        this.swRecordLayoutVAxisESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSwRecordLayoutVAxis, (Object)this.swRecordLayoutVAxis, !oldSwRecordLayoutVAxisESet));
        }
    }

    public void unsetSwRecordLayoutVAxis() {
        String oldSwRecordLayoutVAxis = this.swRecordLayoutVAxis;
        boolean oldSwRecordLayoutVAxisESet = this.swRecordLayoutVAxisESet;
        this.swRecordLayoutVAxis = "";
        this.swRecordLayoutVAxisESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldSwRecordLayoutVAxis, (Object)"", oldSwRecordLayoutVAxisESet));
        }
    }

    public boolean isSetSwRecordLayoutVAxis() {
        return this.swRecordLayoutVAxisESet;
    }

    public String getSwRecordLayoutVProp() {
        return this.swRecordLayoutVProp;
    }

    public void setSwRecordLayoutVProp(String newSwRecordLayoutVProp) {
        String oldSwRecordLayoutVProp = this.swRecordLayoutVProp;
        this.swRecordLayoutVProp = newSwRecordLayoutVProp;
        boolean oldSwRecordLayoutVPropESet = this.swRecordLayoutVPropESet;
        this.swRecordLayoutVPropESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSwRecordLayoutVProp, (Object)this.swRecordLayoutVProp, !oldSwRecordLayoutVPropESet));
        }
    }

    public void unsetSwRecordLayoutVProp() {
        String oldSwRecordLayoutVProp = this.swRecordLayoutVProp;
        boolean oldSwRecordLayoutVPropESet = this.swRecordLayoutVPropESet;
        this.swRecordLayoutVProp = "";
        this.swRecordLayoutVPropESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldSwRecordLayoutVProp, (Object)"", oldSwRecordLayoutVPropESet));
        }
    }

    public boolean isSetSwRecordLayoutVProp() {
        return this.swRecordLayoutVPropESet;
    }

    public String getSwRecordLayoutVIndex() {
        return this.swRecordLayoutVIndex;
    }

    public void setSwRecordLayoutVIndex(String newSwRecordLayoutVIndex) {
        String oldSwRecordLayoutVIndex = this.swRecordLayoutVIndex;
        this.swRecordLayoutVIndex = newSwRecordLayoutVIndex;
        boolean oldSwRecordLayoutVIndexESet = this.swRecordLayoutVIndexESet;
        this.swRecordLayoutVIndexESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldSwRecordLayoutVIndex, (Object)this.swRecordLayoutVIndex, !oldSwRecordLayoutVIndexESet));
        }
    }

    public void unsetSwRecordLayoutVIndex() {
        String oldSwRecordLayoutVIndex = this.swRecordLayoutVIndex;
        boolean oldSwRecordLayoutVIndexESet = this.swRecordLayoutVIndexESet;
        this.swRecordLayoutVIndex = "";
        this.swRecordLayoutVIndexESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldSwRecordLayoutVIndex, (Object)"", oldSwRecordLayoutVIndexESet));
        }
    }

    public boolean isSetSwRecordLayoutVIndex() {
        return this.swRecordLayoutVIndexESet;
    }

    public Integer getSwRecordLayoutVFixValue() {
        return this.swRecordLayoutVFixValue;
    }

    public void setSwRecordLayoutVFixValue(Integer newSwRecordLayoutVFixValue) {
        Integer oldSwRecordLayoutVFixValue = this.swRecordLayoutVFixValue;
        this.swRecordLayoutVFixValue = newSwRecordLayoutVFixValue;
        boolean oldSwRecordLayoutVFixValueESet = this.swRecordLayoutVFixValueESet;
        this.swRecordLayoutVFixValueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldSwRecordLayoutVFixValue, (Object)this.swRecordLayoutVFixValue, !oldSwRecordLayoutVFixValueESet));
        }
    }

    public void unsetSwRecordLayoutVFixValue() {
        Integer oldSwRecordLayoutVFixValue = this.swRecordLayoutVFixValue;
        boolean oldSwRecordLayoutVFixValueESet = this.swRecordLayoutVFixValueESet;
        this.swRecordLayoutVFixValue = SW_RECORD_LAYOUT_VFIX_VALUE_EDEFAULT;
        this.swRecordLayoutVFixValueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldSwRecordLayoutVFixValue, (Object)SW_RECORD_LAYOUT_VFIX_VALUE_EDEFAULT, oldSwRecordLayoutVFixValueESet));
        }
    }

    public boolean isSetSwRecordLayoutVFixValue() {
        return this.swRecordLayoutVFixValueESet;
    }

    public SwRecordLayout getSwRecordLayout() {
        if (this.swRecordLayout != null && this.swRecordLayout.eIsProxy()) {
            InternalEObject oldSwRecordLayout = (InternalEObject)this.swRecordLayout;
            this.swRecordLayout = (SwRecordLayout)this.eResolveProxy(oldSwRecordLayout);
            if (this.swRecordLayout != oldSwRecordLayout && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 10, (Object)oldSwRecordLayout, (Object)this.swRecordLayout));
            }
        }
        return this.swRecordLayout;
    }

    public SwRecordLayout basicGetSwRecordLayout() {
        return this.swRecordLayout;
    }

    public void setSwRecordLayout(SwRecordLayout newSwRecordLayout) {
        SwRecordLayout oldSwRecordLayout = this.swRecordLayout;
        this.swRecordLayout = newSwRecordLayout;
        AutosarObjectUtil.setDest((EObject)this, (int)10, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldSwRecordLayout, (Object)this.swRecordLayout));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwRecordLayoutGroupContent((SwRecordLayoutGroupContent)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwRecordLayoutGroupContent(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, SwRecordLayoutGroupContent.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwRecordLayoutGroupContent();
            }
            case 5: {
                if (resolve) {
                    return this.getBaseType();
                }
                return this.basicGetBaseType();
            }
            case 6: {
                return this.getSwRecordLayoutVAxis();
            }
            case 7: {
                return this.getSwRecordLayoutVProp();
            }
            case 8: {
                return this.getSwRecordLayoutVIndex();
            }
            case 9: {
                return this.getSwRecordLayoutVFixValue();
            }
            case 10: {
                if (resolve) {
                    return this.getSwRecordLayout();
                }
                return this.basicGetSwRecordLayout();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwRecordLayoutGroupContent((SwRecordLayoutGroupContent)newValue);
                return;
            }
            case 5: {
                this.setBaseType((SwBaseType)newValue);
                return;
            }
            case 6: {
                this.setSwRecordLayoutVAxis((String)newValue);
                return;
            }
            case 7: {
                this.setSwRecordLayoutVProp((String)newValue);
                return;
            }
            case 8: {
                this.setSwRecordLayoutVIndex((String)newValue);
                return;
            }
            case 9: {
                this.setSwRecordLayoutVFixValue((Integer)newValue);
                return;
            }
            case 10: {
                this.setSwRecordLayout((SwRecordLayout)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwRecordLayoutGroupContent(null);
                return;
            }
            case 5: {
                this.setBaseType(null);
                return;
            }
            case 6: {
                this.unsetSwRecordLayoutVAxis();
                return;
            }
            case 7: {
                this.unsetSwRecordLayoutVProp();
                return;
            }
            case 8: {
                this.unsetSwRecordLayoutVIndex();
                return;
            }
            case 9: {
                this.unsetSwRecordLayoutVFixValue();
                return;
            }
            case 10: {
                this.setSwRecordLayout(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwRecordLayoutGroupContent() != null;
            }
            case 5: {
                return this.baseType != null;
            }
            case 6: {
                return this.isSetSwRecordLayoutVAxis();
            }
            case 7: {
                return this.isSetSwRecordLayoutVProp();
            }
            case 8: {
                return this.isSetSwRecordLayoutVIndex();
            }
            case 9: {
                return this.isSetSwRecordLayoutVFixValue();
            }
            case 10: {
                return this.swRecordLayout != null;
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
        result.append(" (swRecordLayoutVAxis: ");
        if (this.swRecordLayoutVAxisESet) {
            result.append(this.swRecordLayoutVAxis);
        } else {
            result.append("<unset>");
        }
        result.append(", swRecordLayoutVProp: ");
        if (this.swRecordLayoutVPropESet) {
            result.append(this.swRecordLayoutVProp);
        } else {
            result.append("<unset>");
        }
        result.append(", swRecordLayoutVIndex: ");
        if (this.swRecordLayoutVIndexESet) {
            result.append(this.swRecordLayoutVIndex);
        } else {
            result.append("<unset>");
        }
        result.append(", swRecordLayoutVFixValue: ");
        if (this.swRecordLayoutVFixValueESet) {
            result.append(this.swRecordLayoutVFixValue);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

