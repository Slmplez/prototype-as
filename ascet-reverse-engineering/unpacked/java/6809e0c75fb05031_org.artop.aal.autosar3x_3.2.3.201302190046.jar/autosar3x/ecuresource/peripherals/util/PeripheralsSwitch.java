/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.ecuresource.peripherals.util;

import autosar3x.ecuresource.HWElement;
import autosar3x.ecuresource.HWPort;
import autosar3x.ecuresource.peripherals.ADC;
import autosar3x.ecuresource.peripherals.AnalogueIO;
import autosar3x.ecuresource.peripherals.Buffer;
import autosar3x.ecuresource.peripherals.CCU;
import autosar3x.ecuresource.peripherals.CommunicationFilter;
import autosar3x.ecuresource.peripherals.CommunicationHWPort;
import autosar3x.ecuresource.peripherals.CommunicationPeripheral;
import autosar3x.ecuresource.peripherals.CommunicationPhysicalMedium;
import autosar3x.ecuresource.peripherals.CommunicationProtocol;
import autosar3x.ecuresource.peripherals.CommunicationSpeed;
import autosar3x.ecuresource.peripherals.CommunicationSpeedFixed;
import autosar3x.ecuresource.peripherals.CommunicationSpeedList;
import autosar3x.ecuresource.peripherals.CommunicationSpeedRange;
import autosar3x.ecuresource.peripherals.DAC;
import autosar3x.ecuresource.peripherals.DigitalIO;
import autosar3x.ecuresource.peripherals.ECUCommunicationPort;
import autosar3x.ecuresource.peripherals.GeneralPurposeTimer;
import autosar3x.ecuresource.peripherals.PWD;
import autosar3x.ecuresource.peripherals.PWM;
import autosar3x.ecuresource.peripherals.Peripheral;
import autosar3x.ecuresource.peripherals.PeripheralHWPort;
import autosar3x.ecuresource.peripherals.PeripheralsPackage;
import autosar3x.ecuresource.peripherals.PulseWidthPeripheral;
import autosar3x.ecuresource.peripherals.Timer;
import autosar3x.ecuresource.peripherals.WatchDog;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PeripheralsSwitch<T> {
    protected static PeripheralsPackage modelPackage;

    public PeripheralsSwitch() {
        if (modelPackage == null) {
            modelPackage = PeripheralsPackage.eINSTANCE;
        }
    }

    public T doSwitch(EObject theEObject) {
        return this.doSwitch(theEObject.eClass(), theEObject);
    }

    protected T doSwitch(EClass theEClass, EObject theEObject) {
        if (theEClass.eContainer() == modelPackage) {
            return this.doSwitch(theEClass.getClassifierID(), theEObject);
        }
        EList eSuperTypes = theEClass.getESuperTypes();
        return eSuperTypes.isEmpty() ? this.defaultCase(theEObject) : this.doSwitch((EClass)eSuperTypes.get(0), theEObject);
    }

    protected T doSwitch(int classifierID, EObject theEObject) {
        switch (classifierID) {
            case 0: {
                Buffer buffer = (Buffer)theEObject;
                T result = this.caseBuffer(buffer);
                if (result == null) {
                    result = this.caseARObject(buffer);
                }
                if (result == null) {
                    result = this.caseGARObject(buffer);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                CCU ccu = (CCU)theEObject;
                T result = this.caseCCU(ccu);
                if (result == null) {
                    result = this.caseGeneralPurposeTimer(ccu);
                }
                if (result == null) {
                    result = this.casePeripheral(ccu);
                }
                if (result == null) {
                    result = this.caseHWElement(ccu);
                }
                if (result == null) {
                    result = this.caseARElement(ccu);
                }
                if (result == null) {
                    result = this.casePackageableElement(ccu);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ccu);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(ccu);
                }
                if (result == null) {
                    result = this.caseARObject(ccu);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ccu);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)ccu);
                }
                if (result == null) {
                    result = this.caseGARObject(ccu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                GeneralPurposeTimer generalPurposeTimer = (GeneralPurposeTimer)theEObject;
                T result = this.caseGeneralPurposeTimer(generalPurposeTimer);
                if (result == null) {
                    result = this.casePeripheral(generalPurposeTimer);
                }
                if (result == null) {
                    result = this.caseHWElement(generalPurposeTimer);
                }
                if (result == null) {
                    result = this.caseARElement(generalPurposeTimer);
                }
                if (result == null) {
                    result = this.casePackageableElement(generalPurposeTimer);
                }
                if (result == null) {
                    result = this.caseIdentifiable(generalPurposeTimer);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(generalPurposeTimer);
                }
                if (result == null) {
                    result = this.caseARObject(generalPurposeTimer);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(generalPurposeTimer);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)generalPurposeTimer);
                }
                if (result == null) {
                    result = this.caseGARObject(generalPurposeTimer);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                Peripheral peripheral = (Peripheral)theEObject;
                T result = this.casePeripheral(peripheral);
                if (result == null) {
                    result = this.caseHWElement(peripheral);
                }
                if (result == null) {
                    result = this.caseARElement(peripheral);
                }
                if (result == null) {
                    result = this.casePackageableElement(peripheral);
                }
                if (result == null) {
                    result = this.caseIdentifiable(peripheral);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(peripheral);
                }
                if (result == null) {
                    result = this.caseARObject(peripheral);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(peripheral);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)peripheral);
                }
                if (result == null) {
                    result = this.caseGARObject(peripheral);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                CommunicationFilter communicationFilter = (CommunicationFilter)theEObject;
                T result = this.caseCommunicationFilter(communicationFilter);
                if (result == null) {
                    result = this.caseARObject(communicationFilter);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationFilter);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                CommunicationHWPort communicationHWPort = (CommunicationHWPort)theEObject;
                T result = this.caseCommunicationHWPort(communicationHWPort);
                if (result == null) {
                    result = this.casePeripheralHWPort(communicationHWPort);
                }
                if (result == null) {
                    result = this.caseHWPort(communicationHWPort);
                }
                if (result == null) {
                    result = this.caseIdentifiable(communicationHWPort);
                }
                if (result == null) {
                    result = this.caseARObject(communicationHWPort);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(communicationHWPort);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)communicationHWPort);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationHWPort);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                PeripheralHWPort peripheralHWPort = (PeripheralHWPort)theEObject;
                T result = this.casePeripheralHWPort(peripheralHWPort);
                if (result == null) {
                    result = this.caseHWPort(peripheralHWPort);
                }
                if (result == null) {
                    result = this.caseIdentifiable(peripheralHWPort);
                }
                if (result == null) {
                    result = this.caseARObject(peripheralHWPort);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(peripheralHWPort);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)peripheralHWPort);
                }
                if (result == null) {
                    result = this.caseGARObject(peripheralHWPort);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                CommunicationPhysicalMedium communicationPhysicalMedium = (CommunicationPhysicalMedium)theEObject;
                T result = this.caseCommunicationPhysicalMedium(communicationPhysicalMedium);
                if (result == null) {
                    result = this.caseARObject(communicationPhysicalMedium);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationPhysicalMedium);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                CommunicationSpeed communicationSpeed = (CommunicationSpeed)theEObject;
                T result = this.caseCommunicationSpeed(communicationSpeed);
                if (result == null) {
                    result = this.caseARObject(communicationSpeed);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationSpeed);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                CommunicationPeripheral communicationPeripheral = (CommunicationPeripheral)theEObject;
                T result = this.caseCommunicationPeripheral(communicationPeripheral);
                if (result == null) {
                    result = this.casePeripheral(communicationPeripheral);
                }
                if (result == null) {
                    result = this.caseHWElement(communicationPeripheral);
                }
                if (result == null) {
                    result = this.caseARElement(communicationPeripheral);
                }
                if (result == null) {
                    result = this.casePackageableElement(communicationPeripheral);
                }
                if (result == null) {
                    result = this.caseIdentifiable(communicationPeripheral);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(communicationPeripheral);
                }
                if (result == null) {
                    result = this.caseARObject(communicationPeripheral);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(communicationPeripheral);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)communicationPeripheral);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationPeripheral);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                CommunicationProtocol communicationProtocol = (CommunicationProtocol)theEObject;
                T result = this.caseCommunicationProtocol(communicationProtocol);
                if (result == null) {
                    result = this.caseIdentifiable(communicationProtocol);
                }
                if (result == null) {
                    result = this.caseARObject(communicationProtocol);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(communicationProtocol);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)communicationProtocol);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationProtocol);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                CommunicationSpeedFixed communicationSpeedFixed = (CommunicationSpeedFixed)theEObject;
                T result = this.caseCommunicationSpeedFixed(communicationSpeedFixed);
                if (result == null) {
                    result = this.caseCommunicationSpeed(communicationSpeedFixed);
                }
                if (result == null) {
                    result = this.caseARObject(communicationSpeedFixed);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationSpeedFixed);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                CommunicationSpeedList communicationSpeedList = (CommunicationSpeedList)theEObject;
                T result = this.caseCommunicationSpeedList(communicationSpeedList);
                if (result == null) {
                    result = this.caseCommunicationSpeed(communicationSpeedList);
                }
                if (result == null) {
                    result = this.caseARObject(communicationSpeedList);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationSpeedList);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                CommunicationSpeedRange communicationSpeedRange = (CommunicationSpeedRange)theEObject;
                T result = this.caseCommunicationSpeedRange(communicationSpeedRange);
                if (result == null) {
                    result = this.caseCommunicationSpeed(communicationSpeedRange);
                }
                if (result == null) {
                    result = this.caseARObject(communicationSpeedRange);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationSpeedRange);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                ECUCommunicationPort ecuCommunicationPort = (ECUCommunicationPort)theEObject;
                T result = this.caseECUCommunicationPort(ecuCommunicationPort);
                if (result == null) {
                    result = this.caseCommunicationHWPort(ecuCommunicationPort);
                }
                if (result == null) {
                    result = this.casePeripheralHWPort(ecuCommunicationPort);
                }
                if (result == null) {
                    result = this.caseHWPort(ecuCommunicationPort);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecuCommunicationPort);
                }
                if (result == null) {
                    result = this.caseARObject(ecuCommunicationPort);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecuCommunicationPort);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)ecuCommunicationPort);
                }
                if (result == null) {
                    result = this.caseGARObject(ecuCommunicationPort);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                Timer timer = (Timer)theEObject;
                T result = this.caseTimer(timer);
                if (result == null) {
                    result = this.caseGeneralPurposeTimer(timer);
                }
                if (result == null) {
                    result = this.casePeripheral(timer);
                }
                if (result == null) {
                    result = this.caseHWElement(timer);
                }
                if (result == null) {
                    result = this.caseARElement(timer);
                }
                if (result == null) {
                    result = this.casePackageableElement(timer);
                }
                if (result == null) {
                    result = this.caseIdentifiable(timer);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(timer);
                }
                if (result == null) {
                    result = this.caseARObject(timer);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(timer);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)timer);
                }
                if (result == null) {
                    result = this.caseGARObject(timer);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                WatchDog watchDog = (WatchDog)theEObject;
                T result = this.caseWatchDog(watchDog);
                if (result == null) {
                    result = this.casePeripheral(watchDog);
                }
                if (result == null) {
                    result = this.caseHWElement(watchDog);
                }
                if (result == null) {
                    result = this.caseARElement(watchDog);
                }
                if (result == null) {
                    result = this.casePackageableElement(watchDog);
                }
                if (result == null) {
                    result = this.caseIdentifiable(watchDog);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(watchDog);
                }
                if (result == null) {
                    result = this.caseARObject(watchDog);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(watchDog);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)watchDog);
                }
                if (result == null) {
                    result = this.caseGARObject(watchDog);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                ADC adc = (ADC)theEObject;
                T result = this.caseADC(adc);
                if (result == null) {
                    result = this.caseAnalogueIO(adc);
                }
                if (result == null) {
                    result = this.casePeripheral(adc);
                }
                if (result == null) {
                    result = this.caseHWElement(adc);
                }
                if (result == null) {
                    result = this.caseARElement(adc);
                }
                if (result == null) {
                    result = this.casePackageableElement(adc);
                }
                if (result == null) {
                    result = this.caseIdentifiable(adc);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(adc);
                }
                if (result == null) {
                    result = this.caseARObject(adc);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(adc);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)adc);
                }
                if (result == null) {
                    result = this.caseGARObject(adc);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 18: {
                AnalogueIO analogueIO = (AnalogueIO)theEObject;
                T result = this.caseAnalogueIO(analogueIO);
                if (result == null) {
                    result = this.casePeripheral(analogueIO);
                }
                if (result == null) {
                    result = this.caseHWElement(analogueIO);
                }
                if (result == null) {
                    result = this.caseARElement(analogueIO);
                }
                if (result == null) {
                    result = this.casePackageableElement(analogueIO);
                }
                if (result == null) {
                    result = this.caseIdentifiable(analogueIO);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(analogueIO);
                }
                if (result == null) {
                    result = this.caseARObject(analogueIO);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(analogueIO);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)analogueIO);
                }
                if (result == null) {
                    result = this.caseGARObject(analogueIO);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 19: {
                DAC dac = (DAC)theEObject;
                T result = this.caseDAC(dac);
                if (result == null) {
                    result = this.caseAnalogueIO(dac);
                }
                if (result == null) {
                    result = this.casePeripheral(dac);
                }
                if (result == null) {
                    result = this.caseHWElement(dac);
                }
                if (result == null) {
                    result = this.caseARElement(dac);
                }
                if (result == null) {
                    result = this.casePackageableElement(dac);
                }
                if (result == null) {
                    result = this.caseIdentifiable(dac);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(dac);
                }
                if (result == null) {
                    result = this.caseARObject(dac);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dac);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)dac);
                }
                if (result == null) {
                    result = this.caseGARObject(dac);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 20: {
                DigitalIO digitalIO = (DigitalIO)theEObject;
                T result = this.caseDigitalIO(digitalIO);
                if (result == null) {
                    result = this.casePeripheral(digitalIO);
                }
                if (result == null) {
                    result = this.caseHWElement(digitalIO);
                }
                if (result == null) {
                    result = this.caseARElement(digitalIO);
                }
                if (result == null) {
                    result = this.casePackageableElement(digitalIO);
                }
                if (result == null) {
                    result = this.caseIdentifiable(digitalIO);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(digitalIO);
                }
                if (result == null) {
                    result = this.caseARObject(digitalIO);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(digitalIO);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)digitalIO);
                }
                if (result == null) {
                    result = this.caseGARObject(digitalIO);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 21: {
                PWD pwd = (PWD)theEObject;
                T result = this.casePWD(pwd);
                if (result == null) {
                    result = this.casePulseWidthPeripheral(pwd);
                }
                if (result == null) {
                    result = this.casePeripheral(pwd);
                }
                if (result == null) {
                    result = this.caseHWElement(pwd);
                }
                if (result == null) {
                    result = this.caseARElement(pwd);
                }
                if (result == null) {
                    result = this.casePackageableElement(pwd);
                }
                if (result == null) {
                    result = this.caseIdentifiable(pwd);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(pwd);
                }
                if (result == null) {
                    result = this.caseARObject(pwd);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(pwd);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)pwd);
                }
                if (result == null) {
                    result = this.caseGARObject(pwd);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 22: {
                PulseWidthPeripheral pulseWidthPeripheral = (PulseWidthPeripheral)theEObject;
                T result = this.casePulseWidthPeripheral(pulseWidthPeripheral);
                if (result == null) {
                    result = this.casePeripheral(pulseWidthPeripheral);
                }
                if (result == null) {
                    result = this.caseHWElement(pulseWidthPeripheral);
                }
                if (result == null) {
                    result = this.caseARElement(pulseWidthPeripheral);
                }
                if (result == null) {
                    result = this.casePackageableElement(pulseWidthPeripheral);
                }
                if (result == null) {
                    result = this.caseIdentifiable(pulseWidthPeripheral);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(pulseWidthPeripheral);
                }
                if (result == null) {
                    result = this.caseARObject(pulseWidthPeripheral);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(pulseWidthPeripheral);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)pulseWidthPeripheral);
                }
                if (result == null) {
                    result = this.caseGARObject(pulseWidthPeripheral);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 23: {
                PWM pwm = (PWM)theEObject;
                T result = this.casePWM(pwm);
                if (result == null) {
                    result = this.casePulseWidthPeripheral(pwm);
                }
                if (result == null) {
                    result = this.casePeripheral(pwm);
                }
                if (result == null) {
                    result = this.caseHWElement(pwm);
                }
                if (result == null) {
                    result = this.caseARElement(pwm);
                }
                if (result == null) {
                    result = this.casePackageableElement(pwm);
                }
                if (result == null) {
                    result = this.caseIdentifiable(pwm);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(pwm);
                }
                if (result == null) {
                    result = this.caseARObject(pwm);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(pwm);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)pwm);
                }
                if (result == null) {
                    result = this.caseGARObject(pwm);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseBuffer(Buffer object) {
        return null;
    }

    public T caseCCU(CCU object) {
        return null;
    }

    public T caseGeneralPurposeTimer(GeneralPurposeTimer object) {
        return null;
    }

    public T casePeripheral(Peripheral object) {
        return null;
    }

    public T caseCommunicationFilter(CommunicationFilter object) {
        return null;
    }

    public T caseCommunicationHWPort(CommunicationHWPort object) {
        return null;
    }

    public T casePeripheralHWPort(PeripheralHWPort object) {
        return null;
    }

    public T caseCommunicationPhysicalMedium(CommunicationPhysicalMedium object) {
        return null;
    }

    public T caseCommunicationSpeed(CommunicationSpeed object) {
        return null;
    }

    public T caseCommunicationPeripheral(CommunicationPeripheral object) {
        return null;
    }

    public T caseCommunicationProtocol(CommunicationProtocol object) {
        return null;
    }

    public T caseCommunicationSpeedFixed(CommunicationSpeedFixed object) {
        return null;
    }

    public T caseCommunicationSpeedList(CommunicationSpeedList object) {
        return null;
    }

    public T caseCommunicationSpeedRange(CommunicationSpeedRange object) {
        return null;
    }

    public T caseECUCommunicationPort(ECUCommunicationPort object) {
        return null;
    }

    public T caseTimer(Timer object) {
        return null;
    }

    public T caseWatchDog(WatchDog object) {
        return null;
    }

    public T caseADC(ADC object) {
        return null;
    }

    public T caseAnalogueIO(AnalogueIO object) {
        return null;
    }

    public T caseDAC(DAC object) {
        return null;
    }

    public T caseDigitalIO(DigitalIO object) {
        return null;
    }

    public T casePWD(PWD object) {
        return null;
    }

    public T casePulseWidthPeripheral(PulseWidthPeripheral object) {
        return null;
    }

    public T casePWM(PWM object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseARElement(ARElement object) {
        return null;
    }

    public T caseHWElement(HWElement object) {
        return null;
    }

    public T caseHWPort(HWPort object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

