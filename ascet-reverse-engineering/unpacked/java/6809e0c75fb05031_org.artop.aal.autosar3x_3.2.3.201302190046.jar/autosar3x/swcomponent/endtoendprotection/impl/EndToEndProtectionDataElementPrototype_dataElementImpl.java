/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.swcomponent.endtoendprotection.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.composition.ComponentPrototype;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtectionDataElementPrototype_dataElement;
import autosar3x.swcomponent.endtoendprotection.EndtoendprotectionPackage;
import autosar3x.swcomponent.portinterface.DataElementPrototype;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EndToEndProtectionDataElementPrototype_dataElementImpl
extends ARObjectImpl
implements EndToEndProtectionDataElementPrototype_dataElement,
IReferringClass {
    protected EList<ComponentPrototype> componentPrototypes;
    protected PortPrototype portPrototype;
    protected DataElementPrototype targetDataPrototype;

    protected EndToEndProtectionDataElementPrototype_dataElementImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EndtoendprotectionPackage.Literals.END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE_DATA_ELEMENT;
    }

    @Override
    public EList<ComponentPrototype> getComponentPrototypes() {
        if (this.componentPrototypes == null) {
            this.componentPrototypes = new EObjectResolvingReferringEList(ComponentPrototype.class, (InternalEObject)this, 4);
        }
        return this.componentPrototypes;
    }

    @Override
    public PortPrototype getPortPrototype() {
        if (this.portPrototype != null && this.portPrototype.eIsProxy()) {
            InternalEObject oldPortPrototype = (InternalEObject)this.portPrototype;
            this.portPrototype = (PortPrototype)this.eResolveProxy(oldPortPrototype);
            if (this.portPrototype != oldPortPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldPortPrototype, (Object)this.portPrototype));
            }
        }
        return this.portPrototype;
    }

    public PortPrototype basicGetPortPrototype() {
        return this.portPrototype;
    }

    @Override
    public void setPortPrototype(PortPrototype newPortPrototype) {
        PortPrototype oldPortPrototype = this.portPrototype;
        this.portPrototype = newPortPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldPortPrototype, (Object)this.portPrototype));
        }
    }

    @Override
    public DataElementPrototype getTargetDataPrototype() {
        if (this.targetDataPrototype != null && this.targetDataPrototype.eIsProxy()) {
            InternalEObject oldTargetDataPrototype = (InternalEObject)this.targetDataPrototype;
            this.targetDataPrototype = (DataElementPrototype)this.eResolveProxy(oldTargetDataPrototype);
            if (this.targetDataPrototype != oldTargetDataPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldTargetDataPrototype, (Object)this.targetDataPrototype));
            }
        }
        return this.targetDataPrototype;
    }

    public DataElementPrototype basicGetTargetDataPrototype() {
        return this.targetDataPrototype;
    }

    @Override
    public void setTargetDataPrototype(DataElementPrototype newTargetDataPrototype) {
        DataElementPrototype oldTargetDataPrototype = this.targetDataPrototype;
        this.targetDataPrototype = newTargetDataPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldTargetDataPrototype, (Object)this.targetDataPrototype));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getComponentPrototypes();
            }
            case 5: {
                if (resolve) {
                    return this.getPortPrototype();
                }
                return this.basicGetPortPrototype();
            }
            case 6: {
                if (resolve) {
                    return this.getTargetDataPrototype();
                }
                return this.basicGetTargetDataPrototype();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.getComponentPrototypes().clear();
                this.getComponentPrototypes().addAll((Collection)newValue);
                return;
            }
            case 5: {
                this.setPortPrototype((PortPrototype)newValue);
                return;
            }
            case 6: {
                this.setTargetDataPrototype((DataElementPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.getComponentPrototypes().clear();
                return;
            }
            case 5: {
                this.setPortPrototype(null);
                return;
            }
            case 6: {
                this.setTargetDataPrototype(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.componentPrototypes != null && !this.componentPrototypes.isEmpty();
            }
            case 5: {
                return this.portPrototype != null;
            }
            case 6: {
                return this.targetDataPrototype != null;
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

