/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.commonstructure.byteorder.impl;

import autosar3x.commonstructure.basetypes.BaseTypeDirectDefinition;
import autosar3x.commonstructure.byteorder.ByteOrder;
import autosar3x.commonstructure.byteorder.ByteorderPackage;
import autosar3x.genericstructure.commonpatterns.enumerations.ByteOrderEnum;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ByteOrderImpl
extends ARObjectImpl
implements ByteOrder {
    protected static final ByteOrderEnum CONTENT_EDEFAULT = ByteOrderEnum.MOST_SIGNIFICANT_BYTE_LAST;
    protected ByteOrderEnum content = CONTENT_EDEFAULT;
    protected boolean contentESet;

    protected ByteOrderImpl() {
    }

    protected EClass eStaticClass() {
        return ByteorderPackage.Literals.BYTE_ORDER;
    }

    public BaseTypeDirectDefinition getBaseTypeDirectDefinition() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (BaseTypeDirectDefinition)this.eContainer();
    }

    public NotificationChain basicSetBaseTypeDirectDefinition(BaseTypeDirectDefinition newBaseTypeDirectDefinition, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newBaseTypeDirectDefinition, 4, msgs);
        return msgs;
    }

    public void setBaseTypeDirectDefinition(BaseTypeDirectDefinition newBaseTypeDirectDefinition) {
        if (newBaseTypeDirectDefinition != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newBaseTypeDirectDefinition != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newBaseTypeDirectDefinition)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newBaseTypeDirectDefinition != null) {
                msgs = ((InternalEObject)newBaseTypeDirectDefinition).eInverseAdd((InternalEObject)this, 11, BaseTypeDirectDefinition.class, msgs);
            }
            if ((msgs = this.basicSetBaseTypeDirectDefinition(newBaseTypeDirectDefinition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newBaseTypeDirectDefinition, (Object)newBaseTypeDirectDefinition));
        }
    }

    public ByteOrderEnum getContent() {
        return this.content;
    }

    public void setContent(ByteOrderEnum newContent) {
        ByteOrderEnum oldContent = this.content;
        this.content = newContent == null ? CONTENT_EDEFAULT : newContent;
        boolean oldContentESet = this.contentESet;
        this.contentESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldContent, (Object)this.content, !oldContentESet));
        }
    }

    public void unsetContent() {
        ByteOrderEnum oldContent = this.content;
        boolean oldContentESet = this.contentESet;
        this.content = CONTENT_EDEFAULT;
        this.contentESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldContent, (Object)CONTENT_EDEFAULT, oldContentESet));
        }
    }

    public boolean isSetContent() {
        return this.contentESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetBaseTypeDirectDefinition((BaseTypeDirectDefinition)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetBaseTypeDirectDefinition(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 11, BaseTypeDirectDefinition.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getBaseTypeDirectDefinition();
            }
            case 5: {
                return this.getContent();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setBaseTypeDirectDefinition((BaseTypeDirectDefinition)newValue);
                return;
            }
            case 5: {
                this.setContent((ByteOrderEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setBaseTypeDirectDefinition(null);
                return;
            }
            case 5: {
                this.unsetContent();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getBaseTypeDirectDefinition() != null;
            }
            case 5: {
                return this.isSetContent();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (content: ");
        if (this.contentESet) {
            result.append((Object)this.content);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

