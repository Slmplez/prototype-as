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
package autosar40.commonstructure.measurementcalibrationsupport.impl;

import autosar40.commonstructure.implementationdatatypes.ImplementationDataTypeElement;
import autosar40.commonstructure.measurementcalibrationsupport.ImplementationElementInParameterInstanceRef;
import autosar40.commonstructure.measurementcalibrationsupport.McDataInstance;
import autosar40.commonstructure.measurementcalibrationsupport.MeasurementcalibrationsupportPackage;
import autosar40.genericstructure.abstractstructure.impl.AtpInstanceRefImpl;
import autosar40.swcomponent.datatype.dataprototypes.ParameterDataPrototype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ImplementationElementInParameterInstanceRefImpl
extends AtpInstanceRefImpl
implements ImplementationElementInParameterInstanceRef,
IReferringClass {
    protected ParameterDataPrototype context;
    protected ImplementationDataTypeElement target;

    protected ImplementationElementInParameterInstanceRefImpl() {
    }

    protected EClass eStaticClass() {
        return MeasurementcalibrationsupportPackage.Literals.IMPLEMENTATION_ELEMENT_IN_PARAMETER_INSTANCE_REF;
    }

    public McDataInstance getMcDataInstance() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (McDataInstance)this.eContainer();
    }

    public NotificationChain basicSetMcDataInstance(McDataInstance newMcDataInstance, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newMcDataInstance, 4, msgs);
        return msgs;
    }

    public void setMcDataInstance(McDataInstance newMcDataInstance) {
        if (newMcDataInstance != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newMcDataInstance != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newMcDataInstance)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newMcDataInstance != null) {
                msgs = ((InternalEObject)newMcDataInstance).eInverseAdd((InternalEObject)this, 20, McDataInstance.class, msgs);
            }
            if ((msgs = this.basicSetMcDataInstance(newMcDataInstance, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newMcDataInstance, (Object)newMcDataInstance));
        }
    }

    public ParameterDataPrototype getContext() {
        if (this.context != null && this.context.eIsProxy()) {
            InternalEObject oldContext = (InternalEObject)this.context;
            this.context = (ParameterDataPrototype)this.eResolveProxy(oldContext);
            if (this.context != oldContext && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldContext, (Object)this.context));
            }
        }
        return this.context;
    }

    public ParameterDataPrototype basicGetContext() {
        return this.context;
    }

    public void setContext(ParameterDataPrototype newContext) {
        ParameterDataPrototype oldContext = this.context;
        this.context = newContext;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldContext, (Object)this.context));
        }
    }

    public ImplementationDataTypeElement getTarget() {
        if (this.target != null && this.target.eIsProxy()) {
            InternalEObject oldTarget = (InternalEObject)this.target;
            this.target = (ImplementationDataTypeElement)this.eResolveProxy(oldTarget);
            if (this.target != oldTarget && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldTarget, (Object)this.target));
            }
        }
        return this.target;
    }

    public ImplementationDataTypeElement basicGetTarget() {
        return this.target;
    }

    public void setTarget(ImplementationDataTypeElement newTarget) {
        ImplementationDataTypeElement oldTarget = this.target;
        this.target = newTarget;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldTarget, (Object)this.target));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetMcDataInstance((McDataInstance)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetMcDataInstance(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, McDataInstance.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getMcDataInstance();
            }
            case 5: {
                if (resolve) {
                    return this.getContext();
                }
                return this.basicGetContext();
            }
            case 6: {
                if (resolve) {
                    return this.getTarget();
                }
                return this.basicGetTarget();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setMcDataInstance((McDataInstance)newValue);
                return;
            }
            case 5: {
                this.setContext((ParameterDataPrototype)newValue);
                return;
            }
            case 6: {
                this.setTarget((ImplementationDataTypeElement)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setMcDataInstance(null);
                return;
            }
            case 5: {
                this.setContext(null);
                return;
            }
            case 6: {
                this.setTarget(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getMcDataInstance() != null;
            }
            case 5: {
                return this.context != null;
            }
            case 6: {
                return this.target != null;
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

