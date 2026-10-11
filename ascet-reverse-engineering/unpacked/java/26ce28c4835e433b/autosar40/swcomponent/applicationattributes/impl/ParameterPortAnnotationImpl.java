/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.swcomponent.applicationattributes.impl;

import autosar40.genericstructure.generaltemplateclasses.generalannotation.impl.GeneralAnnotationImpl;
import autosar40.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar40.swcomponent.applicationattributes.ParameterPortAnnotation;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.datatype.dataprototypes.ParameterDataPrototype;
import java.util.Map;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ParameterPortAnnotationImpl
extends GeneralAnnotationImpl
implements ParameterPortAnnotation,
IReferringClass {
    protected ParameterDataPrototype parameter;

    protected ParameterPortAnnotationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ApplicationattributesPackage.Literals.PARAMETER_PORT_ANNOTATION;
    }

    @Override
    public PortPrototype getPortPrototype() {
        if (this.eContainerFeatureID() != 9) {
            return null;
        }
        return (PortPrototype)this.eContainer();
    }

    public NotificationChain basicSetPortPrototype(PortPrototype newPortPrototype, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPortPrototype, 9, msgs);
        return msgs;
    }

    @Override
    public void setPortPrototype(PortPrototype newPortPrototype) {
        if (newPortPrototype != this.eInternalContainer() || this.eContainerFeatureID() != 9 && newPortPrototype != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPortPrototype)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPortPrototype != null) {
                msgs = ((InternalEObject)newPortPrototype).eInverseAdd((InternalEObject)this, 25, PortPrototype.class, msgs);
            }
            if ((msgs = this.basicSetPortPrototype(newPortPrototype, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newPortPrototype, (Object)newPortPrototype));
        }
    }

    @Override
    public ParameterDataPrototype getParameter() {
        if (this.parameter != null && this.parameter.eIsProxy()) {
            InternalEObject oldParameter = (InternalEObject)this.parameter;
            this.parameter = (ParameterDataPrototype)this.eResolveProxy(oldParameter);
            if (this.parameter != oldParameter && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 10, (Object)oldParameter, (Object)this.parameter));
            }
        }
        return this.parameter;
    }

    public ParameterDataPrototype basicGetParameter() {
        return this.parameter;
    }

    @Override
    public void setParameter(ParameterDataPrototype newParameter) {
        ParameterDataPrototype oldParameter = this.parameter;
        this.parameter = newParameter;
        AutosarObjectUtil.setDest((EObject)this, (int)10, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldParameter, (Object)this.parameter));
        }
    }

    @Override
    public boolean _ThecorrespondingportinterfacemustbeaParameterInterface(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 9: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPortPrototype((PortPrototype)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 9: {
                return this.basicSetPortPrototype(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 9: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 25, PortPrototype.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 9: {
                return this.getPortPrototype();
            }
            case 10: {
                if (resolve) {
                    return this.getParameter();
                }
                return this.basicGetParameter();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 9: {
                this.setPortPrototype((PortPrototype)newValue);
                return;
            }
            case 10: {
                this.setParameter((ParameterDataPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 9: {
                this.setPortPrototype(null);
                return;
            }
            case 10: {
                this.setParameter(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 9: {
                return this.getPortPrototype() != null;
            }
            case 10: {
                return this.parameter != null;
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

