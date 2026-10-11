/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.swcomponent.implementation.impl;

import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Xfile;
import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.swcomponent.implementation.Code;
import autosar21.swcomponent.implementation.CodeTypeEnum;
import autosar21.swcomponent.implementation.Implementation;
import autosar21.swcomponent.implementation.ImplementationPackage;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CodeImpl
extends IdentifiableImpl
implements Code {
    protected static final CodeTypeEnum TYPE_EDEFAULT = CodeTypeEnum.SRC;
    protected CodeTypeEnum type = TYPE_EDEFAULT;
    protected boolean typeESet;
    protected EList<Xfile> xfiles;

    protected CodeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ImplementationPackage.Literals.CODE;
    }

    @Override
    public Implementation getImplementation() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (Implementation)this.eContainer();
    }

    public NotificationChain basicSetImplementation(Implementation newImplementation, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newImplementation, 16, msgs);
        return msgs;
    }

    @Override
    public void setImplementation(Implementation newImplementation) {
        if (newImplementation != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newImplementation != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newImplementation)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newImplementation != null) {
                msgs = ((InternalEObject)newImplementation).eInverseAdd((InternalEObject)this, 22, Implementation.class, msgs);
            }
            if ((msgs = this.basicSetImplementation(newImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newImplementation, (Object)newImplementation));
        }
    }

    @Override
    public CodeTypeEnum getType() {
        return this.type;
    }

    @Override
    public void setType(CodeTypeEnum newType) {
        CodeTypeEnum oldType = this.type;
        this.type = newType == null ? TYPE_EDEFAULT : newType;
        boolean oldTypeESet = this.typeESet;
        this.typeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldType, (Object)this.type, !oldTypeESet));
        }
    }

    @Override
    public void unsetType() {
        CodeTypeEnum oldType = this.type;
        boolean oldTypeESet = this.typeESet;
        this.type = TYPE_EDEFAULT;
        this.typeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldType, (Object)TYPE_EDEFAULT, oldTypeESet));
        }
    }

    @Override
    public boolean isSetType() {
        return this.typeESet;
    }

    @Override
    public EList<Xfile> getXfiles() {
        if (this.xfiles == null) {
            this.xfiles = new EObjectContainmentEList(Xfile.class, (InternalEObject)this, 18);
        }
        return this.xfiles;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetImplementation((Implementation)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetImplementation(null, msgs);
            }
            case 18: {
                return ((InternalEList)this.getXfiles()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, Implementation.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getImplementation();
            }
            case 17: {
                return this.getType();
            }
            case 18: {
                return this.getXfiles();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setImplementation((Implementation)newValue);
                return;
            }
            case 17: {
                this.setType((CodeTypeEnum)((Object)newValue));
                return;
            }
            case 18: {
                this.getXfiles().clear();
                this.getXfiles().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setImplementation(null);
                return;
            }
            case 17: {
                this.unsetType();
                return;
            }
            case 18: {
                this.getXfiles().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getImplementation() != null;
            }
            case 17: {
                return this.isSetType();
            }
            case 18: {
                return this.xfiles != null && !this.xfiles.isEmpty();
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
        result.append(" (type: ");
        if (this.typeESet) {
            result.append((Object)this.type);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

