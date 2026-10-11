/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.genericstructure.varianthandling.impl;

import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import autosar40.genericstructure.varianthandling.PostBuildVariantCriterion;
import autosar40.genericstructure.varianthandling.VarianthandlingPackage;
import autosar40.swcomponent.datatype.computationmethod.CompuMethod;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class PostBuildVariantCriterionImpl
extends ARElementImpl
implements PostBuildVariantCriterion,
IReferringClass {
    protected CompuMethod compuMethod;

    protected PostBuildVariantCriterionImpl() {
    }

    protected EClass eStaticClass() {
        return VarianthandlingPackage.Literals.POST_BUILD_VARIANT_CRITERION;
    }

    public CompuMethod getCompuMethod() {
        if (this.compuMethod != null && this.compuMethod.eIsProxy()) {
            InternalEObject oldCompuMethod = (InternalEObject)this.compuMethod;
            this.compuMethod = (CompuMethod)this.eResolveProxy(oldCompuMethod);
            if (this.compuMethod != oldCompuMethod && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldCompuMethod, (Object)this.compuMethod));
            }
        }
        return this.compuMethod;
    }

    public CompuMethod basicGetCompuMethod() {
        return this.compuMethod;
    }

    public void setCompuMethod(CompuMethod newCompuMethod) {
        CompuMethod oldCompuMethod = this.compuMethod;
        this.compuMethod = newCompuMethod;
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldCompuMethod, (Object)this.compuMethod));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                if (resolve) {
                    return this.getCompuMethod();
                }
                return this.basicGetCompuMethod();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setCompuMethod((CompuMethod)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.setCompuMethod(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.compuMethod != null;
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

