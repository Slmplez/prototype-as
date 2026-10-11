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
package autosar21.ecuresource.ecuelectronics.util;

import autosar21.Activator;
import autosar21.ecuresource.ecuelectronics.BusTermination;
import autosar21.ecuresource.ecuelectronics.Clock;
import autosar21.ecuresource.ecuelectronics.ClockTypeEnum;
import autosar21.ecuresource.ecuelectronics.CommunicationTransceiver;
import autosar21.ecuresource.ecuelectronics.CommunicationTransceiverArchitectureEnum;
import autosar21.ecuresource.ecuelectronics.DiscreteECUElectronics;
import autosar21.ecuresource.ecuelectronics.ECUElectronics;
import autosar21.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar21.ecuresource.ecuelectronics.Oscillator;
import autosar21.ecuresource.ecuelectronics.OscillatorOscillatorModeEnum;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWElement;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWElementDefaultResetBehaviuorEnum;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWElementPowerDriverTypeEnum;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWElementResetOnFaultBehaviourEnum;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWPort;
import autosar21.ecuresource.ecuelectronics.PowerDriverNotification;
import autosar21.ecuresource.ecuelectronics.PowerDriverProtection;
import autosar21.ecuresource.ecuelectronics.PowerSupplyCurrentNotification;
import autosar21.ecuresource.ecuelectronics.PowerSupplyHWElement;
import autosar21.ecuresource.ecuelectronics.PowerSupplyHWElementResetOnFaultBehaviourEnum;
import autosar21.ecuresource.ecuelectronics.PowerSupplyHWPort;
import autosar21.ecuresource.ecuelectronics.PowerSupplyVoltageNotification;
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
public class EcuelectronicsValidator
extends EObjectValidator {
    public static final EcuelectronicsValidator INSTANCE = new EcuelectronicsValidator();
    public static final String DIAGNOSTIC_SOURCE = "autosar21.ecuresource.ecuelectronics";
    public static final int POWER_SUPPLY_HW_PORT__DIRECTIONINORDIRECTIONOUT = 1;
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 1;
    protected static final int DIAGNOSTIC_CODE_COUNT = 1;

    protected EPackage getEPackage() {
        return EcuelectronicsPackage.eINSTANCE;
    }

    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateBusTermination((BusTermination)value, diagnostics, context);
            }
            case 1: {
                return this.validateClock((Clock)value, diagnostics, context);
            }
            case 2: {
                return this.validateECUElectronics((ECUElectronics)value, diagnostics, context);
            }
            case 3: {
                return this.validateCommunicationTransceiver((CommunicationTransceiver)value, diagnostics, context);
            }
            case 4: {
                return this.validateDiscreteECUElectronics((DiscreteECUElectronics)value, diagnostics, context);
            }
            case 5: {
                return this.validatePowerDriverHWElement((PowerDriverHWElement)value, diagnostics, context);
            }
            case 6: {
                return this.validatePowerDriverProtection((PowerDriverProtection)value, diagnostics, context);
            }
            case 7: {
                return this.validatePowerDriverNotification((PowerDriverNotification)value, diagnostics, context);
            }
            case 8: {
                return this.validatePowerDriverHWPort((PowerDriverHWPort)value, diagnostics, context);
            }
            case 9: {
                return this.validatePowerSupplyCurrentNotification((PowerSupplyCurrentNotification)value, diagnostics, context);
            }
            case 10: {
                return this.validatePowerSupplyHWElement((PowerSupplyHWElement)value, diagnostics, context);
            }
            case 11: {
                return this.validatePowerSupplyVoltageNotification((PowerSupplyVoltageNotification)value, diagnostics, context);
            }
            case 12: {
                return this.validatePowerSupplyHWPort((PowerSupplyHWPort)value, diagnostics, context);
            }
            case 13: {
                return this.validateOscillator((Oscillator)value, diagnostics, context);
            }
            case 14: {
                return this.validateClockTypeEnum((ClockTypeEnum)((Object)value), diagnostics, context);
            }
            case 15: {
                return this.validateCommunicationTransceiverArchitectureEnum((CommunicationTransceiverArchitectureEnum)((Object)value), diagnostics, context);
            }
            case 16: {
                return this.validatePowerDriverHWElementResetOnFaultBehaviourEnum((PowerDriverHWElementResetOnFaultBehaviourEnum)((Object)value), diagnostics, context);
            }
            case 17: {
                return this.validatePowerDriverHWElementDefaultResetBehaviuorEnum((PowerDriverHWElementDefaultResetBehaviuorEnum)((Object)value), diagnostics, context);
            }
            case 18: {
                return this.validatePowerDriverHWElementPowerDriverTypeEnum((PowerDriverHWElementPowerDriverTypeEnum)((Object)value), diagnostics, context);
            }
            case 19: {
                return this.validatePowerSupplyHWElementResetOnFaultBehaviourEnum((PowerSupplyHWElementResetOnFaultBehaviourEnum)((Object)value), diagnostics, context);
            }
            case 20: {
                return this.validateOscillatorOscillatorModeEnum((OscillatorOscillatorModeEnum)((Object)value), diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateBusTermination(BusTermination busTermination, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)busTermination, diagnostics, context);
    }

    public boolean validateClock(Clock clock, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)clock, diagnostics, context);
    }

    public boolean validateECUElectronics(ECUElectronics ecuElectronics, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)ecuElectronics, diagnostics, context);
    }

    public boolean validateCommunicationTransceiver(CommunicationTransceiver communicationTransceiver, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)communicationTransceiver, diagnostics, context);
    }

    public boolean validateDiscreteECUElectronics(DiscreteECUElectronics discreteECUElectronics, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)discreteECUElectronics, diagnostics, context);
    }

    public boolean validatePowerDriverHWElement(PowerDriverHWElement powerDriverHWElement, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)powerDriverHWElement, diagnostics, context);
    }

    public boolean validatePowerDriverProtection(PowerDriverProtection powerDriverProtection, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)powerDriverProtection, diagnostics, context);
    }

    public boolean validatePowerDriverNotification(PowerDriverNotification powerDriverNotification, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)powerDriverNotification, diagnostics, context);
    }

    public boolean validatePowerDriverHWPort(PowerDriverHWPort powerDriverHWPort, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)powerDriverHWPort, diagnostics, context);
    }

    public boolean validatePowerSupplyCurrentNotification(PowerSupplyCurrentNotification powerSupplyCurrentNotification, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)powerSupplyCurrentNotification, diagnostics, context);
    }

    public boolean validatePowerSupplyHWElement(PowerSupplyHWElement powerSupplyHWElement, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)powerSupplyHWElement, diagnostics, context);
    }

    public boolean validatePowerSupplyVoltageNotification(PowerSupplyVoltageNotification powerSupplyVoltageNotification, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)powerSupplyVoltageNotification, diagnostics, context);
    }

    public boolean validatePowerSupplyHWPort(PowerSupplyHWPort powerSupplyHWPort, DiagnosticChain diagnostics, Map<Object, Object> context) {
        if (!this.validate_NoCircularContainment((EObject)powerSupplyHWPort, diagnostics, context)) {
            return false;
        }
        boolean result = this.validate_EveryMultiplicityConforms((EObject)powerSupplyHWPort, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validate_EveryDataValueConforms((EObject)powerSupplyHWPort, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryReferenceIsContained((EObject)powerSupplyHWPort, diagnostics, context);
        }
        if (ExtendedPlatform.getFeatureVersionOrdinal() >= 36) {
            try {
                if (result || diagnostics != null) {
                    result &= ((Boolean)ReflectUtil.invokeMethod((Object)((Object)this), (String)"validate_EveryBidirectionalReferenceIsPaired", (Object[])new Object[]{powerSupplyHWPort, diagnostics, context})).booleanValue();
                }
            }
            catch (Exception exception) {}
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryProxyResolves((EObject)powerSupplyHWPort, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_UniqueID((EObject)powerSupplyHWPort, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryKeyUnique((EObject)powerSupplyHWPort, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validate_EveryMapEntryUnique((EObject)powerSupplyHWPort, diagnostics, context);
        }
        if (result || diagnostics != null) {
            result &= this.validatePowerSupplyHWPort__directioninordirectionout(powerSupplyHWPort, diagnostics, context);
        }
        return result;
    }

    public boolean validatePowerSupplyHWPort__directioninordirectionout(PowerSupplyHWPort powerSupplyHWPort, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return powerSupplyHWPort._directioninordirectionout(diagnostics, context);
    }

    public boolean validateOscillator(Oscillator oscillator, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint((EObject)oscillator, diagnostics, context);
    }

    public boolean validateClockTypeEnum(ClockTypeEnum clockTypeEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateCommunicationTransceiverArchitectureEnum(CommunicationTransceiverArchitectureEnum communicationTransceiverArchitectureEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validatePowerDriverHWElementResetOnFaultBehaviourEnum(PowerDriverHWElementResetOnFaultBehaviourEnum powerDriverHWElementResetOnFaultBehaviourEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validatePowerDriverHWElementDefaultResetBehaviuorEnum(PowerDriverHWElementDefaultResetBehaviuorEnum powerDriverHWElementDefaultResetBehaviuorEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validatePowerDriverHWElementPowerDriverTypeEnum(PowerDriverHWElementPowerDriverTypeEnum powerDriverHWElementPowerDriverTypeEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validatePowerSupplyHWElementResetOnFaultBehaviourEnum(PowerSupplyHWElementResetOnFaultBehaviourEnum powerSupplyHWElementResetOnFaultBehaviourEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateOscillatorOscillatorModeEnum(OscillatorOscillatorModeEnum oscillatorOscillatorModeEnum, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public ResourceLocator getResourceLocator() {
        return Activator.INSTANCE;
    }
}

