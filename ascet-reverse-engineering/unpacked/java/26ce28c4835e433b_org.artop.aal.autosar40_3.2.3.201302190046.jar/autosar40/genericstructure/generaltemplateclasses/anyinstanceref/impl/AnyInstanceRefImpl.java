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
package autosar40.genericstructure.generaltemplateclasses.anyinstanceref.impl;

import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.impl.AtpInstanceRefImpl;
import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.AnyInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.AnyinstancerefPackage;
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
public class AnyInstanceRefImpl
extends AtpInstanceRefImpl
implements AnyInstanceRef,
IReferringClass {
    protected EList<AtpFeature> contextElements;
    protected AtpFeature target;

    protected AnyInstanceRefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return AnyinstancerefPackage.Literals.ANY_INSTANCE_REF;
    }

    @Override
    public AtpClassifier getBase() {
        EList<AtpFeature> contextElements = this.getContextElements();
        AtpFeature contextElement = null;
        if (!contextElements.isEmpty()) {
            contextElement = (AtpFeature)contextElements.get(0);
        }
        if (contextElement != null) {
            return contextElement.getAtpClassifier();
        }
        return null;
    }

    @Override
    public EList<AtpFeature> getContextElements() {
        if (this.contextElements == null) {
            this.contextElements = new EObjectResolvingReferringEList(AtpFeature.class, (InternalEObject)this, 5);
        }
        return this.contextElements;
    }

    @Override
    public AtpFeature getTarget() {
        if (this.target != null && this.target.eIsProxy()) {
            InternalEObject oldTarget = (InternalEObject)this.target;
            this.target = (AtpFeature)this.eResolveProxy(oldTarget);
            if (this.target != oldTarget && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldTarget, (Object)this.target));
            }
        }
        return this.target;
    }

    public AtpFeature basicGetTarget() {
        return this.target;
    }

    @Override
    public void setTarget(AtpFeature newTarget) {
        AtpFeature oldTarget = this.target;
        this.target = newTarget;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldTarget, (Object)this.target));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getBase();
            }
            case 5: {
                return this.getContextElements();
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

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.getContextElements().clear();
                this.getContextElements().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.setTarget((AtpFeature)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.getContextElements().clear();
                return;
            }
            case 6: {
                this.setTarget(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getBase() != null;
            }
            case 5: {
                return this.contextElements != null && !this.contextElements.isEmpty();
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

