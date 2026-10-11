/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.timing.timingdescription.impl;

import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEventChain;
import autosar40.commonstructure.timing.timingdescription.TimingdescriptionPackage;
import autosar40.commonstructure.timing.timingdescription.impl.TimingDescriptionImpl;
import java.util.Collection;
import java.util.Map;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TimingDescriptionEventChainImpl
extends TimingDescriptionImpl
implements TimingDescriptionEventChain,
IReferringClass {
    protected TimingDescriptionEvent stimulus;
    protected TimingDescriptionEvent response;
    protected EList<TimingDescriptionEventChain> segments;

    protected TimingDescriptionEventChainImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TimingdescriptionPackage.Literals.TIMING_DESCRIPTION_EVENT_CHAIN;
    }

    @Override
    public TimingDescriptionEvent getStimulus() {
        if (this.stimulus != null && this.stimulus.eIsProxy()) {
            InternalEObject oldStimulus = (InternalEObject)this.stimulus;
            this.stimulus = (TimingDescriptionEvent)this.eResolveProxy(oldStimulus);
            if (this.stimulus != oldStimulus && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 20, (Object)oldStimulus, (Object)this.stimulus));
            }
        }
        return this.stimulus;
    }

    public TimingDescriptionEvent basicGetStimulus() {
        return this.stimulus;
    }

    @Override
    public void setStimulus(TimingDescriptionEvent newStimulus) {
        TimingDescriptionEvent oldStimulus = this.stimulus;
        this.stimulus = newStimulus;
        AutosarObjectUtil.setDest((EObject)this, (int)20, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldStimulus, (Object)this.stimulus));
        }
    }

    @Override
    public TimingDescriptionEvent getResponse() {
        if (this.response != null && this.response.eIsProxy()) {
            InternalEObject oldResponse = (InternalEObject)this.response;
            this.response = (TimingDescriptionEvent)this.eResolveProxy(oldResponse);
            if (this.response != oldResponse && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldResponse, (Object)this.response));
            }
        }
        return this.response;
    }

    public TimingDescriptionEvent basicGetResponse() {
        return this.response;
    }

    @Override
    public void setResponse(TimingDescriptionEvent newResponse) {
        TimingDescriptionEvent oldResponse = this.response;
        this.response = newResponse;
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldResponse, (Object)this.response));
        }
    }

    @Override
    public EList<TimingDescriptionEventChain> getSegments() {
        if (this.segments == null) {
            this.segments = new EObjectResolvingReferringEList(TimingDescriptionEventChain.class, (InternalEObject)this, 22);
        }
        return this.segments;
    }

    @Override
    public boolean stimulusresponse(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public boolean Foreachsegmentthereexistsatleastonepathofsegmentsfromthestimulustotheresponse(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                if (resolve) {
                    return this.getStimulus();
                }
                return this.basicGetStimulus();
            }
            case 21: {
                if (resolve) {
                    return this.getResponse();
                }
                return this.basicGetResponse();
            }
            case 22: {
                return this.getSegments();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.setStimulus((TimingDescriptionEvent)newValue);
                return;
            }
            case 21: {
                this.setResponse((TimingDescriptionEvent)newValue);
                return;
            }
            case 22: {
                this.getSegments().clear();
                this.getSegments().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.setStimulus(null);
                return;
            }
            case 21: {
                this.setResponse(null);
                return;
            }
            case 22: {
                this.getSegments().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.stimulus != null;
            }
            case 21: {
                return this.response != null;
            }
            case 22: {
                return this.segments != null && !this.segments.isEmpty();
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

