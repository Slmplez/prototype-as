/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype
 *  gautosar.gswcomponents.gcomponents.GRPortPrototype
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeGroupInAtomicSwcIRef
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.components.instancerefs.impl;

import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.swcomponent.components.AtomicSwComponentType;
import autosar40.swcomponent.components.RPortPrototype;
import autosar40.swcomponent.components.instancerefs.InstancerefsPackage;
import autosar40.swcomponent.components.instancerefs.RModeGroupInAtomicSWCInstanceRef;
import autosar40.swcomponent.components.instancerefs.impl.ModeGroupInAtomicSwcInstanceRefImpl;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype;
import gautosar.gswcomponents.gcomponents.GRPortPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeGroupInAtomicSwcIRef;
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
public class RModeGroupInAtomicSWCInstanceRefImpl
extends ModeGroupInAtomicSwcInstanceRefImpl
implements RModeGroupInAtomicSWCInstanceRef,
IReferringClass {
    protected RPortPrototype contextRPort;
    protected ModeDeclarationGroupPrototype targetModeGroup;

    protected RModeGroupInAtomicSWCInstanceRefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefsPackage.Literals.RMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF;
    }

    public GRPortPrototype gGetContextRPort() {
        return this.getContextRPort();
    }

    public void gSetContextRPort(GRPortPrototype newGContextRPort) {
        this.setContextRPort((RPortPrototype)newGContextRPort);
    }

    public GModeDeclarationGroupPrototype gGetTargetModeGroup() {
        return this.getTargetModeGroup();
    }

    public void gSetTargetModeGroup(GModeDeclarationGroupPrototype newGTargetModeGroup) {
        this.setTargetModeGroup((ModeDeclarationGroupPrototype)newGTargetModeGroup);
    }

    @Override
    public RPortPrototype getContextRPort() {
        if (this.contextRPort != null && this.contextRPort.eIsProxy()) {
            InternalEObject oldContextRPort = (InternalEObject)this.contextRPort;
            this.contextRPort = (RPortPrototype)this.eResolveProxy(oldContextRPort);
            if (this.contextRPort != oldContextRPort && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldContextRPort, (Object)this.contextRPort));
            }
        }
        return this.contextRPort;
    }

    public RPortPrototype basicGetContextRPort() {
        return this.contextRPort;
    }

    @Override
    public void setContextRPort(RPortPrototype newContextRPort) {
        RPortPrototype oldContextRPort = this.contextRPort;
        this.contextRPort = newContextRPort;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldContextRPort, (Object)this.contextRPort));
        }
    }

    @Override
    public ModeDeclarationGroupPrototype getTargetModeGroup() {
        if (this.targetModeGroup != null && this.targetModeGroup.eIsProxy()) {
            InternalEObject oldTargetModeGroup = (InternalEObject)this.targetModeGroup;
            this.targetModeGroup = (ModeDeclarationGroupPrototype)this.eResolveProxy(oldTargetModeGroup);
            if (this.targetModeGroup != oldTargetModeGroup && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldTargetModeGroup, (Object)this.targetModeGroup));
            }
        }
        return this.targetModeGroup;
    }

    public ModeDeclarationGroupPrototype basicGetTargetModeGroup() {
        return this.targetModeGroup;
    }

    @Override
    public void setTargetModeGroup(ModeDeclarationGroupPrototype newTargetModeGroup) {
        ModeDeclarationGroupPrototype oldTargetModeGroup = this.targetModeGroup;
        this.targetModeGroup = newTargetModeGroup;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldTargetModeGroup, (Object)this.targetModeGroup));
        }
    }

    @Override
    public AtomicSwComponentType getBase() {
        RPortPrototype contextRPort = this.getContextRPort();
        if (contextRPort != null) {
            return (AtomicSwComponentType)contextRPort.getSwComponentType();
        }
        return null;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.gGetContextRPort();
            }
            case 6: {
                return this.gGetTargetModeGroup();
            }
            case 7: {
                if (resolve) {
                    return this.getContextRPort();
                }
                return this.basicGetContextRPort();
            }
            case 8: {
                if (resolve) {
                    return this.getTargetModeGroup();
                }
                return this.basicGetTargetModeGroup();
            }
            case 9: {
                return this.getBase();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.gSetContextRPort((GRPortPrototype)newValue);
                return;
            }
            case 6: {
                this.gSetTargetModeGroup((GModeDeclarationGroupPrototype)newValue);
                return;
            }
            case 7: {
                this.setContextRPort((RPortPrototype)newValue);
                return;
            }
            case 8: {
                this.setTargetModeGroup((ModeDeclarationGroupPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.gSetContextRPort(null);
                return;
            }
            case 6: {
                this.gSetTargetModeGroup(null);
                return;
            }
            case 7: {
                this.setContextRPort(null);
                return;
            }
            case 8: {
                this.setTargetModeGroup(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.gGetContextRPort() != null;
            }
            case 6: {
                return this.gGetTargetModeGroup() != null;
            }
            case 7: {
                return this.contextRPort != null;
            }
            case 8: {
                return this.targetModeGroup != null;
            }
            case 9: {
                return this.getBase() != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GRModeGroupInAtomicSwcIRef.class) {
            switch (derivedFeatureID) {
                case 5: {
                    return 2;
                }
                case 6: {
                    return 3;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GRModeGroupInAtomicSwcIRef.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 5;
                }
                case 3: {
                    return 6;
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

