/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.ecuresource.impl;

import autosar3x.ecuresource.EcuresourcePackage;
import autosar3x.ecuresource.HWElement;
import autosar3x.ecuresource.HWPort;
import autosar3x.ecuresource.SignalTransformation;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SignalTransformationImpl
extends ARObjectImpl
implements SignalTransformation,
IReferringClass {
    protected EList<HWPort> inputHwPorts;
    protected EList<HWPort> outputHwPorts;

    protected SignalTransformationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcuresourcePackage.Literals.SIGNAL_TRANSFORMATION;
    }

    @Override
    public HWElement getHWElement() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (HWElement)this.eContainer();
    }

    public NotificationChain basicSetHWElement(HWElement newHWElement, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newHWElement, 4, msgs);
        return msgs;
    }

    @Override
    public void setHWElement(HWElement newHWElement) {
        if (newHWElement != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newHWElement != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newHWElement)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newHWElement != null) {
                msgs = ((InternalEObject)newHWElement).eInverseAdd((InternalEObject)this, 22, HWElement.class, msgs);
            }
            if ((msgs = this.basicSetHWElement(newHWElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newHWElement, (Object)newHWElement));
        }
    }

    @Override
    public EList<HWPort> getInputHwPorts() {
        if (this.inputHwPorts == null) {
            this.inputHwPorts = new EObjectResolvingReferringEList(HWPort.class, (InternalEObject)this, 5);
        }
        return this.inputHwPorts;
    }

    @Override
    public EList<HWPort> getOutputHwPorts() {
        if (this.outputHwPorts == null) {
            this.outputHwPorts = new EObjectResolvingReferringEList(HWPort.class, (InternalEObject)this, 6);
        }
        return this.outputHwPorts;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetHWElement((HWElement)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetHWElement(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, HWElement.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getHWElement();
            }
            case 5: {
                return this.getInputHwPorts();
            }
            case 6: {
                return this.getOutputHwPorts();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setHWElement((HWElement)newValue);
                return;
            }
            case 5: {
                this.getInputHwPorts().clear();
                this.getInputHwPorts().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getOutputHwPorts().clear();
                this.getOutputHwPorts().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setHWElement(null);
                return;
            }
            case 5: {
                this.getInputHwPorts().clear();
                return;
            }
            case 6: {
                this.getOutputHwPorts().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getHWElement() != null;
            }
            case 5: {
                return this.inputHwPorts != null && !this.inputHwPorts.isEmpty();
            }
            case 6: {
                return this.outputHwPorts != null && !this.outputHwPorts.isEmpty();
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

