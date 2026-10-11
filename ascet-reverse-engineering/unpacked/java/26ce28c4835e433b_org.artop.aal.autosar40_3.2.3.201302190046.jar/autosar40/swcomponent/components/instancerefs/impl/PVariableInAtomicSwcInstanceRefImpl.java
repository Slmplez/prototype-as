/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GPPortPrototype
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPVariableInAtomicSwcIRef
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.components.instancerefs.impl;

import autosar40.swcomponent.components.AtomicSwComponentType;
import autosar40.swcomponent.components.PPortPrototype;
import autosar40.swcomponent.components.instancerefs.InstancerefsPackage;
import autosar40.swcomponent.components.instancerefs.PVariableInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.impl.VariableInAtomicSwcInstanceRefImpl;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import gautosar.gswcomponents.gcomponents.GPPortPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PVariableInAtomicSwcInstanceRefImpl
extends VariableInAtomicSwcInstanceRefImpl
implements PVariableInAtomicSwcInstanceRef,
IReferringClass {
    protected PPortPrototype contextPPort;
    protected VariableDataPrototype targetDataElement;

    protected PVariableInAtomicSwcInstanceRefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefsPackage.Literals.PVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF;
    }

    public GPPortPrototype gGetContextPPort() {
        return this.getContextPPort();
    }

    public void gSetContextPPort(GPPortPrototype newGContextPPort) {
        this.setContextPPort((PPortPrototype)newGContextPPort);
    }

    public GVariableDataPrototype gGetTargetDataElement() {
        return this.getTargetDataElement();
    }

    public void gSetTargetDataElement(GVariableDataPrototype newGTargetDataElement) {
        this.setTargetDataElement((VariableDataPrototype)newGTargetDataElement);
    }

    @Override
    public PPortPrototype getContextPPort() {
        if (this.contextPPort != null && this.contextPPort.eIsProxy()) {
            InternalEObject oldContextPPort = (InternalEObject)this.contextPPort;
            this.contextPPort = (PPortPrototype)this.eResolveProxy(oldContextPPort);
            if (this.contextPPort != oldContextPPort && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldContextPPort, (Object)this.contextPPort));
            }
        }
        return this.contextPPort;
    }

    public PPortPrototype basicGetContextPPort() {
        return this.contextPPort;
    }

    @Override
    public void setContextPPort(PPortPrototype newContextPPort) {
        PPortPrototype oldContextPPort = this.contextPPort;
        this.contextPPort = newContextPPort;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldContextPPort, (Object)this.contextPPort));
        }
    }

    @Override
    public VariableDataPrototype getTargetDataElement() {
        if (this.targetDataElement != null && this.targetDataElement.eIsProxy()) {
            InternalEObject oldTargetDataElement = (InternalEObject)this.targetDataElement;
            this.targetDataElement = (VariableDataPrototype)this.eResolveProxy(oldTargetDataElement);
            if (this.targetDataElement != oldTargetDataElement && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldTargetDataElement, (Object)this.targetDataElement));
            }
        }
        return this.targetDataElement;
    }

    public VariableDataPrototype basicGetTargetDataElement() {
        return this.targetDataElement;
    }

    @Override
    public void setTargetDataElement(VariableDataPrototype newTargetDataElement) {
        VariableDataPrototype oldTargetDataElement = this.targetDataElement;
        this.targetDataElement = newTargetDataElement;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldTargetDataElement, (Object)this.targetDataElement));
        }
    }

    @Override
    public AtomicSwComponentType getBase() {
        PPortPrototype contextPPort = this.getContextPPort();
        if (contextPPort != null) {
            return (AtomicSwComponentType)contextPPort.getSwComponentType();
        }
        return null;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.gGetContextPPort();
            }
            case 5: {
                return this.gGetTargetDataElement();
            }
            case 6: {
                if (resolve) {
                    return this.getContextPPort();
                }
                return this.basicGetContextPPort();
            }
            case 7: {
                if (resolve) {
                    return this.getTargetDataElement();
                }
                return this.basicGetTargetDataElement();
            }
            case 8: {
                return this.getBase();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.gSetContextPPort((GPPortPrototype)newValue);
                return;
            }
            case 5: {
                this.gSetTargetDataElement((GVariableDataPrototype)newValue);
                return;
            }
            case 6: {
                this.setContextPPort((PPortPrototype)newValue);
                return;
            }
            case 7: {
                this.setTargetDataElement((VariableDataPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.gSetContextPPort(null);
                return;
            }
            case 5: {
                this.gSetTargetDataElement(null);
                return;
            }
            case 6: {
                this.setContextPPort(null);
                return;
            }
            case 7: {
                this.setTargetDataElement(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.gGetContextPPort() != null;
            }
            case 5: {
                return this.gGetTargetDataElement() != null;
            }
            case 6: {
                return this.contextPPort != null;
            }
            case 7: {
                return this.targetDataElement != null;
            }
            case 8: {
                return this.getBase() != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GPVariableInAtomicSwcIRef.class) {
            switch (derivedFeatureID) {
                case 4: {
                    return 2;
                }
                case 5: {
                    return 3;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GPVariableInAtomicSwcIRef.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 4;
                }
                case 3: {
                    return 5;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
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

