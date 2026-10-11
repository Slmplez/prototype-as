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
package autosar40.commonstructure.resourceconsumption.executiontime.util;

import autosar40.Activator;
import autosar40.commonstructure.resourceconsumption.executiontime.AnalyzedExecutionTime;
import autosar40.commonstructure.resourceconsumption.executiontime.ExecutionTime;
import autosar40.commonstructure.resourceconsumption.executiontime.ExecutiontimePackage;
import autosar40.commonstructure.resourceconsumption.executiontime.MeasuredExecutionTime;
import autosar40.commonstructure.resourceconsumption.executiontime.MemorySectionLocation;
import autosar40.commonstructure.resourceconsumption.executiontime.RoughEstimateOfExecutionTime;
import autosar40.commonstructure.resourceconsumption.executiontime.SimulatedExecutionTime;
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
public class ExecutiontimeValidator
extends EObjectValidator {
    public static final ExecutiontimeValidator INSTANCE = new ExecutiontimeValidator();
    public static final String DIAGNOSTIC_SOURCE = "autosar40.commonstructure.resourceconsumption.executiontime";
    public static final int MEMORY_SECTION_LOCATION__EXTIMEECUHARDWARE_MEMORY_SECTIONECU = 1;
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 1;
    protected static final int DIAGNOSTIC_CODE_COUNT = 1;

    protected EPackage getEPackage() {
        return ExecutiontimePackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateAnalyzedExecutionTime((AnalyzedExecutionTime)value, diagnostics, context);
            }
            case 1: {
                return this.validateExecutionTime((ExecutionTime)value, diagnostics, context);
            }
            case 2: {
                return this.validateMemorySectionLocation((MemorySectionLocation)value, diagnostics, context);
            }
            case 3: {
                return this.validateMeasuredExecutionTime((MeasuredExecutionTime)value, diagnostics, context);
            }
            case 4: {
                return this.validateRoughEstimateOfExecutionTime((RoughEstimateOfExecutionTime)value, diagnostics, context);
            }
            case 5: {
                return this.validateSimulatedExecutionTime((SimulatedExecutionTime)value, diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateAnalyzedExecutionTime(AnalyzedExecutionTime analyzedExecutionTime, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)analyzedExecutionTime, diagnostics, context);
    }

    public boolean validateExecutionTime(ExecutionTime executionTime, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)executionTime, diagnostics, context);
    }

    public boolean validateMemorySectionLocation(MemorySectionLocation memorySectionLocation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)memorySectionLocation, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)memorySectionLocation, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)memorySectionLocation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)memorySectionLocation, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{memorySectionLocation, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)memorySectionLocation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)memorySectionLocation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)memorySectionLocation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)memorySectionLocation, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validateMemorySectionLocation_extimeecuhardwareMemorySectionecu(memorySectionLocation, diagnostics, context);
        }
        return result;
    }

    public boolean validateMemorySectionLocation_extimeecuhardwareMemorySectionecu(MemorySectionLocation memorySectionLocation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return memorySectionLocation.extimeecuhardwareMemorySectionecu(diagnostics, context);
    }

    public boolean validateMeasuredExecutionTime(MeasuredExecutionTime measuredExecutionTime, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)measuredExecutionTime, diagnostics, context);
    }

    public boolean validateRoughEstimateOfExecutionTime(RoughEstimateOfExecutionTime roughEstimateOfExecutionTime, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)roughEstimateOfExecutionTime, diagnostics, context);
    }

    public boolean validateSimulatedExecutionTime(SimulatedExecutionTime simulatedExecutionTime, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)simulatedExecutionTime, diagnostics, context);
    }

    public ResourceLocator getResourceLocator() {
        return Activator.INSTANCE;
    }
}

