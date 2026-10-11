/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.util.EObjectValidator
 *  org.eclipse.sphinx.platform.util.ExtendedPlatform
 *  org.eclipse.sphinx.platform.util.ReflectUtil
 */
package autosar40.commonstructure.timing.timingdescription.util;

import autosar40.Activator;
import autosar40.commonstructure.timing.timingdescription.TimingDescription;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEventChain;
import autosar40.commonstructure.timing.timingdescription.TimingdescriptionPackage;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.util.EObjectValidator;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;
import org.eclipse.sphinx.platform.util.ReflectUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TimingdescriptionValidator
extends EObjectValidator {
    public static final TimingdescriptionValidator INSTANCE = new TimingdescriptionValidator();
    public static final String DIAGNOSTIC_SOURCE = "autosar40.commonstructure.timing.timingdescription";
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__STIMULUSRESPONSE = 1;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__FOREACHSEGMENTTHEREEXISTSATLEASTONEPATHOFSEGMENTSFROMTHESTIMULUSTOTHERESPONSE = 2;
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 2;
    protected static final int DIAGNOSTIC_CODE_COUNT = 2;

    protected EPackage getEPackage() {
        return TimingdescriptionPackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateTimingDescription((TimingDescription)value, diagnostics, context);
            }
            case 1: {
                return this.validateTimingDescriptionEvent((TimingDescriptionEvent)value, diagnostics, context);
            }
            case 2: {
                return this.validateTimingDescriptionEventChain((TimingDescriptionEventChain)value, diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateTimingDescription(TimingDescription timingDescription, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)timingDescription, diagnostics, context);
    }

    public boolean validateTimingDescriptionEvent(TimingDescriptionEvent timingDescriptionEvent, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)timingDescriptionEvent, diagnostics, context);
    }

    public boolean validateTimingDescriptionEventChain(TimingDescriptionEventChain timingDescriptionEventChain, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)timingDescriptionEventChain, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)timingDescriptionEventChain, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)timingDescriptionEventChain, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)timingDescriptionEventChain, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{timingDescriptionEventChain, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)timingDescriptionEventChain, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)timingDescriptionEventChain, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)timingDescriptionEventChain, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)timingDescriptionEventChain, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateTimingDescriptionEventChain_stimulusresponse(timingDescriptionEventChain, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateTimingDescriptionEventChain_Foreachsegmentthereexistsatleastonepathofsegmentsfromthestimulustotheresponse(timingDescriptionEventChain, diagnostics, context);
        }
        return result;
    }

    public boolean validateTimingDescriptionEventChain_stimulusresponse(TimingDescriptionEventChain timingDescriptionEventChain, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return timingDescriptionEventChain.stimulusresponse(diagnostics, context);
    }

    public boolean validateTimingDescriptionEventChain_Foreachsegmentthereexistsatleastonepathofsegmentsfromthestimulustotheresponse(TimingDescriptionEventChain timingDescriptionEventChain, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return timingDescriptionEventChain.Foreachsegmentthereexistsatleastonepathofsegmentsfromthestimulustotheresponse(diagnostics, context);
    }

    public ResourceLocator getResourceLocator() {
        return Activator.INSTANCE;
    }
}

