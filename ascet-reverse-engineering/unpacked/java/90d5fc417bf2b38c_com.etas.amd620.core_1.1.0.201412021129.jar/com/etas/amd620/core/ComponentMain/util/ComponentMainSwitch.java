/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.util.Switch
 */
package com.etas.amd620.core.ComponentMain.util;

import com.etas.amd620.core.ComponentMain.AccessModesT;
import com.etas.amd620.core.ComponentMain.ArgumentsComplexType;
import com.etas.amd620.core.ComponentMain.ArgumentsType;
import com.etas.amd620.core.ComponentMain.Asap2ItemType;
import com.etas.amd620.core.ComponentMain.AtomicSoftwareComponentT;
import com.etas.amd620.core.ComponentMain.AttributesBaseT;
import com.etas.amd620.core.ComponentMain.ColorT;
import com.etas.amd620.core.ComponentMain.ComplexAttributesT;
import com.etas.amd620.core.ComponentMain.ComplexTypeType;
import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.ComponentMainType;
import com.etas.amd620.core.ComponentMain.ComponentT;
import com.etas.amd620.core.ComponentMain.ConfigurationManagementT;
import com.etas.amd620.core.ComponentMain.ContainerType;
import com.etas.amd620.core.ComponentMain.CustomerSpecificAttributesType;
import com.etas.amd620.core.ComponentMain.DataInterfaceT;
import com.etas.amd620.core.ComponentMain.DimensionalAttributesT;
import com.etas.amd620.core.ComponentMain.DimensionalTypeType;
import com.etas.amd620.core.ComponentMain.DocumentRoot;
import com.etas.amd620.core.ComponentMain.ElementAttributesT;
import com.etas.amd620.core.ComponentMain.ElementMappingType;
import com.etas.amd620.core.ComponentMain.ElementMappingType1;
import com.etas.amd620.core.ComponentMain.ElementMappingType2;
import com.etas.amd620.core.ComponentMain.ElementT;
import com.etas.amd620.core.ComponentMain.ElementsType;
import com.etas.amd620.core.ComponentMain.EnumerationAttributesT;
import com.etas.amd620.core.ComponentMain.EnumerationType;
import com.etas.amd620.core.ComponentMain.EnumeratorT;
import com.etas.amd620.core.ComponentMain.ExternalMappingObjectT;
import com.etas.amd620.core.ComponentMain.FileReferenceT;
import com.etas.amd620.core.ComponentMain.FormalType;
import com.etas.amd620.core.ComponentMain.FormattedTextT;
import com.etas.amd620.core.ComponentMain.FormulaType;
import com.etas.amd620.core.ComponentMain.GenericComponentT;
import com.etas.amd620.core.ComponentMain.GenericDataT;
import com.etas.amd620.core.ComponentMain.IconT;
import com.etas.amd620.core.ComponentMain.ImageType;
import com.etas.amd620.core.ComponentMain.IntervalT;
import com.etas.amd620.core.ComponentMain.ItemBaseT;
import com.etas.amd620.core.ComponentMain.ItemRefT;
import com.etas.amd620.core.ComponentMain.ItemT;
import com.etas.amd620.core.ComponentMain.ItemType;
import com.etas.amd620.core.ComponentMain.LocalsComplexType;
import com.etas.amd620.core.ComponentMain.MappingItemT;
import com.etas.amd620.core.ComponentMain.MappingObjectT;
import com.etas.amd620.core.ComponentMain.MethodBaseT;
import com.etas.amd620.core.ComponentMain.MethodInterfaceT;
import com.etas.amd620.core.ComponentMain.MethodSignatureT;
import com.etas.amd620.core.ComponentMain.MethodSignaturesType;
import com.etas.amd620.core.ComponentMain.MethodSignaturesType1;
import com.etas.amd620.core.ComponentMain.MethodT;
import com.etas.amd620.core.ComponentMain.ModeGroupType;
import com.etas.amd620.core.ComponentMain.NoteType;
import com.etas.amd620.core.ComponentMain.NotesT;
import com.etas.amd620.core.ComponentMain.OptionT;
import com.etas.amd620.core.ComponentMain.ParameterMappingsType;
import com.etas.amd620.core.ComponentMain.PointT;
import com.etas.amd620.core.ComponentMain.PrimitiveAttributesBaseT;
import com.etas.amd620.core.ComponentMain.RealizedElementT;
import com.etas.amd620.core.ComponentMain.RealizedMethodBaseT;
import com.etas.amd620.core.ComponentMain.RealizedMethodT;
import com.etas.amd620.core.ComponentMain.RealizedReturnT;
import com.etas.amd620.core.ComponentMain.RealizedRunnableT;
import com.etas.amd620.core.ComponentMain.RecordAttributesT;
import com.etas.amd620.core.ComponentMain.RequirementsManagementT;
import com.etas.amd620.core.ComponentMain.ReturnT;
import com.etas.amd620.core.ComponentMain.RunnableT;
import com.etas.amd620.core.ComponentMain.ScalarAttributesT;
import com.etas.amd620.core.ComponentMain.ScalarTypeType;
import com.etas.amd620.core.ComponentMain.SignalType;
import com.etas.amd620.core.ComponentMain.SizeT;
import com.etas.amd620.core.ComponentMain.SourceObjectType;
import com.etas.amd620.core.ComponentMain.TimeStampT;
import com.etas.amd620.core.ComponentMain.TimeStampsType;
import com.etas.amd620.core.ComponentMain.VariableMappingsExternalType;
import com.etas.amd620.core.ComponentMain.VariableMappingsInternalType;
import com.etas.amd620.core.ComponentMain.ViewType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.util.Switch;

public class ComponentMainSwitch<T>
extends Switch<T> {
    protected static ComponentMainPackage modelPackage;

    public ComponentMainSwitch() {
        if (modelPackage == null) {
            modelPackage = ComponentMainPackage.eINSTANCE;
        }
    }

    protected boolean isSwitchFor(EPackage ePackage) {
        return ePackage == modelPackage;
    }

    protected T doSwitch(int classifierID, EObject theEObject) {
        switch (classifierID) {
            case 0: {
                AccessModesT accessModesT = (AccessModesT)theEObject;
                T result = this.caseAccessModesT(accessModesT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ArgumentsComplexType argumentsComplexType = (ArgumentsComplexType)theEObject;
                T result = this.caseArgumentsComplexType(argumentsComplexType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ArgumentsType argumentsType = (ArgumentsType)theEObject;
                T result = this.caseArgumentsType(argumentsType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                Asap2ItemType asap2ItemType = (Asap2ItemType)theEObject;
                T result = this.caseAsap2ItemType(asap2ItemType);
                if (result == null) {
                    result = this.caseItemT(asap2ItemType);
                }
                if (result == null) {
                    result = this.caseItemBaseT(asap2ItemType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                AtomicSoftwareComponentT atomicSoftwareComponentT = (AtomicSoftwareComponentT)theEObject;
                T result = this.caseAtomicSoftwareComponentT(atomicSoftwareComponentT);
                if (result == null) {
                    result = this.caseComponentT(atomicSoftwareComponentT);
                }
                if (result == null) {
                    result = this.caseItemT(atomicSoftwareComponentT);
                }
                if (result == null) {
                    result = this.caseItemBaseT(atomicSoftwareComponentT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                AttributesBaseT attributesBaseT = (AttributesBaseT)theEObject;
                T result = this.caseAttributesBaseT(attributesBaseT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                ColorT colorT = (ColorT)theEObject;
                T result = this.caseColorT(colorT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                ComplexAttributesT complexAttributesT = (ComplexAttributesT)theEObject;
                T result = this.caseComplexAttributesT(complexAttributesT);
                if (result == null) {
                    result = this.caseAttributesBaseT(complexAttributesT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                ComplexTypeType complexTypeType = (ComplexTypeType)theEObject;
                T result = this.caseComplexTypeType(complexTypeType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                ComponentMainType componentMainType = (ComponentMainType)theEObject;
                T result = this.caseComponentMainType(componentMainType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                ComponentT componentT = (ComponentT)theEObject;
                T result = this.caseComponentT(componentT);
                if (result == null) {
                    result = this.caseItemT(componentT);
                }
                if (result == null) {
                    result = this.caseItemBaseT(componentT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                ConfigurationManagementT configurationManagementT = (ConfigurationManagementT)theEObject;
                T result = this.caseConfigurationManagementT(configurationManagementT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                ContainerType containerType = (ContainerType)theEObject;
                T result = this.caseContainerType(containerType);
                if (result == null) {
                    result = this.caseItemT(containerType);
                }
                if (result == null) {
                    result = this.caseItemBaseT(containerType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                CustomerSpecificAttributesType customerSpecificAttributesType = (CustomerSpecificAttributesType)theEObject;
                T result = this.caseCustomerSpecificAttributesType(customerSpecificAttributesType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                DataInterfaceT dataInterfaceT = (DataInterfaceT)theEObject;
                T result = this.caseDataInterfaceT(dataInterfaceT);
                if (result == null) {
                    result = this.caseItemT(dataInterfaceT);
                }
                if (result == null) {
                    result = this.caseItemBaseT(dataInterfaceT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                DimensionalAttributesT dimensionalAttributesT = (DimensionalAttributesT)theEObject;
                T result = this.caseDimensionalAttributesT(dimensionalAttributesT);
                if (result == null) {
                    result = this.casePrimitiveAttributesBaseT(dimensionalAttributesT);
                }
                if (result == null) {
                    result = this.caseAttributesBaseT(dimensionalAttributesT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                DimensionalTypeType dimensionalTypeType = (DimensionalTypeType)theEObject;
                T result = this.caseDimensionalTypeType(dimensionalTypeType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                DocumentRoot documentRoot = (DocumentRoot)theEObject;
                T result = this.caseDocumentRoot(documentRoot);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 18: {
                ElementAttributesT elementAttributesT = (ElementAttributesT)theEObject;
                T result = this.caseElementAttributesT(elementAttributesT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 19: {
                ElementMappingType elementMappingType = (ElementMappingType)theEObject;
                T result = this.caseElementMappingType(elementMappingType);
                if (result == null) {
                    result = this.caseMappingObjectT(elementMappingType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 20: {
                ElementMappingType1 elementMappingType1 = (ElementMappingType1)theEObject;
                T result = this.caseElementMappingType1(elementMappingType1);
                if (result == null) {
                    result = this.caseExternalMappingObjectT(elementMappingType1);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 21: {
                ElementMappingType2 elementMappingType2 = (ElementMappingType2)theEObject;
                T result = this.caseElementMappingType2(elementMappingType2);
                if (result == null) {
                    result = this.caseMappingObjectT(elementMappingType2);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 22: {
                ElementsType elementsType = (ElementsType)theEObject;
                T result = this.caseElementsType(elementsType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 23: {
                ElementT elementT = (ElementT)theEObject;
                T result = this.caseElementT(elementT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 24: {
                EnumerationAttributesT enumerationAttributesT = (EnumerationAttributesT)theEObject;
                T result = this.caseEnumerationAttributesT(enumerationAttributesT);
                if (result == null) {
                    result = this.casePrimitiveAttributesBaseT(enumerationAttributesT);
                }
                if (result == null) {
                    result = this.caseAttributesBaseT(enumerationAttributesT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 25: {
                EnumerationType enumerationType = (EnumerationType)theEObject;
                T result = this.caseEnumerationType(enumerationType);
                if (result == null) {
                    result = this.caseItemT(enumerationType);
                }
                if (result == null) {
                    result = this.caseItemBaseT(enumerationType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 26: {
                EnumeratorT enumeratorT = (EnumeratorT)theEObject;
                T result = this.caseEnumeratorT(enumeratorT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 27: {
                ExternalMappingObjectT externalMappingObjectT = (ExternalMappingObjectT)theEObject;
                T result = this.caseExternalMappingObjectT(externalMappingObjectT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 28: {
                FileReferenceT fileReferenceT = (FileReferenceT)theEObject;
                T result = this.caseFileReferenceT(fileReferenceT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 29: {
                FormalType formalType = (FormalType)theEObject;
                T result = this.caseFormalType(formalType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 30: {
                FormattedTextT formattedTextT = (FormattedTextT)theEObject;
                T result = this.caseFormattedTextT(formattedTextT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 31: {
                FormulaType formulaType = (FormulaType)theEObject;
                T result = this.caseFormulaType(formulaType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 32: {
                GenericComponentT genericComponentT = (GenericComponentT)theEObject;
                T result = this.caseGenericComponentT(genericComponentT);
                if (result == null) {
                    result = this.caseComponentT(genericComponentT);
                }
                if (result == null) {
                    result = this.caseItemT(genericComponentT);
                }
                if (result == null) {
                    result = this.caseItemBaseT(genericComponentT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 33: {
                GenericDataT genericDataT = (GenericDataT)theEObject;
                T result = this.caseGenericDataT(genericDataT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 34: {
                IconT iconT = (IconT)theEObject;
                T result = this.caseIconT(iconT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 35: {
                ImageType imageType = (ImageType)theEObject;
                T result = this.caseImageType(imageType);
                if (result == null) {
                    result = this.caseItemT(imageType);
                }
                if (result == null) {
                    result = this.caseItemBaseT(imageType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 36: {
                IntervalT intervalT = (IntervalT)theEObject;
                T result = this.caseIntervalT(intervalT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 37: {
                ItemBaseT itemBaseT = (ItemBaseT)theEObject;
                T result = this.caseItemBaseT(itemBaseT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 38: {
                ItemRefT itemRefT = (ItemRefT)theEObject;
                T result = this.caseItemRefT(itemRefT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 39: {
                ItemT itemT = (ItemT)theEObject;
                T result = this.caseItemT(itemT);
                if (result == null) {
                    result = this.caseItemBaseT(itemT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 40: {
                ItemType itemType = (ItemType)theEObject;
                T result = this.caseItemType(itemType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 41: {
                LocalsComplexType localsComplexType = (LocalsComplexType)theEObject;
                T result = this.caseLocalsComplexType(localsComplexType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 42: {
                MappingItemT mappingItemT = (MappingItemT)theEObject;
                T result = this.caseMappingItemT(mappingItemT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 43: {
                MappingObjectT mappingObjectT = (MappingObjectT)theEObject;
                T result = this.caseMappingObjectT(mappingObjectT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 44: {
                MethodBaseT methodBaseT = (MethodBaseT)theEObject;
                T result = this.caseMethodBaseT(methodBaseT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 45: {
                MethodInterfaceT methodInterfaceT = (MethodInterfaceT)theEObject;
                T result = this.caseMethodInterfaceT(methodInterfaceT);
                if (result == null) {
                    result = this.caseItemT(methodInterfaceT);
                }
                if (result == null) {
                    result = this.caseItemBaseT(methodInterfaceT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 46: {
                MethodSignaturesType methodSignaturesType = (MethodSignaturesType)theEObject;
                T result = this.caseMethodSignaturesType(methodSignaturesType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 47: {
                MethodSignaturesType1 methodSignaturesType1 = (MethodSignaturesType1)theEObject;
                T result = this.caseMethodSignaturesType1(methodSignaturesType1);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 48: {
                MethodSignatureT methodSignatureT = (MethodSignatureT)theEObject;
                T result = this.caseMethodSignatureT(methodSignatureT);
                if (result == null) {
                    result = this.caseMethodBaseT(methodSignatureT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 49: {
                MethodT methodT = (MethodT)theEObject;
                T result = this.caseMethodT(methodT);
                if (result == null) {
                    result = this.caseMethodBaseT(methodT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 50: {
                ModeGroupType modeGroupType = (ModeGroupType)theEObject;
                T result = this.caseModeGroupType(modeGroupType);
                if (result == null) {
                    result = this.caseItemT(modeGroupType);
                }
                if (result == null) {
                    result = this.caseItemBaseT(modeGroupType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 51: {
                NotesT notesT = (NotesT)theEObject;
                T result = this.caseNotesT(notesT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 52: {
                NoteType noteType = (NoteType)theEObject;
                T result = this.caseNoteType(noteType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 53: {
                OptionT optionT = (OptionT)theEObject;
                T result = this.caseOptionT(optionT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 54: {
                ParameterMappingsType parameterMappingsType = (ParameterMappingsType)theEObject;
                T result = this.caseParameterMappingsType(parameterMappingsType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 55: {
                PointT pointT = (PointT)theEObject;
                T result = this.casePointT(pointT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 56: {
                PrimitiveAttributesBaseT primitiveAttributesBaseT = (PrimitiveAttributesBaseT)theEObject;
                T result = this.casePrimitiveAttributesBaseT(primitiveAttributesBaseT);
                if (result == null) {
                    result = this.caseAttributesBaseT(primitiveAttributesBaseT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 57: {
                RealizedElementT realizedElementT = (RealizedElementT)theEObject;
                T result = this.caseRealizedElementT(realizedElementT);
                if (result == null) {
                    result = this.caseElementT(realizedElementT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 58: {
                RealizedMethodBaseT realizedMethodBaseT = (RealizedMethodBaseT)theEObject;
                T result = this.caseRealizedMethodBaseT(realizedMethodBaseT);
                if (result == null) {
                    result = this.caseMethodBaseT(realizedMethodBaseT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 59: {
                RealizedMethodT realizedMethodT = (RealizedMethodT)theEObject;
                T result = this.caseRealizedMethodT(realizedMethodT);
                if (result == null) {
                    result = this.caseRealizedMethodBaseT(realizedMethodT);
                }
                if (result == null) {
                    result = this.caseMethodBaseT(realizedMethodT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 60: {
                RealizedReturnT realizedReturnT = (RealizedReturnT)theEObject;
                T result = this.caseRealizedReturnT(realizedReturnT);
                if (result == null) {
                    result = this.caseReturnT(realizedReturnT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 61: {
                RealizedRunnableT realizedRunnableT = (RealizedRunnableT)theEObject;
                T result = this.caseRealizedRunnableT(realizedRunnableT);
                if (result == null) {
                    result = this.caseRealizedMethodT(realizedRunnableT);
                }
                if (result == null) {
                    result = this.caseRealizedMethodBaseT(realizedRunnableT);
                }
                if (result == null) {
                    result = this.caseMethodBaseT(realizedRunnableT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 62: {
                RecordAttributesT recordAttributesT = (RecordAttributesT)theEObject;
                T result = this.caseRecordAttributesT(recordAttributesT);
                if (result == null) {
                    result = this.caseComplexAttributesT(recordAttributesT);
                }
                if (result == null) {
                    result = this.caseAttributesBaseT(recordAttributesT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 63: {
                RequirementsManagementT requirementsManagementT = (RequirementsManagementT)theEObject;
                T result = this.caseRequirementsManagementT(requirementsManagementT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 64: {
                ReturnT returnT = (ReturnT)theEObject;
                T result = this.caseReturnT(returnT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 65: {
                RunnableT runnableT = (RunnableT)theEObject;
                T result = this.caseRunnableT(runnableT);
                if (result == null) {
                    result = this.caseMethodBaseT(runnableT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 66: {
                ScalarAttributesT scalarAttributesT = (ScalarAttributesT)theEObject;
                T result = this.caseScalarAttributesT(scalarAttributesT);
                if (result == null) {
                    result = this.casePrimitiveAttributesBaseT(scalarAttributesT);
                }
                if (result == null) {
                    result = this.caseAttributesBaseT(scalarAttributesT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 67: {
                ScalarTypeType scalarTypeType = (ScalarTypeType)theEObject;
                T result = this.caseScalarTypeType(scalarTypeType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 68: {
                SignalType signalType = (SignalType)theEObject;
                T result = this.caseSignalType(signalType);
                if (result == null) {
                    result = this.caseItemT(signalType);
                }
                if (result == null) {
                    result = this.caseItemBaseT(signalType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 69: {
                SizeT sizeT = (SizeT)theEObject;
                T result = this.caseSizeT(sizeT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 70: {
                SourceObjectType sourceObjectType = (SourceObjectType)theEObject;
                T result = this.caseSourceObjectType(sourceObjectType);
                if (result == null) {
                    result = this.caseMappingItemT(sourceObjectType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 71: {
                TimeStampsType timeStampsType = (TimeStampsType)theEObject;
                T result = this.caseTimeStampsType(timeStampsType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 72: {
                TimeStampT timeStampT = (TimeStampT)theEObject;
                T result = this.caseTimeStampT(timeStampT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 73: {
                VariableMappingsExternalType variableMappingsExternalType = (VariableMappingsExternalType)theEObject;
                T result = this.caseVariableMappingsExternalType(variableMappingsExternalType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 74: {
                VariableMappingsInternalType variableMappingsInternalType = (VariableMappingsInternalType)theEObject;
                T result = this.caseVariableMappingsInternalType(variableMappingsInternalType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 75: {
                ViewType viewType = (ViewType)theEObject;
                T result = this.caseViewType(viewType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseAccessModesT(AccessModesT object) {
        return null;
    }

    public T caseArgumentsComplexType(ArgumentsComplexType object) {
        return null;
    }

    public T caseArgumentsType(ArgumentsType object) {
        return null;
    }

    public T caseAsap2ItemType(Asap2ItemType object) {
        return null;
    }

    public T caseAtomicSoftwareComponentT(AtomicSoftwareComponentT object) {
        return null;
    }

    public T caseAttributesBaseT(AttributesBaseT object) {
        return null;
    }

    public T caseColorT(ColorT object) {
        return null;
    }

    public T caseComplexAttributesT(ComplexAttributesT object) {
        return null;
    }

    public T caseComplexTypeType(ComplexTypeType object) {
        return null;
    }

    public T caseComponentMainType(ComponentMainType object) {
        return null;
    }

    public T caseComponentT(ComponentT object) {
        return null;
    }

    public T caseConfigurationManagementT(ConfigurationManagementT object) {
        return null;
    }

    public T caseContainerType(ContainerType object) {
        return null;
    }

    public T caseCustomerSpecificAttributesType(CustomerSpecificAttributesType object) {
        return null;
    }

    public T caseDataInterfaceT(DataInterfaceT object) {
        return null;
    }

    public T caseDimensionalAttributesT(DimensionalAttributesT object) {
        return null;
    }

    public T caseDimensionalTypeType(DimensionalTypeType object) {
        return null;
    }

    public T caseDocumentRoot(DocumentRoot object) {
        return null;
    }

    public T caseElementAttributesT(ElementAttributesT object) {
        return null;
    }

    public T caseElementMappingType(ElementMappingType object) {
        return null;
    }

    public T caseElementMappingType1(ElementMappingType1 object) {
        return null;
    }

    public T caseElementMappingType2(ElementMappingType2 object) {
        return null;
    }

    public T caseElementsType(ElementsType object) {
        return null;
    }

    public T caseElementT(ElementT object) {
        return null;
    }

    public T caseEnumerationAttributesT(EnumerationAttributesT object) {
        return null;
    }

    public T caseEnumerationType(EnumerationType object) {
        return null;
    }

    public T caseEnumeratorT(EnumeratorT object) {
        return null;
    }

    public T caseExternalMappingObjectT(ExternalMappingObjectT object) {
        return null;
    }

    public T caseFileReferenceT(FileReferenceT object) {
        return null;
    }

    public T caseFormalType(FormalType object) {
        return null;
    }

    public T caseFormattedTextT(FormattedTextT object) {
        return null;
    }

    public T caseFormulaType(FormulaType object) {
        return null;
    }

    public T caseGenericComponentT(GenericComponentT object) {
        return null;
    }

    public T caseGenericDataT(GenericDataT object) {
        return null;
    }

    public T caseIconT(IconT object) {
        return null;
    }

    public T caseImageType(ImageType object) {
        return null;
    }

    public T caseIntervalT(IntervalT object) {
        return null;
    }

    public T caseItemBaseT(ItemBaseT object) {
        return null;
    }

    public T caseItemRefT(ItemRefT object) {
        return null;
    }

    public T caseItemT(ItemT object) {
        return null;
    }

    public T caseItemType(ItemType object) {
        return null;
    }

    public T caseLocalsComplexType(LocalsComplexType object) {
        return null;
    }

    public T caseMappingItemT(MappingItemT object) {
        return null;
    }

    public T caseMappingObjectT(MappingObjectT object) {
        return null;
    }

    public T caseMethodBaseT(MethodBaseT object) {
        return null;
    }

    public T caseMethodInterfaceT(MethodInterfaceT object) {
        return null;
    }

    public T caseMethodSignaturesType(MethodSignaturesType object) {
        return null;
    }

    public T caseMethodSignaturesType1(MethodSignaturesType1 object) {
        return null;
    }

    public T caseMethodSignatureT(MethodSignatureT object) {
        return null;
    }

    public T caseMethodT(MethodT object) {
        return null;
    }

    public T caseModeGroupType(ModeGroupType object) {
        return null;
    }

    public T caseNotesT(NotesT object) {
        return null;
    }

    public T caseNoteType(NoteType object) {
        return null;
    }

    public T caseOptionT(OptionT object) {
        return null;
    }

    public T caseParameterMappingsType(ParameterMappingsType object) {
        return null;
    }

    public T casePointT(PointT object) {
        return null;
    }

    public T casePrimitiveAttributesBaseT(PrimitiveAttributesBaseT object) {
        return null;
    }

    public T caseRealizedElementT(RealizedElementT object) {
        return null;
    }

    public T caseRealizedMethodBaseT(RealizedMethodBaseT object) {
        return null;
    }

    public T caseRealizedMethodT(RealizedMethodT object) {
        return null;
    }

    public T caseRealizedReturnT(RealizedReturnT object) {
        return null;
    }

    public T caseRealizedRunnableT(RealizedRunnableT object) {
        return null;
    }

    public T caseRecordAttributesT(RecordAttributesT object) {
        return null;
    }

    public T caseRequirementsManagementT(RequirementsManagementT object) {
        return null;
    }

    public T caseReturnT(ReturnT object) {
        return null;
    }

    public T caseRunnableT(RunnableT object) {
        return null;
    }

    public T caseScalarAttributesT(ScalarAttributesT object) {
        return null;
    }

    public T caseScalarTypeType(ScalarTypeType object) {
        return null;
    }

    public T caseSignalType(SignalType object) {
        return null;
    }

    public T caseSizeT(SizeT object) {
        return null;
    }

    public T caseSourceObjectType(SourceObjectType object) {
        return null;
    }

    public T caseTimeStampsType(TimeStampsType object) {
        return null;
    }

    public T caseTimeStampT(TimeStampT object) {
        return null;
    }

    public T caseVariableMappingsExternalType(VariableMappingsExternalType object) {
        return null;
    }

    public T caseVariableMappingsInternalType(VariableMappingsInternalType object) {
        return null;
    }

    public T caseViewType(ViewType object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

