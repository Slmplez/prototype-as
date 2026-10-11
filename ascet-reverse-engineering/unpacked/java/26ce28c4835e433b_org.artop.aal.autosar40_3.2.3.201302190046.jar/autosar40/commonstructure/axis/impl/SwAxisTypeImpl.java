/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.commonstructure.axis.impl;

import autosar40.commonstructure.axis.AxisPackage;
import autosar40.commonstructure.axis.SwAxisType;
import autosar40.commonstructure.axis.SwGenericAxisParamType;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwAxisTypeImpl
extends ARElementImpl
implements SwAxisType {
    protected DocumentationBlock swGenericAxisDesc;
    protected EList<SwGenericAxisParamType> swGenericAxisParamTypes;

    protected SwAxisTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return AxisPackage.Literals.SW_AXIS_TYPE;
    }

    @Override
    public DocumentationBlock getSwGenericAxisDesc() {
        return this.swGenericAxisDesc;
    }

    public NotificationChain basicSetSwGenericAxisDesc(DocumentationBlock newSwGenericAxisDesc, NotificationChain msgs) {
        DocumentationBlock oldSwGenericAxisDesc = this.swGenericAxisDesc;
        this.swGenericAxisDesc = newSwGenericAxisDesc;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldSwGenericAxisDesc, (Object)newSwGenericAxisDesc);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwGenericAxisDesc(DocumentationBlock newSwGenericAxisDesc) {
        if (newSwGenericAxisDesc != this.swGenericAxisDesc) {
            NotificationChain msgs = null;
            if (this.swGenericAxisDesc != null) {
                msgs = ((InternalEObject)this.swGenericAxisDesc).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newSwGenericAxisDesc != null) {
                msgs = ((InternalEObject)newSwGenericAxisDesc).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetSwGenericAxisDesc(newSwGenericAxisDesc, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newSwGenericAxisDesc, (Object)newSwGenericAxisDesc));
        }
    }

    @Override
    public EList<SwGenericAxisParamType> getSwGenericAxisParamTypes() {
        if (this.swGenericAxisParamTypes == null) {
            this.swGenericAxisParamTypes = new EObjectContainmentWithInverseEList(SwGenericAxisParamType.class, (InternalEObject)this, 22, 18);
        }
        return this.swGenericAxisParamTypes;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return ((InternalEList)this.getSwGenericAxisParamTypes()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return this.basicSetSwGenericAxisDesc(null, msgs);
            }
            case 22: {
                return ((InternalEList)this.getSwGenericAxisParamTypes()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getSwGenericAxisDesc();
            }
            case 22: {
                return this.getSwGenericAxisParamTypes();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setSwGenericAxisDesc((DocumentationBlock)newValue);
                return;
            }
            case 22: {
                this.getSwGenericAxisParamTypes().clear();
                this.getSwGenericAxisParamTypes().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.setSwGenericAxisDesc(null);
                return;
            }
            case 22: {
                this.getSwGenericAxisParamTypes().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.swGenericAxisDesc != null;
            }
            case 22: {
                return this.swGenericAxisParamTypes != null && !this.swGenericAxisParamTypes.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

