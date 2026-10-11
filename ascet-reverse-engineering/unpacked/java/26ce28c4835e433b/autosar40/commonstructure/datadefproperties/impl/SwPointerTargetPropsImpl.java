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
package autosar40.commonstructure.datadefproperties.impl;

import autosar40.bswmodule.bswinterfaces.BswModuleEntry;
import autosar40.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.commonstructure.datadefproperties.SwDataDefPropsContent;
import autosar40.commonstructure.datadefproperties.SwPointerTargetProps;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SwPointerTargetPropsImpl
extends ARObjectImpl
implements SwPointerTargetProps,
IReferringClass {
    protected static final String TARGET_CATEGORY_EDEFAULT = "";
    protected String targetCategory = "";
    protected boolean targetCategoryESet;
    protected SwDataDefProps swDataDefProps;
    protected BswModuleEntry functionPointerSignature;

    protected SwPointerTargetPropsImpl() {
    }

    protected EClass eStaticClass() {
        return DatadefpropertiesPackage.Literals.SW_POINTER_TARGET_PROPS;
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
                msgs = ((InternalEObject)newSwDataDefPropsContent).eInverseAdd((InternalEObject)this, 27, SwDataDefPropsContent.class, msgs);
            }
            if ((msgs = this.basicSetSwDataDefPropsContent(newSwDataDefPropsContent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwDataDefPropsContent, (Object)newSwDataDefPropsContent));
        }
    }

    public String getTargetCategory() {
        return this.targetCategory;
    }

    public void setTargetCategory(String newTargetCategory) {
        String oldTargetCategory = this.targetCategory;
        this.targetCategory = newTargetCategory;
        boolean oldTargetCategoryESet = this.targetCategoryESet;
        this.targetCategoryESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldTargetCategory, (Object)this.targetCategory, !oldTargetCategoryESet));
        }
    }

    public void unsetTargetCategory() {
        String oldTargetCategory = this.targetCategory;
        boolean oldTargetCategoryESet = this.targetCategoryESet;
        this.targetCategory = TARGET_CATEGORY_EDEFAULT;
        this.targetCategoryESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldTargetCategory, (Object)TARGET_CATEGORY_EDEFAULT, oldTargetCategoryESet));
        }
    }

    public boolean isSetTargetCategory() {
        return this.targetCategoryESet;
    }

    public SwDataDefProps getSwDataDefProps() {
        return this.swDataDefProps;
    }

    public NotificationChain basicSetSwDataDefProps(SwDataDefProps newSwDataDefProps, NotificationChain msgs) {
        SwDataDefProps oldSwDataDefProps = this.swDataDefProps;
        this.swDataDefProps = newSwDataDefProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSwDataDefProps, (Object)newSwDataDefProps);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwDataDefProps(SwDataDefProps newSwDataDefProps) {
        if (newSwDataDefProps != this.swDataDefProps) {
            NotificationChain msgs = null;
            if (this.swDataDefProps != null) {
                msgs = ((InternalEObject)this.swDataDefProps).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newSwDataDefProps != null) {
                msgs = ((InternalEObject)newSwDataDefProps).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetSwDataDefProps(newSwDataDefProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newSwDataDefProps, (Object)newSwDataDefProps));
        }
    }

    public BswModuleEntry getFunctionPointerSignature() {
        if (this.functionPointerSignature != null && this.functionPointerSignature.eIsProxy()) {
            InternalEObject oldFunctionPointerSignature = (InternalEObject)this.functionPointerSignature;
            this.functionPointerSignature = (BswModuleEntry)this.eResolveProxy(oldFunctionPointerSignature);
            if (this.functionPointerSignature != oldFunctionPointerSignature && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldFunctionPointerSignature, (Object)this.functionPointerSignature));
            }
        }
        return this.functionPointerSignature;
    }

    public BswModuleEntry basicGetFunctionPointerSignature() {
        return this.functionPointerSignature;
    }

    public void setFunctionPointerSignature(BswModuleEntry newFunctionPointerSignature) {
        BswModuleEntry oldFunctionPointerSignature = this.functionPointerSignature;
        this.functionPointerSignature = newFunctionPointerSignature;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldFunctionPointerSignature, (Object)this.functionPointerSignature));
        }
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
                return this.basicSetSwDataDefProps(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 27, SwDataDefPropsContent.class, msgs);
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
                return this.getTargetCategory();
            }
            case 6: {
                return this.getSwDataDefProps();
            }
            case 7: {
                if (resolve) {
                    return this.getFunctionPointerSignature();
                }
                return this.basicGetFunctionPointerSignature();
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
                this.setTargetCategory((String)newValue);
                return;
            }
            case 6: {
                this.setSwDataDefProps((SwDataDefProps)newValue);
                return;
            }
            case 7: {
                this.setFunctionPointerSignature((BswModuleEntry)newValue);
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
                this.unsetTargetCategory();
                return;
            }
            case 6: {
                this.setSwDataDefProps(null);
                return;
            }
            case 7: {
                this.setFunctionPointerSignature(null);
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
                return this.isSetTargetCategory();
            }
            case 6: {
                return this.swDataDefProps != null;
            }
            case 7: {
                return this.functionPointerSignature != null;
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
        result.append(" (targetCategory: ");
        if (this.targetCategoryESet) {
            result.append(this.targetCategory);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

