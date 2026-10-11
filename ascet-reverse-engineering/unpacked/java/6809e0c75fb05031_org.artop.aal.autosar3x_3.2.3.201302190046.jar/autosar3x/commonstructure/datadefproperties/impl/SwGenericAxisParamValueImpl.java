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
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar3x.commonstructure.datadefproperties.impl;

import autosar3x.commonstructure.axis.SwGenericAxisParam;
import autosar3x.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar3x.commonstructure.datadefproperties.SwGenericAxisParamValue;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.datatype.valuemodel.Vf;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwGenericAxisParamValueImpl
extends ARObjectImpl
implements SwGenericAxisParamValue {
    protected EList<Vf> vfs;
    protected EList<String> vs;

    protected SwGenericAxisParamValueImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DatadefpropertiesPackage.Literals.SW_GENERIC_AXIS_PARAM_VALUE;
    }

    @Override
    public SwGenericAxisParam getSwGenericAxisParam() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwGenericAxisParam)this.eContainer();
    }

    public NotificationChain basicSetSwGenericAxisParam(SwGenericAxisParam newSwGenericAxisParam, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwGenericAxisParam, 4, msgs);
        return msgs;
    }

    @Override
    public void setSwGenericAxisParam(SwGenericAxisParam newSwGenericAxisParam) {
        if (newSwGenericAxisParam != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwGenericAxisParam != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwGenericAxisParam)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwGenericAxisParam != null) {
                msgs = ((InternalEObject)newSwGenericAxisParam).eInverseAdd((InternalEObject)this, 6, SwGenericAxisParam.class, msgs);
            }
            if ((msgs = this.basicSetSwGenericAxisParam(newSwGenericAxisParam, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwGenericAxisParam, (Object)newSwGenericAxisParam));
        }
    }

    @Override
    public EList<Vf> getVfs() {
        if (this.vfs == null) {
            this.vfs = new EObjectContainmentEList(Vf.class, (InternalEObject)this, 5);
        }
        return this.vfs;
    }

    @Override
    public EList<String> getVs() {
        if (this.vs == null) {
            this.vs = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 6);
        }
        return this.vs;
    }

    @Override
    public void unsetVs() {
        if (this.vs != null) {
            ((InternalEList.Unsettable)this.vs).unset();
        }
    }

    @Override
    public boolean isSetVs() {
        return this.vs != null && ((InternalEList.Unsettable)this.vs).isSet();
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwGenericAxisParam((SwGenericAxisParam)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwGenericAxisParam(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getVfs()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, SwGenericAxisParam.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwGenericAxisParam();
            }
            case 5: {
                return this.getVfs();
            }
            case 6: {
                return this.getVs();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwGenericAxisParam((SwGenericAxisParam)newValue);
                return;
            }
            case 5: {
                this.getVfs().clear();
                this.getVfs().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getVs().clear();
                this.getVs().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwGenericAxisParam(null);
                return;
            }
            case 5: {
                this.getVfs().clear();
                return;
            }
            case 6: {
                this.unsetVs();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwGenericAxisParam() != null;
            }
            case 5: {
                return this.vfs != null && !this.vfs.isEmpty();
            }
            case 6: {
                return this.isSetVs();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (vs: ");
        result.append(this.vs);
        result.append(')');
        return result.toString();
    }
}

