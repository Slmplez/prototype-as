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
package autosar3x.system.fibex.fibex4lin.lincommunication.impl;

import autosar3x.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar3x.system.fibex.fibex4lin.lincommunication.SubstitutionFrame;
import autosar3x.system.fibex.fibex4lin.lincommunication.SubstitutionType;
import autosar3x.system.fibex.fibexcore.corecommunication.Frame;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.FrameImpl;
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
public class SubstitutionFrameImpl
extends FrameImpl
implements SubstitutionFrame,
IReferringClass {
    protected EList<Frame> substitutedFrames;
    protected static final SubstitutionType SUBSTITUTION_TYPE_EDEFAULT = SubstitutionType.SPORADIC;
    protected SubstitutionType substitutionType = SUBSTITUTION_TYPE_EDEFAULT;
    protected boolean substitutionTypeESet;

    protected SubstitutionFrameImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.SUBSTITUTION_FRAME;
    }

    @Override
    public EList<Frame> getSubstitutedFrames() {
        if (this.substitutedFrames == null) {
            this.substitutedFrames = new EObjectResolvingReferringEList(Frame.class, (InternalEObject)this, 21);
        }
        return this.substitutedFrames;
    }

    @Override
    public SubstitutionType getSubstitutionType() {
        return this.substitutionType;
    }

    @Override
    public void setSubstitutionType(SubstitutionType newSubstitutionType) {
        SubstitutionType oldSubstitutionType = this.substitutionType;
        this.substitutionType = newSubstitutionType == null ? SUBSTITUTION_TYPE_EDEFAULT : newSubstitutionType;
        boolean oldSubstitutionTypeESet = this.substitutionTypeESet;
        this.substitutionTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldSubstitutionType, (Object)this.substitutionType, !oldSubstitutionTypeESet));
        }
    }

    @Override
    public void unsetSubstitutionType() {
        SubstitutionType oldSubstitutionType = this.substitutionType;
        boolean oldSubstitutionTypeESet = this.substitutionTypeESet;
        this.substitutionType = SUBSTITUTION_TYPE_EDEFAULT;
        this.substitutionTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldSubstitutionType, (Object)SUBSTITUTION_TYPE_EDEFAULT, oldSubstitutionTypeESet));
        }
    }

    @Override
    public boolean isSetSubstitutionType() {
        return this.substitutionTypeESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getSubstitutedFrames();
            }
            case 22: {
                return this.getSubstitutionType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.getSubstitutedFrames().clear();
                this.getSubstitutedFrames().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.setSubstitutionType((SubstitutionType)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.getSubstitutedFrames().clear();
                return;
            }
            case 22: {
                this.unsetSubstitutionType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.substitutedFrames != null && !this.substitutedFrames.isEmpty();
            }
            case 22: {
                return this.isSetSubstitutionType();
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

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (substitutionType: ");
        if (this.substitutionTypeESet) {
            result.append((Object)this.substitutionType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

