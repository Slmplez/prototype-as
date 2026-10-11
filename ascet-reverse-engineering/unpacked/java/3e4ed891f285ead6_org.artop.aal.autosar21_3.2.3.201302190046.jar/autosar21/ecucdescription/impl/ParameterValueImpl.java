/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GConfigParameter
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.sphinx.emf.ecore.MinimalEObjectImpl2$Container
 */
package autosar21.ecucdescription.impl;

import autosar21.ecucdescription.Container;
import autosar21.ecucdescription.EcucdescriptionPackage;
import autosar21.ecucdescription.ParameterValue;
import autosar21.ecucparameterdef.ConfigParameter;
import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import gautosar.gecucparameterdef.GConfigParameter;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.sphinx.emf.ecore.MinimalEObjectImpl2;

public abstract class ParameterValueImpl
extends ARObjectImpl
implements ParameterValue,
IReferringClass {
    protected ConfigParameter definition;

    protected ParameterValueImpl() {
    }

    protected EClass eStaticClass() {
        return EcucdescriptionPackage.Literals.PARAMETER_VALUE;
    }

    public Container getContainer() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (Container)this.eContainer();
    }

    public NotificationChain basicSetContainer(Container newContainer, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newContainer, 4, msgs);
        return msgs;
    }

    public void setContainer(Container newContainer) {
        if (newContainer != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newContainer != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newContainer)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newContainer != null) {
                msgs = ((InternalEObject)newContainer).eInverseAdd((InternalEObject)this, 17, MinimalEObjectImpl2.Container.class, msgs);
            }
            if ((msgs = this.basicSetContainer(newContainer, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newContainer, (Object)newContainer));
        }
    }

    public ConfigParameter getDefinition() {
        if (this.definition != null && this.definition.eIsProxy()) {
            InternalEObject oldDefinition = (InternalEObject)this.definition;
            this.definition = (ConfigParameter)this.eResolveProxy(oldDefinition);
            if (this.definition != oldDefinition && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldDefinition, (Object)this.definition));
            }
        }
        return this.definition;
    }

    public ConfigParameter basicGetDefinition() {
        return this.definition;
    }

    public void setDefinition(ConfigParameter newDefinition) {
        ConfigParameter oldDefinition = this.definition;
        this.definition = newDefinition;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldDefinition, (Object)this.definition));
        }
    }

    public GConfigParameter gGetDefinition() {
        return this.getDefinition();
    }

    public void gSetDefinition(GConfigParameter value) {
        this.setDefinition((ConfigParameter)value);
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetContainer((Container)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetContainer(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 17, MinimalEObjectImpl2.Container.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getContainer();
            }
            case 5: {
                if (resolve) {
                    return this.getDefinition();
                }
                return this.basicGetDefinition();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setContainer((Container)newValue);
                return;
            }
            case 5: {
                this.setDefinition((ConfigParameter)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setContainer(null);
                return;
            }
            case 5: {
                this.setDefinition(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getContainer() != null;
            }
            case 5: {
                return this.definition != null;
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
}

